package salary.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import salary.dao.SalaryDAO;

public class DeleteSalaryService {
	private SalaryDAO salaryDao = new SalaryDAO();
	
	public void delete(int emp_no, int sal_month) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			salaryDao.delete(conn, emp_no, sal_month);
			
			conn.commit();
		} catch(SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		}finally { JdbcUtil.close(conn);}
	}
}
