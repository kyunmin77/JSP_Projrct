package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import personnel.dao.IssuingDao;
import personnel.model.Issuing;

public class SelectIssuingService {
	private IssuingDao issuingDao = new IssuingDao();
	
	public Issuing select(String emp_no) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			//해당 bs_num의 객체를 받아옴
			Issuing issuing = issuingDao.selectByNum(conn, emp_no);			
			return issuing;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}