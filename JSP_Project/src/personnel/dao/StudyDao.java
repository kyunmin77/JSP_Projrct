package personnel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import personnel.model.Reward;
import personnel.model.Study;

public class StudyDao {
	
	public Study insert(Connection conn, Study std) throws SQLException{
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into study values(?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, std.getEmp_no());
			pstmt.setString(2, std.getStudy_type());
			pstmt.setString(3, std.getStudy_name());
			pstmt.setString(4, std.getStudy_start());
			pstmt.setString(5, std.getStudy_end());
			pstmt.setString(6, std.getStudy_dep());
			pstmt.setString(7, std.getStudy_cost());
			pstmt.setString(8, std.getStudy_refund());
			
			int insertedCount = pstmt.executeUpdate();
			
			if(insertedCount>0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT*FROM(SELECT emp_no FROM study ORDER BY ROWNUM DESC) WHERE ROWNUM = 1");
				if(rs.next()) {
					
					Integer newNum = rs.getInt(1);
					
					return new Study(newNum, 
							std.getStudy_type(),
							std.getStudy_name(),
							std.getStudy_start(),
							std.getStudy_end(),
							std.getStudy_dep(),
							std.getStudy_cost(),
							std.getStudy_refund()
							);	
				}
			}
			return null;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}
	}
	
	private Timestamp toTimestamp(Date date) {
		return new Timestamp(date.getTime());
	}
}