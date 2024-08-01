package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbc.connection.ConnectionProvider;
import personnel.dao.LanguageDao;
import personnel.model.Language;
import personnel.model.License;

public class SelectLanguageService {
	private LanguageDao languageDao = new LanguageDao();
	
	public Language select(String emp_no) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			//해당 bs_num의 객체를 받아옴
			Language language = languageDao.selectByNo(conn, emp_no);			
			return language;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Language> selectAll() {
		try(Connection conn = ConnectionProvider.getConnection()) {
		
			List<Language> result = languageDao.selectAll(conn);			
			return result;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}