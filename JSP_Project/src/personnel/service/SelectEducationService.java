package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import personnel.dao.EducationDao;
import personnel.model.Education;

public class SelectEducationService {
	private EducationDao educationDao = new EducationDao();
	
	public Education select(String emp_no) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			//해당 bs_num의 객체를 받아옴
			Education education = educationDao.selectByNo(conn, emp_no);			
			return education;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}