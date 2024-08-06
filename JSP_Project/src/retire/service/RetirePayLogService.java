package retire.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import retire.dao.RetirePayLogDao;
import retire.model.RetirePayRequest;

public class RetirePayLogService {

	private Connection conn = null;
	private RetirePayLogDao retirePayLogDao = new RetirePayLogDao();

	public List<RetirePayRequest> selectAllByRetireYear(int ret_year) {
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			List<RetirePayRequest> list = retirePayLogDao.selectAllByRetireYear(conn, ret_year);
			if (list != null) {
				JdbcUtil.rollback(conn);
			}
			conn.commit();
			return list;
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
}
