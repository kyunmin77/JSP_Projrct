package personnel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import personnel.model.Career;
import personnel.model.Family;

public class FamilyDao {
	
	public Family insert(Connection conn, Family fam) throws SQLException{
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into family values(?,?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, fam.getEmp_no());
			pstmt.setString(2, fam.getF_relation());
			pstmt.setString(3, fam.getF_name());
			pstmt.setString(4, fam.getF_nationality());
			pstmt.setString(5, fam.getF_id_num());
			pstmt.setString(6, fam.getF_disability());
			pstmt.setString(7, fam.getF_per_deduction());
			pstmt.setString(8, fam.getF_heal_insur());
			pstmt.setString(9, fam.getF_live());
			pstmt.setString(10, fam.getF_gapgeunse());
			pstmt.setString(11, fam.getF_child());
			
			int insertedCount = pstmt.executeUpdate();
			
			if(insertedCount>0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT*FROM(SELECT emp_no FROM family ORDER BY ROWNUM DESC) WHERE ROWNUM = 1");
				if(rs.next()) {
					
					Integer newNum = rs.getInt(1);
					
					return new Family(newNum, 
							fam.getF_relation(),
							fam.getF_name(),
							fam.getF_nationality(),
							fam.getF_id_num(),
							fam.getF_disability(),
							fam.getF_per_deduction(),
							fam.getF_heal_insur(),
							fam.getF_live(),
							fam.getF_gapgeunse(),
							fam.getF_child()
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