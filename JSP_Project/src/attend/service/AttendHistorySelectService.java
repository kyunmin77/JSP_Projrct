package attend.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import attend.dao.AttendHistoryDao;
import attend.model.AttendHistory;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;




public class AttendHistorySelectService {
	
	private AttendHistoryDao attendDao = new AttendHistoryDao();

	   public List<AttendHistory> select() {
	      try(Connection conn = ConnectionProvider.getConnection()) {

	         List<AttendHistory> ai = attendDao.selectAll(conn);   
	         
	         return ai;

	      }catch(SQLException e) {
	         throw new RuntimeException(e);
	      }
	   }

	   public  List<AttendHistory> selectById(int emp_no) {
		      try(Connection conn = ConnectionProvider.getConnection()) {
		         
		         //해당 bs_num의 객체를 받아옴
		    	  List<AttendHistory> atd_list = attendDao.selectByNo(conn, emp_no);         
		         return atd_list;
		         
		      }catch(SQLException e) {
		         throw new RuntimeException(e);
		      }
		   }
	   
		
		public void update(String before_name, AttendHistory pay) {
			Connection conn = null;
			try {
				conn = ConnectionProvider.getConnection();
				conn.setAutoCommit(false);

				attendDao.update(conn, before_name, pay);
							
				conn.commit();
			} catch(SQLException e) {
				JdbcUtil.rollback(conn);
				throw new RuntimeException(e);
			} catch(Exception e) {
				JdbcUtil.rollback(conn);
				throw e;
			}finally {
				JdbcUtil.close(conn);
			}
		}

}
