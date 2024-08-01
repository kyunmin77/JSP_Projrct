package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import personnel.dao.FamilyDao;
import personnel.model.Family;

public class SelectFamilyService {
	private FamilyDao familyDao = new FamilyDao();
	
	public Family select(String emp_no) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			//해당 bs_num의 객체를 받아옴
			Family family = familyDao.selectByNo(conn, emp_no);			
			return family;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}