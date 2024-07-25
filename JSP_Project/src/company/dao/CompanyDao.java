package company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import jdbc.JdbcUtil;
import company.model.Company;

public class CompanyDao {
	public Company selectById(Connection conn, String id)
			throws SQLException{ //해당아이디를 가진 company형 객체를 반환하는 매서드
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from company where cp_name = ?");
			pstmt.setString(1, );				// 쿼리문 만들고 ?에 값 대입
			rs = pstmt.executeQuery();			// rs에 쿼리문 실행결과를 저장
			Company company = null;
			if(rs.next()) {
				// rs에 저장된 정보를 이용하여 company 객체 초기화
				company = new Company(
						rs.getString("cp_name"),
						rs.getString("ceo_jab"),
						rs.getString("ceo_name"),
						rs.getString("bs_num"),
						rs.getString("bs_regnum"),
						toDate(rs.getTimestamp("founded_date")),
						rs.getString("hp"),
						rs.getString("bs_post"),
						rs.getString("bs_addr"),
						rs.getString("bs_phone"),
						rs.getString("bs_fax"),
						rs.getString("bs_type"),
						rs.getString("cp_type"),
						toDate(rs.getTimestamp("calc_start")),
						toDate(rs.getTimestamp("calc_end")),
						toDate(rs.getTimestamp("payday")),
						rs.getString("bs_bank"),
						rs.getString("bs_account"),
						rs.getString("bs_acc_name"));
			}
			return company;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	private Date toDate(Timestamp date) {
		//Timestamp 객체 date가 null이 아니면 Date 객체로 바꾸어 반환 
		return date == null ? null : new Date(date.getTime());
	}
	
	public void insert(Connection conn, Company cpn) throws SQLException{
		//Company 객체 정보와 현재시간을 DB에 저장하는 매서드
		try(PreparedStatement pstmt = conn.prepareStatement("insert into member values("
				+ "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)")){
			pstmt.setString(1, cpn.getCp_name());
			pstmt.setString(2, cpn.getCeo_job());
			pstmt.setString(3, cpn.getCeo_name());
			pstmt.setString(4, cpn.getBs_num());
			pstmt.setString(5, cpn.getBs_regnum());
			pstmt.setTimestamp(6, new Timestamp(cpn.getFounded_date().getTime()));
			pstmt.setString(7, cpn.getHp());
			pstmt.setString(8, cpn.getBs_post());
			pstmt.setString(9, cpn.getBs_addr());
			pstmt.setString(10, cpn.getBs_phone());
			pstmt.setString(11, cpn.getBs_fax());
			pstmt.setString(12, cpn.getBs_type());
			pstmt.setString(13, cpn.getCp_type());
			pstmt.setTimestamp(14, new Timestamp(cpn.getCalc_start().getTime()));
			pstmt.setTimestamp(15, new Timestamp(cpn.getCalc_end().getTime()));
			pstmt.setTimestamp(16, new Timestamp(cpn.getPayday().getTime()));
			pstmt.setString(17, cpn.getBs_bank());
			pstmt.setString(18, cpn.getBs_account());
			pstmt.setString(19, cpn.getBs_acc_name());
			pstmt.executeUpdate();
		}
	}
	
	/*
	 * public void update(Connection conn, Company cpn) throws SQLException{
	 * //Company 객체의 이름과 비밀번호를 수정하는 매서드 try(PreparedStatement pstmt =
	 * conn.prepareStatement(
	 * "update member set name = ?, password = ? where memberid = ?")){
	 * pstmt.setString(1, member.getName()); pstmt.setString(2,
	 * member.getPassword()); pstmt.setString(3, member.getId());
	 * pstmt.executeUpdate(); } }
	 */
}
