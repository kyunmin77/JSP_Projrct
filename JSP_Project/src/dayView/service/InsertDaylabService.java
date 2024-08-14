package dayView.service;

import java.sql.Connection;
import java.sql.SQLException;

import daylab.dao.DaylabHistoryDao;
import daylab.model.DaylabHistory;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class InsertDaylabService {

	private DaylabHistoryDao ahDao = new DaylabHistoryDao();
	
	public DaylabHistory insert(DaylabRequest req) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			//트랜잭션 시작
			conn.setAutoCommit(false);
			
			DaylabHistory dislab = toAttend(req);
			//DB에 저장 하고 저장에 성공한 객체를 받아옴
			DaylabHistory savedAH = ahDao.insert(conn, dislab);
			if(savedAH == null) {	// 저장에 실패하면 RuntimeException
				throw new RuntimeException("fail to insert attend");
			}
			
			conn.commit();
			//트랜잭션 끝
			return savedAH;
			
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
	
	private DaylabHistory toAttend(DaylabRequest req) {
		return new DaylabHistory(
				req.getEmp_no(),
				req.getDatth_date(),
				req.getDatth_name(),
				req.getDatth_pay(),
				req.getDatth_payrate(),
				req.getDatth_payment(),
				req.getDatth_income_tax(),
				req.getDatth_local_tax(),
				req.getDatth_realpayment()
				);
	}
}	
