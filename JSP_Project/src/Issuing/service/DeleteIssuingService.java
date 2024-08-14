package Issuing.service;

import java.sql.Connection;
import java.sql.SQLException;

import Issuing.dao.IssuingDao;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class DeleteIssuingService {
	private IssuingDao issuingDao = new IssuingDao();
	
	public void delete(int no) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			
			conn.setAutoCommit(false);
			
			issuingDao.delete(conn, no);
			
			conn.commit();
			
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
	
	public void deleteAll() {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			
			conn.setAutoCommit(false);
			
			issuingDao.deleteAll(conn);
			
			conn.commit();
			
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
	
}
