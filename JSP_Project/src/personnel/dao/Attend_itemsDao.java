package personnel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import personnel.model.Attend_items;
import personnel.model.Reward;

public class Attend_itemsDao {
	
	public Attend_items insert(Connection conn, Attend_items att) throws SQLException{
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into attend_items values(?,?,?,?,?,?)");
			pstmt.setString(1, att.getAtt_name());
			pstmt.setTimestamp(2, toTimestamp(att.getAtt_unit()));
			pstmt.setString(3, att.getAtt_grp());
			pstmt.setString(4, att.getAtt_deduction());
			pstmt.setString(5, att.getAtt_conn());
			pstmt.setString(6, att.getAtt_used());
						
			int insertedCount = pstmt.executeUpdate();
			
			if(insertedCount>0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT*FROM(SELECT att_name FROM attend_items ORDER BY ROWNUM DESC) WHERE ROWNUM = 1");
				if(rs.next()) {
					
					String newNum = rs.getString(1);
					
					return new Attend_items(newNum, 
							att.getAtt_unit(),
							att.getAtt_grp(),
							att.getAtt_deduction(),
							att.getAtt_conn(),
							att.getAtt_used()
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