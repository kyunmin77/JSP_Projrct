package salary.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import salary.dao.SalaryDAO;
import salary.model.EmployeeSalary;
import salary.model.Salary;
import jdbc.connection.ConnectionProvider;


public class SelectAllSalaryService {
	private SalaryDAO SalaryDao = new SalaryDAO();
	
	public List<Salary> selectAll() {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			List<Salary> Salary = SalaryDao.selectAll(conn);			
			return  Salary;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public Salary select(int emp_no) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			// 해당 emp_no의 Salary 객체를 받아옴
			Salary salary = SalaryDao.selectByNo(conn, emp_no);
			return salary;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public Salary select_No_Mon(int emp_no, int sal_month) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			// 해당 emp_no의 Salary 객체를 받아옴
			Salary salary = SalaryDao.selectByNo_Mon(conn, emp_no, sal_month);
			return salary;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	/*
	 * public List<EmployeeSalary> select(){
	 * 
	 * }
	 */
}
