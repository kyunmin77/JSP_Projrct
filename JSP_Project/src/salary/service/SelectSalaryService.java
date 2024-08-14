package salary.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbc.connection.ConnectionProvider;
import salary.dao.SalaryDAO;
import salary.model.Salary;

public class SelectSalaryService {
	private SalaryDAO salaryDao = new SalaryDAO();

	public Salary select(int emp_no) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			// 해당 emp_no의 Salary 객체를 받아옴
			Salary salary = salaryDao.selectByNo(conn, emp_no);
			return salary;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	   // 기간 및 항목별 급여 데이터 조회
    public List<Salary> getSalariesByPeriodAndItem(String startPeriod, String endPeriod, String salaryItem) {
        try (Connection conn = ConnectionProvider.getConnection()) {
            return salaryDao.selectByPeriodAndItem(conn, startPeriod, endPeriod, salaryItem);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        
    }
    
  
}
