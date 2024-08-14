package dayView.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import dayView.dao.DayViewHistoryDao;
import dayView.model.DaylabView;
import jdbc.connection.ConnectionProvider;


public class SelectDayViewService {
	
	private DayViewHistoryDao daylabDao = new DayViewHistoryDao();

	   public List<DaylabView> select() {
	      try(Connection conn = ConnectionProvider.getConnection()) {

	         List<DaylabView> ai = daylabDao.selectAll(conn);   
	         
	         return ai;

	      }catch(SQLException e) {
	         throw new RuntimeException(e);
	      }
	   }


}
