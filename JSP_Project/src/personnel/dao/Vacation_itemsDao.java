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
import personnel.model.Vacation_items;

public class Vacation_itemsDao {
	
	public Vacation_items insert(Connection conn, Vacation_items vac) throws SQLException{
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into vacation_items values(?,?,?,?)");
			pstmt.setString(1, vac.getVac_name());
			pstmt.setTimestamp(2, toTimestamp(vac.getVac_start()));
			pstmt.setTimestamp(3, toTimestamp(vac.getVac_end()));
			pstmt.setString(4, vac.getVac_used());
						
			int insertedCount = pstmt.executeUpdate();
			
			if(insertedCount>0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT*FROM(SELECT vac_name FROM vacation_items ORDER BY ROWNUM DESC) WHERE ROWNUM = 1");
				if(rs.next()) {
					
					String newNum = rs.getString(1);
					
					return new Vacation_items(newNum, 
							vac.getVac_start(),
							vac.getVac_end(),
							vac.getVac_used()
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