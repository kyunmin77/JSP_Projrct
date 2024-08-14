package salary.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import personnel.model.Employee;
import salary.dao.EmployeeDao;

public class SelectEmployeeService {
	private EmployeeDao employeeDao = new EmployeeDao();
	
	public Employee select(int emp_no) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			
			Employee employee = employeeDao.selectByNo(conn, emp_no);			
			return employee;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}