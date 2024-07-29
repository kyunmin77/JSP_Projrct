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

public class RewardDao {
	
	public Reward insert(Connection conn, Reward rwd) throws SQLException{
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into reward values(?,?,?,?,?,?,?)");
			pstmt.setInt(1, rwd.getEmp_no());
			pstmt.setString(2, rwd.getReward_type());
			pstmt.setString(3, rwd.getReward_name());
			pstmt.setString(4, rwd.getReward_who());
			pstmt.setTimestamp(5, toTimestamp(rwd.getReward_date()));
			pstmt.setString(6, rwd.getReward_detail());
			pstmt.setString(7, rwd.getReward_note());
						
			int insertedCount = pstmt.executeUpdate();
			
			if(insertedCount>0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT*FROM(SELECT emp_no FROM reward ORDER BY ROWNUM DESC) WHERE ROWNUM = 1");
				if(rs.next()) {
					
					Integer newNum = rs.getInt(1);
					
					return new Reward(newNum, 
							rwd.getReward_type(),
							rwd.getReward_name(),
							rwd.getReward_who(),
							rwd.getReward_date(),
							rwd.getReward_detail(),
							rwd.getReward_note()
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