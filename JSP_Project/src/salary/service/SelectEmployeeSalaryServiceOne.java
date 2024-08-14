package salary.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import salary.dao.SalaryDAO;
import salary.model.EmployeeSalary;

public class SelectEmployeeSalaryServiceOne {
	private SalaryDAO employeeSalarydao = new SalaryDAO();
	
	public EmployeeSalary EmployeeSalarySelectByNo(int emp_no) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			// 해당 emp_no의 Salary 객체를 받아옴
			EmployeeSalary employeesalary = employeeSalarydao.EmployeeSalarySelectByNo(conn, emp_no);
			return employeesalary;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
