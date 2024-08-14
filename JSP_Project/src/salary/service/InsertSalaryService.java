package salary.service;

import java.sql.Connection;
import java.sql.SQLException;


import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import salary.dao.SalaryDAO;
import salary.model.Salary;


public class InsertSalaryService {
	private SalaryDAO salaryDao = new SalaryDAO();
	
	public Salary insert(SalaryRequest req) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			//트랜잭션 시작
			conn.setAutoCommit(false);
			
			Salary salary = toSalary(req);
			//DB에 저장 하고 저장에 성공한 객체를 받아옴
			
			Salary savedSalary = salaryDao.insert(conn, salary);
			
			if(savedSalary == null) {	// 저장에 실패하면 RuntimeException
				throw new RuntimeException("fail to insert company");
			}
			
			conn.commit();
			//트랜잭션 끝
			return savedSalary;
			
		}catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}catch (RuntimeException e) {
			JdbcUtil.rollback(conn);
			throw e;
		}finally {
			JdbcUtil.close(conn);
		}
	}
	
	private Salary toSalary(SalaryRequest req) {
		return new Salary(
				   req.getSal_year(),
				    req.getSal_month(),
				    req.getSal_deg(),
				    req.getEmp_no(),
				    req.getSal_normal(),
				    req.getSal_meal(),
				    req.getSal_childcare(),
				    req.getSal_job(),
				    req.getSal_car(),
				    req.getSal_long(),
				    req.getSal_duty(),
				    req.getSal_reward(),
				    req.getSal_vac(),
				    req.getDed_pen(),
				    req.getDed_heal(),
				    req.getDed_long_care(),
				    req.getDed_hire(),
				    req.getDed_income_tax(),
				    req.getDed_local_tax(),
				    req.getDed_funeral(),
				    req.getSal_sum(),
				    req.getDed_sum(),
				    req.getSal_real());
			
	}
	
}