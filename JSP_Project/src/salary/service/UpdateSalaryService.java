package salary.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import salary.dao.SalaryDAO;

public class UpdateSalaryService {
	private SalaryDAO salaryDao = new SalaryDAO();

	public void update(int emp_no, int sal_month, SalaryRequest salaryReq) throws SQLException {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			salaryDao.update(conn, emp_no, sal_month, salaryReq);

			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}

	}

}
