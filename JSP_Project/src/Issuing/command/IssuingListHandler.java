package Issuing.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Issuing.model.IssuingSetting;
import Issuing.service.DeleteIssuingService;
import Issuing.service.SelectIssuingService;
import mvc.command.CommandHandler;

public class IssuingListHandler implements CommandHandler {

	private SelectIssuingService selectIssuSetService = new SelectIssuingService();
	private DeleteIssuingService deleteIssuingService = new DeleteIssuingService();

	private static final String FORM_VIEW = "/WEB-INF/view/personnel/issuingList.jsp";

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("get")) { // get 요청이 오면 FORM_VIEW
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("post")) {// post 요청이 오면 processSubmit()로 이동
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {

		List<IssuingSetting> isu_set = selectIssuSetService.selectSet();
		req.setAttribute("isu_set", isu_set);

		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {

		if (req.getParameter("isu_num") != null) {

			int isu_num = Integer.parseInt(req.getParameter("isu_num"));

			deleteIssuingService.delete(isu_num);

		}
		
		if (req.getParameter("delAll") != null) {

			deleteIssuingService.deleteAll();

		}
		
		List<IssuingSetting> isu_set = selectIssuSetService.selectSet();
		req.setAttribute("isu_set", isu_set);

		return FORM_VIEW;
	}

}
