package personnel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import personnel.model.Appointment;
import personnel.model.Career;
import personnel.model.Employee;

public class CareerDao {
	
	public Career insert(Connection conn, Career car) throws SQLException{
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into Career values(?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, car.getEmp_no());
			pstmt.setString(2, car.getFirm());
			pstmt.setString(3, car.getFirm_start());
			pstmt.setString(4, car.getFirm_end());
			pstmt.setString(5, car.getFirm_term());
			pstmt.setString(6, car.getFirm_job());
			pstmt.setString(7, car.getFirm_task());
			pstmt.setString(8, car.getFirm_retire());
			
			
			int insertedCount = pstmt.executeUpdate();
			
			if(insertedCount>0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT*FROM(SELECT emp_no FROM career ORDER BY ROWNUM DESC) WHERE ROWNUM = 1");
				if(rs.next()) {
					
					Integer newNum = rs.getInt(1);
					
					return new Career(newNum, 
							car.getFirm(),
							car.getFirm_start(),
							car.getFirm_end(),
							car.getFirm_term(),
							car.getFirm_job(),
							car.getFirm_task(),
							car.getFirm_retire()
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