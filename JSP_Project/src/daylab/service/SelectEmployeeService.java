 package daylab.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import daylab.dao.DaylabHistoryDao;
import jdbc.connection.ConnectionProvider;
import personnel.dao.EmployeeDao;
import personnel.model.Employee;

public class SelectEmployeeService {
	
	private DaylabHistoryDao daylabDao = new DaylabHistoryDao();
	private EmployeeDao employeeDao = new EmployeeDao();

	   public List<Employee> select() {
	      try(Connection conn = ConnectionProvider.getConnection()) {

	         List<Employee> ai = daylabDao.selectEmp(conn);  
	         
	         return ai;

	      }catch(SQLException e) {
	         throw new RuntimeException(e);
	      }
	   }
	   
	   public Employee selectById(int emp_no) {
		      try(Connection conn = ConnectionProvider.getConnection()) {
		         
		         //해당 bs_num의 객체를 받아옴
		         Employee employee = employeeDao.selectByNo(conn, emp_no);         
		         return employee;
		         
		      }catch(SQLException e) {
		         throw new RuntimeException(e);
		      }
		   }


}
