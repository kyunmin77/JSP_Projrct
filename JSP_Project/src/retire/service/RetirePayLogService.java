package retire.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import retire.dao.RetirePayLogDao;
import retire.model.DayTerm;
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
	
	
	
	
	public RetirePayRequest selectOneByRetireEmp_no(int emp_no) {
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			RetirePayRequest rpr = retirePayLogDao.selectOneByRetireEmp_no(conn, emp_no);
			if (rpr != null) {
				JdbcUtil.rollback(conn);
			}
			conn.commit();
			return rpr;
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
	
	
	//사원번호로 퇴직일 가져오기
		public Date retiredDateByEmpNo(int emp_no) throws SQLException {
			Date date = null;
			try {
				conn = ConnectionProvider.getConnection();
				conn.setAutoCommit(false);

				date = retirePayLogDao.retiredDateByEmpNo(conn, emp_no);
				conn.commit();
				return date;
			} catch (SQLException e) {
				JdbcUtil.rollback(conn);
				throw new RuntimeException(e);
			} finally {
				JdbcUtil.close(conn);
			}
			
		}
	
	
	//퇴직일로부터 직전 3개월 날짜와 급여총액 가져오기
		public DayTerm getDayTerm(int emp_no, Date retired_date) throws SQLException {
			try {
				conn = ConnectionProvider.getConnection();

				return retirePayLogDao.getDayTerm(conn, emp_no, retired_date);
				
			} catch (SQLException e) {
				JdbcUtil.rollback(conn);
				throw new RuntimeException(e);
			} finally {
				JdbcUtil.close(conn);
			}
		}
}
