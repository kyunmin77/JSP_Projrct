package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbc.connection.ConnectionProvider;
import personnel.dao.AppointmentDao;
import personnel.model.Appointment;
import personnel.model.Family;

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
	
	public List<Appointment> selectAll() {
		try(Connection conn = ConnectionProvider.getConnection()) {
		
			List<Appointment> result = appointmentDao.selectAll(conn);			
			return result;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}