package salary.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbc.connection.ConnectionProvider;
import salary.dao.SalaryDAO;
import salary.model.EmployeeSalary;

public class SelectMonthSalaryService {
	private SalaryDAO salaryDao = new SalaryDAO();

	public List<EmployeeSalary> selectEmployeeSalaryMonth(int sal_month) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			List<EmployeeSalary> employeesalary = salaryDao.selectBySalMonth(conn, sal_month);
			return employeesalary;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<EmployeeSalary> selectEmployeeSalaryNameMonth(String name_kor,int sal_month) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			List<EmployeeSalary> employeesalary = salaryDao.selectEmployeeSalaryNameMonth(conn, name_kor,sal_month);
			return employeesalary;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
