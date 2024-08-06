package retire.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import retire.model.RetirePayRequest;
import retire.service.RetirePayLogService;

public class RetirePayLogHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/retire/retirePayLog.jsp";

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
		int ret_year = Integer.parseInt(req.getParameter("ret_year"));

		RetirePayLogService retirePayLogService = new RetirePayLogService();
		List<RetirePayRequest> list= retirePayLogService.selectAllByRetireYear(ret_year);

		req.setAttribute("list", list);

		req.getRequestDispatcher(FORM_VIEW).forward(req, res);
		
		return null;
	}

}
