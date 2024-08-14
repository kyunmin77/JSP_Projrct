package dayView.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dayView.model.DaylabView;
import daylab.model.DaylabHistory;
import jdbc.JdbcUtil;


public class DayViewHistoryDao {
	
	public List<DaylabView>selectAll(Connection conn)throws SQLException{

		PreparedStatement pstmt=null;
		ResultSet rs=null;
	
		try {
			pstmt = conn.prepareStatement("select d.datth_date, e.emp_no, e.name_kor, e.dept, d.datth_name, d.datth_pay, d.datth_payrate, d.datth_payment, d.datth_income_tax, d.datth_local_tax, d.datth_realpayment from employee e left outer join daylab_attend_history d on (e.emp_no=d.emp_no) where e.emp_type='日雇い社員'");
			rs=pstmt.executeQuery();
			
			List<DaylabView>result=new ArrayList<>();
			while(rs.next()) {
				result.add(convertArticle(rs));
			}
			return result;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	private DaylabView convertArticle(ResultSet rs)throws SQLException {
		return new DaylabView(
				rs.getInt("emp_no"),
				rs.getString("name_kor"),
				rs.getString("dept"),
				rs.getDate("datth_date"),
                rs.getString("datth_name"),
                rs.getString("datth_pay"),
                rs.getString("datth_payrate"),
                rs.getString("datth_payment"),
                rs.getString("datth_income_tax"),
                rs.getString("datth_local_tax"),
                rs.getString("datth_realpayment")
				);
		
	}
	
}