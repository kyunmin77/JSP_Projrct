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
						toDate(rs.getTimestamp("bs_num"))); //////추가예정
			}
			return member;
		}finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}
	
	private Date toDate(Timestamp date) {
		//Timestamp 객체 date가 null이 아니면 Date 객체로 바꾸어 반환 
		return date == null ? null : new Date(date.getTime());
	}
	
	public void insert(Connection conn, Member mem) throws SQLException{
		//Member 객체 정보와 현재시간을 DB에 저장하는 매서드
		try(PreparedStatement pstmt = conn.prepareStatement("insert into member values(?,?,?,?)")){
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getName());
			pstmt.setString(3, mem.getPassword());
			pstmt.setTimestamp(4, new Timestamp(mem.getRegDate().getTime()));
			pstmt.executeUpdate();
		}
	}
	
	public void update(Connection conn, Member member) throws SQLException{
		//Member 객체의 이름과 비밀번호를 수정하는 매서드
		try(PreparedStatement pstmt = conn.prepareStatement(
				"update member set name = ?, password = ? where memberid = ?")){
			pstmt.setString(1, member.getName());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getId());
			pstmt.executeUpdate();
		}
	}
}
