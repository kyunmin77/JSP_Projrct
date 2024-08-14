package retire.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import retire.dao.RetirePayDao;
import retire.model.DayTerm;
import retire.model.RetirePayRequest;

public class RetirePayService {

	private Connection conn = null;
	private RetirePayDao retirePayDao = new RetirePayDao();

	// 퇴직급여지급 사원선택 모달에서 전체 사원을 출력하기
	public List<RetirePayRequest> selectAll() throws SQLException {

		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			List<RetirePayRequest> list = retirePayDao.selectAll(conn);
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
	
	public RetirePayRequest selectOne(int emp_no) {
		try {
			conn = ConnectionProvider.getConnection();
			RetirePayRequest rpr = retirePayDao.selectOne(conn, emp_no);

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

			date = retirePayDao.retiredDateByEmpNo(conn, emp_no);
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

			return retirePayDao.getDayTerm(conn, emp_no, retired_date);
			
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
	
	
	public RetirePayRequest pushCalcRetirepay(HttpServletRequest req) throws Exception {
		try {
			conn = ConnectionProvider.getConnection();

			return retirePayDao.pushCalcRetirepay(conn, req);
			
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
	
	
	public void retirepayInsert(HttpServletRequest req) {
		try {
			conn = ConnectionProvider.getConnection();

			retirePayDao.retirepayInsert(conn, req); 
			
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(conn);
		}
	}
	
		//퇴직 테이블에 퇴직금 업데이트 하기
	  public void updateRealPay(HttpServletRequest req) {
		     try {
		        conn = ConnectionProvider.getConnection();
		        retirePayDao.updateRealPay(conn, Integer.parseInt(req.getParameter("emp_no"))); 
		        
		     } catch (SQLException e) {
		        JdbcUtil.rollback(conn);
		        throw new RuntimeException(e);
		     } finally {
		        JdbcUtil.close(conn);
	      }
	   }
	
}
