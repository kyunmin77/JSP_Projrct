package daylab.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import daylab.model.DaylabHistory;
import jdbc.JdbcUtil;
import personnel.model.Employee;


public class DaylabHistoryDao {
	
	public DaylabHistory insert(Connection conn, DaylabHistory ah) throws SQLException{
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try{
			pstmt = conn.prepareStatement("insert into daylab_attend_history values("
					+ "?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, ah.getEmp_no());
			pstmt.setDate(2,new Date(ah.getDatth_date().getTime()));
			pstmt.setString(3, ah.getDatth_name());
			pstmt.setString(4, ah.getDatth_pay());
			pstmt.setString(5, ah.getDatth_payrate());
			pstmt.setString(6, ah.getDatth_payment());
			pstmt.setString(7, ah.getDatth_income_tax());
			pstmt.setString(8, ah.getDatth_local_tax());
			pstmt.setString(9, ah.getDatth_realpayment());

			int insertedCount = pstmt.executeUpdate();
			// 쿼리를 실행하고 영향을 받은 레코드 수를 반환받음
			
			if(insertedCount > 0) { // 입력이 정상적으로 수행되었다면
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT * "
						+ "FROM( SELECT emp_no FROM daylab_attend_history"
						+ " ORDER BY ROWNUM DESC )"			// article_no을 내림차순 정렬한 뒤
						+ "WHERE ROWNUM = 1");				// 첫번째 열 정보를 선택
		
				if(rs.next()) {
					// ah쿼리문에 첫번째필드를 받아옴
					Integer emp_no = rs.getInt(1);
					// DB에 저장된 내용과 같은 Article객체를 만들어 반환
					return new DaylabHistory(
							emp_no,
							ah.getDatth_date(),
							ah.getDatth_name(),
							ah.getDatth_pay(),
							ah.getDatth_payrate(),
							ah.getDatth_payment(),
							ah.getDatth_income_tax(),
							ah.getDatth_local_tax(),
							ah.getDatth_realpayment());
				}
			}
			return null;		// 입력이 수행되지 않았다면 null 반환
			
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}
	}

	
	public List<DaylabHistory>selectAll(Connection conn)throws SQLException{

		PreparedStatement pstmt=null;
		ResultSet rs=null;
	
		try {
			pstmt = conn.prepareStatement("select * from daylab_attend_history");
			rs=pstmt.executeQuery();
			
			List<DaylabHistory>result=new ArrayList<>();
			while(rs.next()) {
				result.add(convertArticle(rs));
			}
			return result;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	public List<Employee> selectEmp(Connection conn) throws SQLException {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement("SELECT * FROM employee where emp_type='日雇い社員'");
            rs = pstmt.executeQuery();
            List<Employee> result = new ArrayList<>();
            while (rs.next()) {
                result.add(convertEmployee(rs));
            }
            return result;
        } finally {
            JdbcUtil.close(rs);
            JdbcUtil.close(pstmt);
        }
    }
	
	public List<DaylabHistory> selectByNo(Connection conn, int no) throws SQLException {
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try {
	         pstmt=conn.prepareStatement("select * from daylab_attend_history where emp_no=?");
	         pstmt.setInt(1, no);
	         rs = pstmt.executeQuery();
	         List<DaylabHistory> atd_list =new ArrayList<>();
	         while(rs.next()) {
	        	 atd_list.add(convertArticle(rs));
	         }
	         return atd_list;
	      } finally {
	         JdbcUtil.close(rs);
	         JdbcUtil.close(pstmt);
	      }
	   }
	
	private DaylabHistory convertArticle(ResultSet rs)throws SQLException {
		return new DaylabHistory(
				rs.getInt("emp_no"),
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
	
	private Employee convertEmployee(ResultSet rs) throws SQLException {
		return new Employee(
                rs.getInt("emp_no"),
                rs.getString("emp_type"),
                rs.getString("name_kor"),
                rs.getString("name_eng"),
                rs.getDate("hired_date"),
                rs.getString("dept"),
                rs.getString("job"),
                rs.getString("state"),
                rs.getString("nationality"),
                rs.getString("id_number"),
                rs.getString("post_code"),
                rs.getString("addr"),
                rs.getString("home_number"),
                rs.getString("phone"),
                rs.getString("email"),
                rs.getString("sns"),
                rs.getString("note"),
                rs.getString("bank"),
                rs.getString("account")
                );
	}
	
}