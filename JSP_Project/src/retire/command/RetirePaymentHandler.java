package retire.command;

import java.sql.Connection;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.connection.ConnectionProvider;
import mvc.command.CommandHandler;
import retire.dao.RetirePayDao;
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

		
		Connection conn = ConnectionProvider.getConnection();
		RetirePayDao retirePayDao = new RetirePayDao();
		retirePayDao.calcRetirepayInsert(conn, req);
		
		
		int emp_no = Integer.parseInt(req.getParameter("emp_no"));
		Date date = retirePayService.retiredDateByEmpNo(emp_no);
		DayTerm dayTerm = retirePayService.getDayTerm(emp_no, date);
		req.setAttribute("dayTerm", dayTerm);
		
		String button = " ";
		if (req.getParameter("calc") != null) {
			button = req.getParameter("calc");
		}

		if (button.equals("퇴직금 계산하기")) { // 퇴직금 계산하기 버튼을 눌렀을 때

			System.out.println("퇴직금 계산하기 버튼 클릭");
			
			RetirePayRequest rpr = retirePayDao.calcRetirepayInsert(conn, req);
			req.setAttribute("rpr", rpr);
			req.getRequestDispatcher(FORM_VIEW).forward(req, res);
		}
		
		
		return null;

	}

}
