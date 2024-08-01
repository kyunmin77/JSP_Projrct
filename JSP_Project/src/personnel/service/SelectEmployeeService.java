package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import personnel.dao.EmployeeDao;
import personnel.model.Employee;

public class SelectEmployeeService {
	private EmployeeDao employeeDao = new EmployeeDao();
	
	public Employee select(String emp_no) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			//해당 bs_num의 객체를 받아옴
			Employee employee = employeeDao.selectByNo(conn, emp_no);			
			return employee;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}