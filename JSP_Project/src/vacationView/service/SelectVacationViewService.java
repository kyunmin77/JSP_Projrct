 package vacationView.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbc.connection.ConnectionProvider;
import vacationView.dao.VacationViewDao;
import vacationView.model.VacationView;
import vacationView.model.VacationViewJoin;

public class SelectVacationViewService {
	
	private VacationViewDao vacDao = new VacationViewDao();

	   public List<VacationView> select() {
	      try(Connection conn = ConnectionProvider.getConnection()) {

	         List<VacationView> list = vacDao.selectAll(conn);   
	         
	         return list;

	      }catch(SQLException e) {
	         throw new RuntimeException(e);
	      }
	   }
	   
	   public List<VacationViewJoin> selectById(int emp_no) {
		      try(Connection conn = ConnectionProvider.getConnection()) {
		         
		         //해당 bs_num의 객체를 받아옴
		    	  List<VacationViewJoin> employee = vacDao.selectByNo(conn, emp_no);         
		         return employee;
		         
		      }catch(SQLException e) {
		         throw new RuntimeException(e);
		      }
		   }
}
