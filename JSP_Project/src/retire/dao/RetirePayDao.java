package retire.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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

				dayTerm = new DayTerm(rs.getDate("prev3_first"), rs.getDate("prev3_last"), rs.getInt("prev3_days"),
						selectSalSumFromSalary(conn, emp_no, rs.getDate("prev3_last")), rs.getDate("prev2_first"),
						rs.getDate("prev2_last"), rs.getInt("prev2_days"),
						selectSalSumFromSalary(conn, emp_no, rs.getDate("prev2_last")), rs.getDate("prev1_first"),
						rs.getDate("prev1_last"), rs.getInt("prev1_days"),
						selectSalSumFromSalary(conn, emp_no, rs.getDate("prev1_last")), rs.getDate("this_first"),
						rs.getDate("this_last"), rs.getInt("this_days"),
						selectSalSumFromSalary(conn, emp_no, rs.getDate("this_last")));
			}
			return dayTerm;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}

	}

	// 급여 테이블에서 급여 가져오기(정규직)
	private int selectSalSumFromSalary(Connection conn, int emp_no, Date retired_date) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int sal_sum = 0;

		try {
			pstmt = conn.prepareStatement("select sal_sum from salary where emp_no = " + emp_no + " and sal_year= "
					+ getYearFromDate(conn, retired_date) + " and sal_month= " + getMonthFromDate(conn, retired_date));

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

	// Date 입력 시 년도 추출하기
	public int getYearFromDate(Connection conn, Date retired_date) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int year = 0;

		try {
			pstmt = conn
					.prepareStatement("select extract (year from to_date('" + retired_date + "')) as year from dual");

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

	// Date 입력 시 월 추출하기
	private int getMonthFromDate(Connection conn, Date retired_date) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int month = 0;

		try {
			pstmt = conn
					.prepareStatement("select extract (month from to_date('" + retired_date + "')) as month from dual");

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

	// 퇴직금 계산하기 버튼 클릭 시 계산
	public RetirePayRequest pushCalcRetirepay(Connection conn, HttpServletRequest req) throws Exception {

		RetirePayRequest rpr = null;

		// 입사일
		String hired_date = req.getParameter("hired_date");
		// 퇴직일
		String retired_date = req.getParameter("retired_date");

//여기서부터 퇴직급여 테이블
		// 사원번호
		int emp_no = Integer.parseInt(req.getParameter("emp_no"));

		String ret_calc_type = req.getParameter("ret_calc_type");
		String ret_calc_type_mid = (String) ((ret_calc_type.equals("중간정산")) ? "중간정산" : null);
		String ret_calc_type_retire = (String) ((ret_calc_type.equals("퇴직정산")) ? "퇴직정산" : null);

		// 기타과세소득지급일
		String ret_other_date = req.getParameter("ret_other_date");

		// 기타과세소득 지급항목
		String ret_other_name = req.getParameter("ret_other_name");

		// 기타과세소득 금액
		String ret_other_cost = req.getParameter("ret_other_cost");

		String ret_prize = req.getParameter("ret_prize");

		String ret_notice = req.getParameter("ret_notice");

		String ret_tax_free_pay = req.getParameter("ret_tax_free_pay");

		String ret_ad_pay = req.getParameter("ret_ad_pay");
		// 세액공제
		String ret_tax_free = req.getParameter("ret_tax_free");

		String ret_3mon_sum = req.getParameter("ret_3mon_sum");

		String ret_day_avg = req.getParameter("ret_day_avg");

		String name_kor = req.getParameter("name_kor");

		String job = req.getParameter("job");

		String years_service = req.getParameter("years_service");

		String days_service = req.getParameter("days_service");

		try {
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			if (ret_other_date.equals(null) || ret_other_date.isEmpty()) {

				pstmt = conn.prepareStatement(
						"select hired_date, retired_date, emp_no, ret_calc_type_mid, ret_calc_type_retire,"
								+ " ret_other_name, ret_other_cost, ret_prize, ret_notice,"
								+ " ret_tax_free_pay, ret_ad_pay, ret_tax_free, ret_3mon_sum, ret_day_avg,"
								+ " name_kor, job, years_service, days_service"
								+ " from (select ? as hired_date, ? as retired_date, ? as emp_no, ? as ret_calc_type_mid, ? as ret_calc_type_retire,"
								+ " ? as ret_other_name, ? as ret_other_cost, ? as ret_prize, ? as ret_notice,"
								+ " ? as ret_tax_free_pay, ? as ret_ad_pay, ? as ret_tax_free, ? as ret_3mon_sum, ? as ret_day_avg,"
								+ " ? as name_kor, ? as job, ? as years_service, ? as days_service" + " from dual)");

				pstmt.setDate(1, java.sql.Date.valueOf(hired_date));
				pstmt.setDate(2, java.sql.Date.valueOf(retired_date));
				pstmt.setInt(3, emp_no);
				pstmt.setString(4, ret_calc_type_mid);
				pstmt.setString(5, ret_calc_type_retire);
				// pstmt.setDate(6, java.sql.Date.valueOf(ret_other_date)); // 기타과세소득지급일
				pstmt.setString(6, ret_other_name);
				pstmt.setString(7, ret_other_cost);
				pstmt.setString(8, ret_prize); //
				pstmt.setString(9, ret_notice); //
				pstmt.setString(10, ret_tax_free_pay); //
				pstmt.setString(11, ret_ad_pay); //
				pstmt.setString(12, ret_tax_free); //
				pstmt.setString(13, ret_3mon_sum); //
				pstmt.setString(14, ret_day_avg); //
				pstmt.setString(15, name_kor); //
				pstmt.setString(16, job); //
				pstmt.setString(17, years_service); //
				pstmt.setString(18, days_service); //

				rs = pstmt.executeQuery();

				while (rs.next()) {

					rpr = new RetirePayRequest(//
							rs.getInt("emp_no"), //
							rs.getString("ret_calc_type_mid"), //
							rs.getString("ret_calc_type_retire"), //
							null, // emp_type 정규직
							rs.getString("name_kor"), //
							rs.getString("job"), //
							null, // dept
							null, // state
							rs.getDate("hired_date"), //
							rs.getDate("retired_date"), //
							rs.getInt("years_service"), //
							rs.getInt("days_service"), //
							null, //
							rs.getString("ret_other_name"), //
							rs.getInt("ret_other_cost"), //
							rs.getInt("ret_prize"), //
							rs.getInt("ret_notice"), //
							rs.getInt("ret_tax_free_pay"), // 비과세퇴직급여
							rs.getInt("ret_ad_pay"), // 기납부세액
							rs.getInt("ret_tax_free"), // 새엑공제
							rs.getInt("ret_3mon_sum"), // 3개월총계
							rs.getInt("ret_day_avg"), // 1일평균임금
							rs.getInt("ret_3mon_sum") * 3, // 퇴직소득
							getYearFromDate(conn, rs.getDate("retired_date")), // 퇴직일과세연도
							rs.getInt("ret_3mon_sum") * 3 / 202, // 산출세액
							rs.getInt("ret_3mon_sum") * 3 / 100, // 퇴직소득세
							rs.getInt("ret_3mon_sum") * 3 / 1005, // 지방소득세
							rs.getInt("ret_3mon_sum") * 3 * Integer.parseInt(years_service) + rs.getInt("ret_prize")
									+ rs.getInt("ret_notice") - rs.getInt("ret_tax_free_pay") - rs.getInt("ret_ad_pay")
									- rs.getInt("ret_tax_free") + rs.getInt("ret_other_cost") / 40
									- rs.getInt("ret_3mon_sum") * 3 / 100 - rs.getInt("ret_3mon_sum") * 3 / 1005, // 실수령액
							null, // 지급방법
							null// 지급일
					);

				}

				JdbcUtil.close(pstmt);
				return rpr;
			} else {

				pstmt = conn.prepareStatement(
						"select hired_date, retired_date, emp_no, ret_calc_type_mid, ret_calc_type_retire,"
								+ " ret_other_date, ret_other_name, ret_other_cost, ret_prize, ret_notice,"
								+ " ret_tax_free_pay, ret_ad_pay, ret_tax_free, ret_3mon_sum, ret_day_avg,"
								+ " name_kor, job, years_service, days_service"
								+ " from (select ? as hired_date, ? as retired_date, ? as emp_no, ? as ret_calc_type_mid, ? as ret_calc_type_retire,"
								+ " ? as ret_other_date, ? as ret_other_name, ? as ret_other_cost, ? as ret_prize, ? as ret_notice,"
								+ " ? as ret_tax_free_pay, ? as ret_ad_pay, ? as ret_tax_free, ? as ret_3mon_sum, ? as ret_day_avg,"
								+ " ? as name_kor, ? as job, ? as years_service, ? as days_service" + " from dual)");

				pstmt.setDate(1, java.sql.Date.valueOf(hired_date));
				pstmt.setDate(2, java.sql.Date.valueOf(retired_date));
				pstmt.setInt(3, emp_no);
				pstmt.setString(4, ret_calc_type_mid);
				pstmt.setString(5, ret_calc_type_retire);
				pstmt.setDate(6, java.sql.Date.valueOf(ret_other_date)); // 기타과세소득지급일
				pstmt.setString(7, ret_other_name);
				pstmt.setString(8, ret_other_cost);
				pstmt.setString(9, ret_prize); //
				pstmt.setString(10, ret_notice); //
				pstmt.setString(11, ret_tax_free_pay); //
				pstmt.setString(12, ret_ad_pay); //
				pstmt.setString(13, ret_tax_free); //
				pstmt.setString(14, ret_3mon_sum); //
				pstmt.setString(15, ret_day_avg); //
				pstmt.setString(16, name_kor); //
				pstmt.setString(17, job); //
				pstmt.setString(18, years_service); //
				pstmt.setString(19, days_service); //

				rs = pstmt.executeQuery();

				while (rs.next()) {

					rpr = new RetirePayRequest(//
							rs.getInt("emp_no"), //
							rs.getString("ret_calc_type_mid"), //
							rs.getString("ret_calc_type_retire"), //
							null, // emp_type 정규직
							rs.getString("name_kor"), //
							rs.getString("job"), //
							null, // dept
							null, // state
							rs.getDate("hired_date"), //
							rs.getDate("retired_date"), //
							rs.getInt("years_service"), //
							rs.getInt("days_service"), //
							rs.getDate("ret_other_date"), //
							rs.getString("ret_other_name"), //
							rs.getInt("ret_other_cost"), //
							rs.getInt("ret_prize"), //
							rs.getInt("ret_notice"), //
							rs.getInt("ret_tax_free_pay"), // 비과세퇴직급여
							rs.getInt("ret_ad_pay"), // 기납부세액
							rs.getInt("ret_tax_free"), // 새엑공제
							rs.getInt("ret_3mon_sum"), // 3개월총계
							rs.getInt("ret_day_avg"), // 1일평균임금
							rs.getInt("ret_3mon_sum") * 3, // 퇴직소득
							getYearFromDate(conn, rs.getDate("retired_date")), // 퇴직일과세연도
							rs.getInt("ret_3mon_sum") * 3 / 202, // 산출세액
							rs.getInt("ret_3mon_sum") * 3 / 100, // 퇴직소득세
							rs.getInt("ret_3mon_sum") * 3 / 1005, // 지방소득세
							rs.getInt("ret_3mon_sum") * 3 * Integer.parseInt(years_service) + rs.getInt("ret_prize")
									+ rs.getInt("ret_notice") - rs.getInt("ret_tax_free_pay") - rs.getInt("ret_ad_pay")
									- rs.getInt("ret_tax_free") + rs.getInt("ret_other_cost") / 40
									- rs.getInt("ret_3mon_sum") * 3 / 100 - rs.getInt("ret_3mon_sum") * 3 / 1005, // 실수령액
							null, // 지급방법
							null// 지급일
					);
				}

				JdbcUtil.close(pstmt);
				return rpr;
			}
		} catch (Exception e) {
		}
		return null;
	}

	// 저장 버튼 클릭 시 insert
	public void retirepayInsert(Connection conn, HttpServletRequest req) {


		// 입사일
		String hired_date = req.getParameter("hired_date");
		// 퇴직일
		String retired_date = req.getParameter("retired_date");

//여기서부터 퇴직급여 테이블
		// 사원번호
		int emp_no = Integer.parseInt(req.getParameter("emp_no"));

		String ret_calc_type = req.getParameter("ret_calc_type");
		String ret_calc_type_mid = (String) ((ret_calc_type.equals("중간정산")) ? "중간정산" : null);
		String ret_calc_type_retire = (String) ((ret_calc_type.equals("퇴직정산")) ? "퇴직정산" : null);

		// 기타과세소득지급일
		String ret_other_date = req.getParameter("ret_other_date");

		// 기타과세소득 지급항목
		String ret_other_name = req.getParameter("ret_other_name");

		// 기타과세소득 금액
		String ret_other_cost = req.getParameter("ret_other_cost");

		String ret_prize = req.getParameter("ret_prize");

		String ret_notice = req.getParameter("ret_notice");

		String ret_tax_free_pay = req.getParameter("ret_tax_free_pay");

		String ret_ad_pay = req.getParameter("ret_ad_pay");
		// 세액공제
		String ret_tax_free = req.getParameter("ret_tax_free");

		String ret_3mon_sum = req.getParameter("ret_3mon_sum");

		String ret_day_avg = req.getParameter("ret_day_avg");
		
		String ret_pay = req.getParameter("ret_pay");
		
		String ret_year = req.getParameter("ret_year");
		
		String ret_tax = req.getParameter("ret_tax");
		
		String ret_income_tax = req.getParameter("ret_income_tax");
		
		String ret_local_tax = req.getParameter("ret_local_tax");
		
		String ret_realpay = req.getParameter("ret_realpay");
		
		String how_to_pay = req.getParameter("how_to_pay");
		
		String ret_payday = req.getParameter("ret_payday");


		try {
			PreparedStatement pstmt = null;

			if (ret_other_date.equals(null) || ret_other_date.isEmpty()) {

				System.out.println("null일때");
				pstmt = conn.prepareStatement(
						"insert into retire_payment (emp_no, ret_calc_type_mid, ret_calc_type_retire, ret_other_date, ret_other_name,"
								+ " ret_other_cost, ret_prize, ret_notice, ret_tax_free_pay, ret_ad_pay,"
								+ " ret_tax_free, ret_3mon_sum, ret_day_avg, ret_pay, ret_year,"
								+ " ret_tax, ret_income_tax, ret_local_tax, ret_realpay, how_to_pay,"
								+ " ret_payday)"
								+ " values (?, ?, ?, ?, ?,"
								+ " ?, ?, ?, ?, ?,"
								+ " ?, ?, ?, ?, ?,"
								+ " ?, ?, ?, ?, ?,"
								+ " ?)");

				pstmt.setInt(1, emp_no);
				pstmt.setString(2, ret_calc_type_mid);
				pstmt.setString(3, ret_calc_type_retire);
			    pstmt.setString(4, null); // 기타과세소득지급일
				pstmt.setString(5, ret_other_name);
				pstmt.setString(6, ret_other_cost);
				pstmt.setString(7, ret_prize); //
				pstmt.setString(8, ret_notice); //
				pstmt.setString(9, ret_tax_free_pay); //
				pstmt.setString(10, ret_ad_pay); //
				pstmt.setString(11, ret_tax_free); //
				pstmt.setString(12, ret_3mon_sum); //
				pstmt.setString(13, ret_day_avg); //
				pstmt.setString(14, ret_pay);// 퇴직소득
				pstmt.setString(15, ret_year); //
				pstmt.setString(16, ret_tax); //
				pstmt.setInt(17, Integer.parseInt(ret_income_tax)); //
				pstmt.setString(18, ret_local_tax); //
				pstmt.setString(19, ret_realpay); //
				pstmt.setString(20, how_to_pay); //
				pstmt.setDate(21, java.sql.Date.valueOf(ret_payday)); //
				
				pstmt.executeUpdate();
				
				JdbcUtil.close(pstmt);
			} else {

				pstmt = conn.prepareStatement(
						"insert into retire_payment (emp_no, ret_calc_type_mid, ret_calc_type_retire, ret_other_date, ret_other_name,"
								+ " ret_other_cost, ret_prize, ret_notice, ret_tax_free_pay, ret_ad_pay,"
								+ " ret_tax_free, ret_3mon_sum, ret_day_avg, ret_pay, ret_year,"
								+ " ret_tax, ret_income_tax, ret_local_tax, ret_realpay, how_to_pay,"
								+ " ret_payday)"
								+ " values (?, ?, ?, ?, ?,"
								+ " ?, ?, ?, ?, ?,"
								+ " ?, ?, ?, ?, ?,"
								+ " ?, ?, ?, ?, ?,"
								+ " ?)");

				pstmt.setInt(1, emp_no);
				pstmt.setString(2, ret_calc_type_mid);
				pstmt.setString(3, ret_calc_type_retire);
			    pstmt.setDate(4, java.sql.Date.valueOf(ret_other_date)); // 기타과세소득지급일
				pstmt.setString(5, ret_other_name);
				pstmt.setString(6, ret_other_cost);
				pstmt.setString(7, ret_prize); //
				pstmt.setString(8, ret_notice); //
				pstmt.setString(9, ret_tax_free_pay); //
				pstmt.setString(10, ret_ad_pay); //
				pstmt.setString(11, ret_tax_free); //
				pstmt.setString(12, ret_3mon_sum); //
				pstmt.setString(13, ret_day_avg); //
				pstmt.setString(14, ret_pay);// 퇴직소득
				pstmt.setString(15, ret_year); //
				pstmt.setString(16, ret_tax); //
				pstmt.setInt(17, Integer.parseInt(ret_income_tax)); //
				pstmt.setString(18, ret_local_tax); //
				pstmt.setString(19, ret_realpay); //
				pstmt.setString(20, how_to_pay); //
				pstmt.setDate(21, java.sql.Date.valueOf(ret_payday)); //
				
				pstmt.executeUpdate();
				JdbcUtil.close(pstmt);
			}

		} catch (Exception e) {
		}

	}

	

}
