package daylab.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import daylab.dao.DaylabHistoryDao;
import daylab.model.DaylabHistory;
import jdbc.connection.ConnectionProvider;


public class SelectDaylabService {
	
	private DaylabHistoryDao daylabDao = new DaylabHistoryDao();

	   public List<DaylabHistory> select() {
	      try(Connection conn = ConnectionProvider.getConnection()) {

	         List<DaylabHistory> ai = daylabDao.selectAll(conn);   
	         
	         return ai;

	      }catch(SQLException e) {
	         throw new RuntimeException(e);
	      }
	   }
	   
	   public List<DaylabHistory> selectById(int emp_no) {
		      try(Connection conn = ConnectionProvider.getConnection()) {
		         
		         //해당 bs_num의 객체를 받아옴
		    	  List<DaylabHistory> day_list = daylabDao.selectByNo(conn, emp_no);         
		         return day_list;
		         
		      }catch(SQLException e) {
		         throw new RuntimeException(e);
		      }
		   }


}
