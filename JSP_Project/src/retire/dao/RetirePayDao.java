package retire.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jdbc.JdbcUtil;
import retire.model.DayTerm;
import retire.model.RetirePayRequest;

public class RetirePayDao {

	// 퇴직급여지급 사원선택 <모달>에서 전체 사원을 출력하기
	public List<RetirePayRequest> selectAll(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(
					"select e.emp_no, rp.ret_calc_type_mid, rp.ret_calc_type_retire, e.emp_type, e.name_kor, e.job, e.dept, e.state, e.hired_date, r.retired_date, rp.ret_other_date, rp.ret_other_name, rp.ret_other_cost, rp.ret_prize, rp.ret_notice, rp.ret_tax_free_pay, rp.ret_ad_pay, rp.ret_tax_free, rp.ret_3mon_sum, rp.ret_day_avg, rp.ret_pay, rp.ret_year, rp.ret_tax, rp.ret_income_tax, rp.ret_local_tax, rp.ret_realpay, rp.how_to_pay, rp.ret_payday from employee e left outer join retire r on (e.emp_no = r.emp_no) left outer join retire_payment rp on (r.emp_no = rp.emp_no)");
			rs = pstmt.executeQuery();

			List<RetirePayRequest> list = new ArrayList<>();
			RetirePayRequest rpr = null;
			while (rs.next()) {

				// 근속연수, 근속일수 계산을 위한 코드
				long retired_date;
				int years_service;
				int days_service;

				if (rs.getDate("retired_date") == null) {
					retired_date = new Date().getTime();
				} else {
					retired_date = rs.getDate("retired_date").getTime();
				}
				years_service = (int) ((retired_date - rs.getDate("hired_date").getTime())
						/ (365 * 24 * 60 * 60 * 1000L));
				days_service = (int) ((retired_date - rs.getDate("hired_date").getTime()) / (24 * 60 * 60 * 1000L));

				rpr = new RetirePayRequest(rs.getInt("emp_no"), // 사원번호
						rs.getString("ret_calc_type_mid"), // 퇴직구분(중간정산)
						rs.getString("ret_calc_type_retire"), // 퇴직구분(퇴직정산)
						rs.getString("emp_type"), // 구분(정규직, 일용직)
						rs.getString("name_kor"), // 이름
						rs.getString("job"), // 직위
						rs.getString("dept"), // 부서
						rs.getString("state"), // 재직,퇴직
						rs.getDate("hired_date"), rs.getDate("retired_date"), years_service, days_service,
						rs.getDate("ret_other_date"), // 기타과세소득지급일
						rs.getString("ret_other_name"), // 기타과세소득지급항목
						rs.getInt("ret_other_cost"), // 기타과세소득금액
						rs.getInt("ret_prize"), // 퇴직위로금
						rs.getInt("ret_notice"), // 해고예고수당
						rs.getInt("ret_tax_free_pay"), // 비과세퇴직급여
						rs.getInt("ret_ad_pay"), // 기납부세액
						rs.getInt("ret_tax_free"), // 세액공제
						rs.getInt("ret_3mon_sum"), // 3개월총계
						rs.getInt("ret_day_avg"), // 1일평균임금
						rs.getInt("ret_pay"), // 퇴직소득
						rs.getInt("ret_year"), // 퇴직일과세연도
						rs.getInt("ret_tax"), // 산출세액
						rs.getInt("ret_income_tax"), // 퇴직소득세
						rs.getInt("ret_local_tax"), // 지방소득세
						rs.getInt("ret_realpay"), // 실수령액
						rs.getString("how_to_pay"), // 지급방법
						rs.getDate("ret_payday")); // 지급일

				list.add(rpr);
			}
			return list;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	// 퇴직급여지급 사원선택 <모달>에서 전체 사원을 출력하기
	public RetirePayRequest selectOne(Connection conn, int emp_no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		RetirePayRequest rpr = null;

		try {
			pstmt = conn.prepareStatement(
					"select rp.ret_calc_type_mid, rp.ret_calc_type_retire, e.emp_type, e.name_kor, e.job, e.dept, e.state, e.hired_date, r.retired_date, rp.ret_other_date, rp.ret_other_name, rp.ret_other_cost, rp.ret_prize, rp.ret_notice, rp.ret_tax_free_pay, rp.ret_ad_pay, rp.ret_tax_free, rp.ret_3mon_sum, rp.ret_day_avg, rp.ret_pay, rp.ret_year, rp.ret_tax, rp.ret_income_tax, rp.ret_local_tax, rp.ret_realpay, rp.how_to_pay, rp.ret_payday from employee e left outer join retire r on (e.emp_no = r.emp_no) left outer join retire_payment rp on (r.emp_no = rp.emp_no) where e.emp_no=?");
			pstmt.setInt(1, emp_no);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				// 근속연수, 근속일수 계산을 위한 코드
				long retired_date;
				int years_service;
				int days_service;

				if (rs.getDate("retired_date") == null) {
					retired_date = new Date().getTime();
				} else {
					retired_date = rs.getDate("retired_date").getTime();
				}
				years_service = (int) ((retired_date - rs.getDate("hired_date").getTime())
						/ (365 * 24 * 60 * 60 * 1000L));
				days_service = (int) ((retired_date - rs.getDate("hired_date").getTime()) / (24 * 60 * 60 * 1000L));

				rpr = new RetirePayRequest(emp_no, // 사원번호
						rs.getString("ret_calc_type_mid"), // 퇴직구분(중간정산)
						rs.getString("ret_calc_type_retire"), // 퇴직구분(퇴직정산)
						rs.getString("emp_type"), // 구분(정규직, 일용직)
						rs.getString("name_kor"), // 이름
						rs.getString("job"), // 직위
						rs.getString("dept"), // 부서
						rs.getString("state"), // 재직,퇴직
						rs.getDate("hired_date"), rs.getDate("retired_date"), years_service, days_service,
						rs.getDate("ret_other_date"), // 기타과세소득지급일
						rs.getString("ret_other_name"), // 기타과세소득지급항목
						rs.getInt("ret_other_cost"), // 기타과세소득금액
						rs.getInt("ret_prize"), // 퇴직위로금
						rs.getInt("ret_notice"), // 해고예고수당
						rs.getInt("ret_tax_free_pay"), // 비과세퇴직급여
						rs.getInt("ret_ad_pay"), // 기납부세액
						rs.getInt("ret_tax_free"), // 세액공제
						rs.getInt("ret_3mon_sum"), // 3개월총계
						rs.getInt("ret_day_avg"), // 1일평균임금
						rs.getInt("ret_pay"), // 퇴직소득
						rs.getInt("ret_year"), // 퇴직일과세연도
						rs.getInt("ret_tax"), // 산출세액
						rs.getInt("ret_income_tax"), // 퇴직소득세
						rs.getInt("ret_local_tax"), // 지방소득세
						rs.getInt("ret_realpay"), // 실수령액
						rs.getString("how_to_pay"), // 지급방법
						rs.getDate("ret_payday")); // 지급일
			}
			return rpr;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	// 사원번호로 퇴직일 가져오기
	public Date retiredDateByEmpNo(Connection conn, int emp_no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Date date = null;

		try {
			pstmt = conn.prepareStatement("select retired_date from retire where emp_no=?");
			pstmt.setInt(1, emp_no);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				date = rs.getDate("retired_date");
			}
			return date;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

	}

	// 퇴직일로부터 직전 3개월 날짜 가져오기
	public DayTerm getDayTerm(Connection conn, int emp_no, Date retired_date) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DayTerm dayTerm = null;

		try {
			pstmt = conn.prepareStatement("select add_months(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'),-3)+1 as prev3_first," + " last_day(add_months(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'),-3)+1) as prev3_last," + " last_day(add_months(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'),-3)+1)-(add_months(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'),-3)+1)+1 as prev3_days," + " (last_day(add_months(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'),-3)+1)+1) as prev2_first," + " last_day(last_day(add_months(to_date('"
					+ retired_date + "', 'YYYY-MM-DD'),-3)+1)+1) as prev2_last,"
					+ " last_day(last_day(add_months(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'),-3)+1)+1)-(last_day(add_months(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'),-3)+1)+1)+1 as prev2_days," + " (last_day(last_day(add_months(to_date('"
					+ retired_date + "', 'YYYY-MM-DD'),-3)+1)+1)+1) as prev1_first,"
					+ " last_day(last_day(last_day(add_months(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'),-3)+1)+1)+1) as prev1_last,"
					+ " last_day(last_day(last_day(add_months(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'),-3)+1)+1)+1)-(last_day(last_day(add_months(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'),-3)+1)+1)+1)+1 as prev1_days," + " TRUNC(to_date('" + retired_date
					+ "', 'YYYY-MM-DD'), 'MM') as this_first," + " to_date('" + retired_date
					+ "', 'YYYY-MM-DD') as this_last," + " to_date('" + retired_date
					+ "', 'YYYY-MM-DD')-TRUNC(to_date('" + retired_date + "', 'YYYY-MM-DD'), 'MM')+1 as this_days"
					+ " from dual");

			rs = pstmt.executeQuery();

			while (rs.next()) {

				
				
				dayTerm = new DayTerm(rs.getDate("prev3_first"), rs.getDate("prev3_last"), rs.getInt("prev3_days"), selectSalSumFromSalary(conn, emp_no, rs.getDate("prev3_last")),
						rs.getDate("prev2_first"), rs.getDate("prev2_last"), rs.getInt("prev2_days"), selectSalSumFromSalary(conn, emp_no,rs.getDate("prev2_last")),
						rs.getDate("prev1_first"), rs.getDate("prev1_last"), rs.getInt("prev1_days"), selectSalSumFromSalary(conn, emp_no,rs.getDate("prev1_last")),
						rs.getDate("this_first"), rs.getDate("this_last"), rs.getInt("this_days"), selectSalSumFromSalary(conn, emp_no,rs.getDate("this_last")));
			}
			return dayTerm;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

	}
	
	
	
	//급여 테이블에서 급여 가져오기(정규직)
		private int selectSalSumFromSalary(Connection conn, int emp_no, Date retired_date) throws SQLException {

			PreparedStatement pstmt = null;
			ResultSet rs = null;
			int sal_sum = 0;

			try {
				pstmt = conn.prepareStatement("select sal_sum from salary where emp_no = " + emp_no +" and sal_year= " + getYearFromDate(conn, retired_date) + " and sal_month= " + getMonthFromDate(conn, retired_date));

				rs = pstmt.executeQuery();

				while (rs.next()) {

					sal_sum = rs.getInt("sal_sum");
				}
				return sal_sum;
			} finally {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
			}

		}
		

		//Date 입력 시 년도 추출하기
		private int getYearFromDate(Connection conn, Date retired_date) throws SQLException {

			PreparedStatement pstmt = null;
			ResultSet rs = null;
			int year = 0;
			
			try {
				pstmt = conn.prepareStatement("select extract (year from to_date('" + retired_date + "')) as year from dual");

				rs = pstmt.executeQuery();

				while (rs.next()) {

					year = rs.getInt("year");
				}
				return year;
			} finally {
				JdbcUtil.close(rs);
				JdbcUtil.close(pstmt);
			}

		}
		
		//Date 입력 시 월 추출하기
			private int getMonthFromDate(Connection conn, Date retired_date) throws SQLException {

				PreparedStatement pstmt = null;
				ResultSet rs = null;
				int month = 0;

				try {
					pstmt = conn.prepareStatement("select extract (month from to_date('" + retired_date + "')) as month from dual");

					rs = pstmt.executeQuery();

					while (rs.next()) {

						month = rs.getInt("month");
					}
					return month;
				} finally {
					JdbcUtil.close(rs);
					JdbcUtil.close(pstmt);
				}

			}
			
		
}
