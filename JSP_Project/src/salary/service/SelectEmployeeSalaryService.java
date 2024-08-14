package salary.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbc.connection.ConnectionProvider;
import salary.dao.EmployeeDao;
import salary.model.EmployeeSalary;


public class SelectEmployeeSalaryService {
	private EmployeeDao emoployeesalarydao = new EmployeeDao();

	public List<EmployeeSalary> selectAll() {
		try (Connection conn = ConnectionProvider.getConnection()) {

			List<EmployeeSalary> emoployeesalary = emoployeesalarydao.selectEmployeeSalary(conn);
			return emoployeesalary;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
}
