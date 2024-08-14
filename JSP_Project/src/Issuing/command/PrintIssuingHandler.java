package Issuing.command;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import company.model.Company;
import company.service.SelectCompanyService;
import mvc.command.CommandHandler;
import personnel.model.Career;
import personnel.model.Employee;
import personnel.model.Retire;
import personnel.service.SelectCareerService;
import personnel.service.SelectEmployeeService;
import personnel.service.SelectRetireService;

public class PrintIssuingHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/personnel/issuing.jsp";
	private static final String FORM_VIEW2 = "/WEB-INF/view/personnel/issuing2.jsp";
	private static final String FORM_VIEW3 = "/WEB-INF/view/personnel/issuing3.jsp";

	private SelectCompanyService selectService = new SelectCompanyService();
	private SelectCareerService selectCareerService = new SelectCareerService();
	private SelectEmployeeService selectEmployeeService = new SelectEmployeeService();
	private SelectRetireService selectRetireService = new SelectRetireService();

	SimpleDateFormat fdate = new SimpleDateFormat("yyyy-MM-dd");

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

		List<Employee> emp_list = selectEmployeeService.selectAll();
		req.setAttribute("emp_list", emp_list);

		if (req.getParameter("isu_led") != null) {

			if (req.getParameter("isu_led").equals("在職")) {

				String isu = req.getParameter("isu_led");
				req.setAttribute("isu", isu);
				return FORM_VIEW;
			}

			if (req.getParameter("isu_led").equals("経歴")) {

				String isu = req.getParameter("isu_led");
				req.setAttribute("isu", isu);
				return FORM_VIEW2;
			}

			if (req.getParameter("isu_led").equals("退職")) {

				String isu = req.getParameter("isu_led");
				req.setAttribute("isu", isu);
				return FORM_VIEW3;
			}
		}
		
		req.setAttribute("isu", "在職");

		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);

		try {
			List<Employee> emp_list = selectEmployeeService.selectAll();
			req.setAttribute("emp_list", emp_list);

			if (req.getParameter("emp_no") != null) {
				int emp_no = Integer.parseInt(req.getParameter("emp_no"));

				Employee emp = selectEmployeeService.select(emp_no);
				req.setAttribute("emp_pick", emp);

				String cpn_name = selectService.selectLastCpn();
				Company cpn = selectService.select(cpn_name);
				Retire rtr = selectRetireService.select(emp_no);

				String today = fdate.format(new Date());

				req.setAttribute("cpn", cpn);
				req.setAttribute("rtr", rtr);
				req.setAttribute("today", today);
			}
	
			if (req.getParameter("isu_led") != null) {

				if (req.getParameter("isu_led").equals("在職")) {

					String isu = req.getParameter("isu_led");
					req.setAttribute("isu", isu);
					return FORM_VIEW;
				}

				if (req.getParameter("isu_led").equals("経歴")) {

					String isu = req.getParameter("isu_led");
					req.setAttribute("isu", isu);
					return FORM_VIEW2;
				}

				if (req.getParameter("isu_led").equals("退職")) {

					String isu = req.getParameter("isu_led");
					req.setAttribute("isu", isu);
					return FORM_VIEW3;
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return FORM_VIEW;
	}

}
