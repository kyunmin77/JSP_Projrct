package vacationView.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.JdbcUtil;
import vacationView.model.VacationView;
import vacationView.model.VacationViewJoin;


public class VacationViewDao {
	
	public List<VacationView>selectAll(Connection conn)throws SQLException{

		PreparedStatement pstmt=null;
		ResultSet rs=null;
	
		try {
			pstmt = conn.prepareStatement("select e.emp_type, e.emp_no, e.name_kor, e.dept, e.job, v.vac_name, v.vac_used, vd.has_vac_days from employee e left outer join vacation_days vd on (e.emp_no=vd.emp_no) left outer join vacation_items v on (vd.vac_name=v.vac_name)");
			rs=pstmt.executeQuery();
			
			List<VacationView>result=new ArrayList<>();
			while(rs.next()) {
				result.add(convertVacation(rs));
			}
			return result;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	 public List<VacationViewJoin> selectByNo(Connection conn, int no) throws SQLException {
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try {
	         pstmt=conn.prepareStatement("select e.emp_type, e.emp_no, e.name_kor, e.dept, e.job, v.vac_name, v.vac_used, vd.has_vac_days, a.atth_inserted, a.atth_name, a.atth_start, a.atth_end, a.atth_days, a.atth_note from employee e left outer join attend_history a on (e.emp_no=a.emp_no) left outer join vacation_days vd on (a.emp_no=vd.emp_no) left outer join vacation_items v on (vd.vac_name=v.vac_name) where a.emp_no=?");
	         pstmt.setInt(1, no);
	         rs = pstmt.executeQuery();
	         List<VacationViewJoin> employee = new ArrayList<>();
	         while(rs.next()) {
	        	 employee.add(convertArticle(rs));
	         }
	         return employee;
	      } finally {
	         JdbcUtil.close(rs);
	         JdbcUtil.close(pstmt);
	      }
	   }
	
	private VacationViewJoin convertArticle(ResultSet rs)throws SQLException {
		return new VacationViewJoin(
				rs.getString("emp_type"),
				rs.getInt("emp_no"),
				rs.getString("name_kor"),
				rs.getString("dept"),
				rs.getString("job"),
				rs.getString("vac_name"),
				rs.getInt("has_vac_days"),
				rs.getString("vac_used"),
				rs.getDate("atth_inserted"),
                rs.getString("atth_name"),
                rs.getDate("atth_start"),
                rs.getDate("atth_end"),
                rs.getInt("atth_days"),
                rs.getString("atth_note")
				);
		
	}
	
	private VacationView convertVacation(ResultSet rs)throws SQLException {
		return new VacationView(
				rs.getString("emp_type"),
				rs.getInt("emp_no"),
				rs.getString("name_kor"),
				rs.getString("dept"),
				rs.getString("job"),
				rs.getString("vac_name"),
				rs.getInt("has_vac_days"),
				rs.getString("vac_used")
				);
		
	}

	
}