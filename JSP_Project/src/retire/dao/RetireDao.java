package retire.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jdbc.JdbcUtil;
import retire.model.RetireMemberRequest;

public class RetireDao {

	public List<RetireMemberRequest> selectAll(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement("select * from employee");
			rs = pstmt.executeQuery();
			
			List<RetireMemberRequest> list = new ArrayList<>();
			RetireMemberRequest rmr = null;
			while(rs.next()) {
				
				
				long retired_date;
				long years_service;
				
				if(rs.getDate("retired_date") == null) { retired_date = new Date().getTime();} else {
					retired_date = rs.getDate("retired_date").getTime();
				}
				
				years_service = (retired_date - rs.getDate("hired_date").getTime())/(365*24*60*60*1000L) ;
				
				rmr = new RetireMemberRequest(rs.getString("state"), rs.getInt("emp_no"),rs.getString("name_kor"), rs.getString("dept"), rs.getString("job"), rs.getDate("hired_date"), rs.getDate("retired_date"),
						
						years_service+"년", false, false);
				list.add(rmr);
			}
			return list;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
}
