package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import personnel.dao.LicenseDao;
import personnel.model.License;

public class SelectLicenseService {
	private LicenseDao licenseDao = new LicenseDao();
	
	public License select(String emp_no) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			//해당 bs_num의 객체를 받아옴
			License license = licenseDao.selectByNo(conn, emp_no);			
			return license;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}