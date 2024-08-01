package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import personnel.dao.CareerDao;
import personnel.model.Career;

public class SelectCareerService {
	private CareerDao careerDao = new CareerDao();
	
	public Career select(String emp_no) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			//해당 bs_num의 객체를 받아옴
			Career career = careerDao.selectByNo(conn, emp_no);			
			return career;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}