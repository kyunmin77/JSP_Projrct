package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import personnel.dao.AppointmentDao;
import personnel.model.Appointment;

public class SelectAppointService {
	private AppointmentDao appointmentDao = new AppointmentDao();
	
	public Appointment select(String emp_no) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			//해당 bs_num의 객체를 받아옴
			Appointment appointment = appointmentDao.selectByNo(conn, emp_no);			
			return appointment;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}