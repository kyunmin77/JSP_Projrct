package retire.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import retire.model.RetirePayRequest;
import retire.service.RetirePayService;

public class RetirePayHandler implements CommandHandler {

	private RetirePayService retirePayService = new RetirePayService();
	private static final String FORM_VIEW = "/WEB-INF/view/retire/retirePay.jsp";

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
		List<RetirePayRequest> list = retirePayService.selectAll();
		req.setAttribute("list", list);
		
		return FORM_VIEW;

		
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		// TODO Auto-generated method stub
		return null;
	}

}
