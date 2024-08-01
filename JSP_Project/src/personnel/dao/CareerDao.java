package personnel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import attvac_items.model.Attend_items;

import java.sql.Date;

import jdbc.JdbcUtil;
import personnel.model.Appointment;
import personnel.model.Career;
import personnel.model.Education;
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
	
	public Career selectByNo(Connection conn, String no) throws SQLException {
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try {
	         pstmt=conn.prepareStatement("select*from career where emp_no=?");
	         pstmt.setString(1, no);
	         rs = pstmt.executeQuery();
	         Career career = null;
	         if(rs.next()) {
	        	 career = convertCareer(rs);
	         }
	         return career;
	      } finally {
	         JdbcUtil.close(rs);
	         JdbcUtil.close(pstmt);
	      }
	   }
	
	public List<Career> selectAll(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("SELECT * FROM Career");
			rs = pstmt.executeQuery();
			List<Career> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertCareer(rs));
			}
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	private Career convertCareer(ResultSet rs) throws SQLException {
		return new Career(
				rs.getInt("emp_no"),
                rs.getString("firm"),
                rs.getString("firm_start"),
                rs.getString("firm_end"),
                rs.getString("firm_term"),
                rs.getString("firm_job"),
                rs.getString("firm_task"),
                rs.getString("firm_retire")
				);
	}
}