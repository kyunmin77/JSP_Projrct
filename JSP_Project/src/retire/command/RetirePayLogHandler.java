package retire.command;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import retire.model.DayTerm;
import retire.model.RetirePayRequest;
import retire.service.RetirePayLogService;

public class RetirePayLogHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/retire/retirePayLog.jsp";
	private RetirePayLogService retirePayLogService = new RetirePayLogService();
	

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

	

		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String button = null;
		if(req.getParameter("button")!=null && !req.getParameter("button").equals("")) {
			button = req.getParameter("button");
		}
		
		
		if (button.equals("작성")) {
			
			int ret_year = Integer.parseInt(req.getParameter("ret_year"));
			
			RetirePayLogService retirePayLogService = new RetirePayLogService();
			List<RetirePayRequest> list= retirePayLogService.selectAllByRetireYear(ret_year);
			
			req.setAttribute("list", list);
			
			int emp_no = Integer.parseInt(req.getParameter("emp_no"));
			RetirePayRequest rpr = retirePayLogService.selectOneByRetireEmp_no(emp_no);
			req.setAttribute("rpr", rpr);
			
			Date date = retirePayLogService.retiredDateByEmpNo(emp_no);
			DayTerm dayTerm = retirePayLogService.getDayTerm(emp_no, date);
			req.setAttribute("dayTerm", dayTerm);
			
		} else if (button.equals("검색")) {
			
			int ret_year = Integer.parseInt(req.getParameter("ret_year"));
			
			RetirePayLogService retirePayLogService = new RetirePayLogService();
			List<RetirePayRequest> list= retirePayLogService.selectAllByRetireYear(ret_year);
			
			req.setAttribute("list", list);

		}
		
		
		return FORM_VIEW;
	}

}
