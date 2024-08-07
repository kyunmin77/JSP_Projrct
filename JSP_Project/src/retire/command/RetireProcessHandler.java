package retire.command;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import retire.model.OneMemberRetireRequest;
import retire.model.RetireProcessRequest;
import retire.model.SearchingRequest;
import retire.service.RetireService;

public class RetireProcessHandler implements CommandHandler {

	private RetireService empRetireService = new RetireService();
	private static final String FORM_VIEW = "/WEB-INF/view/retire/retireProcess.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return FORM_VIEW;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) throws Exception {

		List<RetireProcessRequest> list = null;
				
		 
		if(!"null".equals(req.getParameter("button"))&&!(req.getParameter("button")==null)){
			
			String button = req.getParameter("button");
			String searchCategori = req.getParameter("searchCategori");
			String searchWord = req.getParameter("searchWord");
			
			if(button.equals("all")) {
				list = empRetireService.selectAll();
				req.setAttribute("list", list);
			} else {
				
				SearchingRequest searchReq = new SearchingRequest(searchCategori, searchWord);
				list = empRetireService.selectSearch(searchReq);
				req.setAttribute("list", list);
			}
			
		} else {
			
			list = empRetireService.selectAll();
			req.setAttribute("list", list);
		}
		
				
		return FORM_VIEW;

	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {

		int emp_no = Integer.parseInt(req.getParameter("emp_no"));
		String retirement_type = req.getParameter("retirement_type");

		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = req.getParameter("retirement_date");
		Date retirement_date = dateFormat.parse(dateString);

		String retire_reason = req.getParameter("retire_reason");
		String retire_phone = req.getParameter("retire_phone");

		OneMemberRetireRequest omrr = new OneMemberRetireRequest(emp_no, retirement_type, retirement_date,
				retire_reason, retire_phone);

		String modalButton = req.getParameter("modalButton");

		if (modalButton.equals("저장")) {
			empRetireService.oneMemberRetireInsert(omrr);

			List<RetireProcessRequest> list = empRetireService.selectAll();
			req.setAttribute("list", list);


			return FORM_VIEW;

		} else {

			empRetireService.oneMemberRetireDelete(omrr);
			List<RetireProcessRequest> list = empRetireService.selectAll();
			req.setAttribute("list", list);


			return FORM_VIEW;

		}

	}
}
