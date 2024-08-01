package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jdbc.connection.ConnectionProvider;
import personnel.dao.RewardDao;
import personnel.model.Reward;
import personnel.model.Study;

public class SelectRewardService {
	private RewardDao rewardDao = new RewardDao();
	
	public Reward select(String emp_no) {
		try(Connection conn = ConnectionProvider.getConnection()) {
			
			//해당 bs_num의 객체를 받아옴
			Reward reward = rewardDao.selectByNo(conn, emp_no);			
			return reward;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<Reward> selectAll() {
		try(Connection conn = ConnectionProvider.getConnection()) {
		
			List<Reward> result = rewardDao.selectAll(conn);			
			return result;
			
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}