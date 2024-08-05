package retire.command;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import retire.model.DayTerm;
import retire.model.RetirePayRequest;
import retire.service.RetirePayService;

public class RetirePaymentHandler implements CommandHandler {

	private RetirePayService retirePayService = new RetirePayService();
	private static final String FORM_VIEW = "/WEB-INF/view/retire/retirePayment.jsp";

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) throws Exception {

		int emp_no = Integer.parseInt(req.getParameter("emp_no"));
		RetirePayRequest rpr = retirePayService.selectOne(emp_no);
		req.setAttribute("rpr", rpr);

		Date date = retirePayService.retiredDateByEmpNo(emp_no);
		DayTerm dayTerm = retirePayService.getDayTerm(emp_no, date);
		req.setAttribute("dayTerm", dayTerm);

		req.getRequestDispatcher(FORM_VIEW).forward(req, res);
		return null;

	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		RetirePayRequest rpr = null;

		String button = " ";
		if (req.getParameter("calc") != null) {
			button = req.getParameter("calc");
		}

		if (button.equals("퇴직금 계산하기")) { // 퇴직금 계산하기 버튼을 눌렀을 때

			
			String ret_calc_type = req.getParameter("ret_calc_type");

			// 문자열->날짜형 데이터 변경 형식
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

			// 입사일 null값 처리(초기값 Date형)
			Date hired_date = null;
			if (req.getParameter("hired_date") != null && !req.getParameter("hired_date").isEmpty()) {
				hired_date = dateFormat.parse(req.getParameter("hired_date"));
				System.out.println(hired_date);
			}
			// 퇴직일 null값 처리(초기값 Date형)
			Date retired_date = null;
			if (req.getParameter("retired_date") != null && !req.getParameter("retired_date").isEmpty()) {
				retired_date = dateFormat.parse(req.getParameter("retired_date"));
			}
			// 기타과세소득지급일 null값 처리(초기값 Date형)
			Date ret_other_date = null;
			if (req.getParameter("ret_other_date") != null && !req.getParameter("ret_other_date").isEmpty()) {
				ret_other_date = dateFormat.parse(req.getParameter("ret_other_date"));
			}

			// 지급일 null값 처리(초기값 Date형)
			Date ret_payday = null;
			if (req.getParameter("ret_payday") != null && !req.getParameter("ret_payday").isEmpty()) {
				ret_payday = dateFormat.parse(req.getParameter("ret_payday"));
			}

			// 기타과세소득금액 null값 처리 (초기값 int형)
			int ret_other_cost = 0;
			if (req.getParameter("ret_other_cost") != null && !req.getParameter("ret_other_cost").isEmpty()) {
				ret_other_cost = Integer.parseInt(req.getParameter("ret_other_cost"));
			}

			// 퇴직위로금 null값 처리 (초기값 int형)
			int ret_prize = 0;
			if (req.getParameter("ret_prize") != null && !req.getParameter("ret_prize").isEmpty()) {
				ret_prize = Integer.parseInt(req.getParameter("ret_prize"));
			}
			// 해고예고수당 null값 처리 (초기값 int형)
			int ret_notice = 0;
			if (req.getParameter("ret_notice") != null && !req.getParameter("ret_notice").isEmpty()) {
				ret_notice = Integer.parseInt(req.getParameter("ret_notice"));
			}
			// 비과세퇴직급여 null값 처리 (초기값 int형)
			int ret_tax_free_pay = 0;
			if (req.getParameter("ret_tax_free_pay") != null && !req.getParameter("ret_tax_free_pay").isEmpty()) {
				ret_tax_free_pay = Integer.parseInt(req.getParameter("ret_tax_free_pay"));
			}
			// 기납부세액 null값 처리 (초기값 int형)
			int ret_ad_pay = 0;
			if (req.getParameter("ret_ad_pay") != null && !req.getParameter("ret_ad_pay").isEmpty()) {
				ret_ad_pay = Integer.parseInt(req.getParameter("ret_ad_pay"));
			}
			// 세액공제 null값 처리 (초기값 int형)
			int ret_tax_free = 0;
			if (req.getParameter("ret_tax_free") != null && !req.getParameter("ret_tax_free").isEmpty()) {
				ret_tax_free = Integer.parseInt(req.getParameter("ret_tax_free"));
			}
			// 퇴직소득 null값 처리 (초기값 int형)
			int ret_pay = 0;
			if (req.getParameter("ret_pay") != null && !req.getParameter("ret_pay").isEmpty()) {
				ret_pay = Integer.parseInt(req.getParameter("ret_pay"));
			}
			// 퇴직일과세연도 null값 처리 (초기값 int형)
			int ret_year = 0;
			if (req.getParameter("ret_year") != null && !req.getParameter("ret_year").isEmpty()) {
				ret_year = Integer.parseInt(req.getParameter("ret_year"));
			}

			// 산출세액 null값 처리 (초기값 int형)
			int ret_tax = 0;
			if (req.getParameter("ret_tax") != null && !req.getParameter("ret_tax").isEmpty()) {
				ret_tax = Integer.parseInt(req.getParameter("ret_tax"));
			}
			// 퇴직소득세 null값 처리 (초기값 int형)
			int ret_income_tax = 0;
			if (req.getParameter("ret_income_tax") != null && !req.getParameter("ret_income_tax").isEmpty()) {
				ret_income_tax = Integer.parseInt(req.getParameter("ret_income_tax"));
			}
			// 지방소득세 null값 처리 (초기값 int형)
			int ret_local_tax = 0;
			if (req.getParameter("ret_local_tax") != null && !req.getParameter("ret_local_tax").isEmpty()) {
				ret_local_tax = Integer.parseInt(req.getParameter("ret_local_tax"));
			}
			// 실수령액 null값 처리 (초기값 int형)
			int ret_realpay = 0;
			if (req.getParameter("ret_realpay") != null && !req.getParameter("ret_realpay").isEmpty()) {
				ret_realpay = Integer.parseInt(req.getParameter("ret_realpay"));
			}

			rpr = new RetirePayRequest(//
					Integer.parseInt(req.getParameter("emp_no")), // 사원번호
					(String) ((ret_calc_type.equals("중간정산")) ? "중간정산" : null), // 퇴직구분(중간정산)
					(String) ((ret_calc_type.equals("퇴직정산")) ? "퇴직정산" : null), // 퇴직구분(퇴직정산)
					null, // 구분(정규직, 일용직)
					req.getParameter("name_kor"), // 이름
					req.getParameter("job"), // 직위
					null, // 부서
					null, // 재직,퇴직
					hired_date, //
					retired_date, //
					Integer.parseInt(req.getParameter("years_service")), //
					Integer.parseInt(req.getParameter("days_service")), //
					ret_other_date, // 기타과세소득지급일
					req.getParameter("ret_other_name"), // 기타과세소득지급항목
					ret_other_cost, // 기타과세소득금액
					ret_prize, // 퇴직위로금
					ret_notice, // 해고예고수당
					ret_tax_free_pay, // 비과세퇴직급여
					ret_ad_pay, // 기납부세액
					ret_tax_free, // 세액공제
					Integer.parseInt(req.getParameter("ret_3mon_sum")), // 3개월총계
					Integer.parseInt(req.getParameter("ret_day_avg")), // 1일평균임금
					ret_pay, // 퇴직소득
					ret_year, // 퇴직일과세연도
					ret_tax, // 산출세액
					ret_income_tax, // 퇴직소득세
					ret_local_tax, // 지방소득세
					ret_realpay, // 실수령액
					req.getParameter("how_to_pay"), // 지급방법
					ret_payday); // 지급일

			
			req.setAttribute("rpr", rpr);
			Date date = retirePayService.retiredDateByEmpNo(Integer.parseInt(req.getParameter("emp_no")));
			DayTerm dayTerm = retirePayService.getDayTerm(Integer.parseInt(req.getParameter("emp_no")), date);
			req.setAttribute("dayTerm", dayTerm);
			req.getRequestDispatcher(FORM_VIEW).forward(req, res);
			
			
			return null;
		} else { // 취소 버튼을 눌렀을 때
			res.sendRedirect(req.getContextPath() + "/retirePay.do");
			return null;
		}
		
	}

}
