package personnel.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.connection.ConnectionProvider;
import personnel.dao.RewardDao;
import personnel.model.Reward;

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
	
}