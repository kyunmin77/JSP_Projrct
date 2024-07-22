package retire.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import retire.dao.RetireDao;
import retire.model.RetireMemberRequest;

public class EmpRetireService {

	private Connection conn = null;
	private RetireDao retireDao = new RetireDao();
	
	
	public List<RetireMemberRequest> selectAll() throws SQLException {
		
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			
			List <RetireMemberRequest> list = retireDao.selectAll(conn);
			if(list != null) {
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
