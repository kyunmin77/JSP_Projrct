package daylab.command;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daylab.model.DaylabHistory;
import daylab.service.DaylabRequest;
import daylab.service.InsertDaylabService;
import daylab.service.SelectDaylabService;
import mvc.command.CommandHandler;
import personnel.model.Employee;
import daylab.service.SelectEmployeeService;

public class DaylabHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/attend/DayLab_Management.jsp";

	private SelectEmployeeService selectEmpService = new SelectEmployeeService();

	private SelectDaylabService selectDayService = new SelectDaylabService();
	private InsertDaylabService insertDayService = new InsertDaylabService();

	SimpleDateFormat fdate = new SimpleDateFormat("yyyy-MM-dd");
	Date datth_date;

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {

		List<Employee> emp_list = selectEmpService.select();
		req.setAttribute("emp_list", emp_list);

		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);
		
		List<Employee> emp_list=selectEmpService.select();
		req.setAttribute("emp_list", emp_list);

		if((req.getParameter("emp_b")==null||req.getParameter("emp_b").isEmpty())&&req.getParameter("emp_no")!=null) {
			
		
		try {
			if (req.getParameter("datth_date") == null || req.getParameter("datth_date").isEmpty()) {
				datth_date = null;
			}else {
				datth_date = Date.valueOf(req.getParameter("datth_date"));
			}
				DaylabRequest insertDayReq=new DaylabRequest(
					Integer.parseInt(req.getParameter("emp_no")),
					datth_date,
					req.getParameter("datth_name"),
					req.getParameter("datth_pay"),
					req.getParameter("datth_payrate"),
					req.getParameter("datth_payment"),
					req.getParameter("datth_income_tax"),
					req.getParameter("datth_local_tax"),
					req.getParameter("datth_realpayment")					
					);
				insertDayReq.validate(errors);
			
			
			
			if(!errors.isEmpty()) {
				
				
				List<DaylabHistory> day_list=selectDayService.select();
				req.setAttribute("day_list", day_list);	
				
				return FORM_VIEW;
			}
		
			DaylabHistory ah = insertDayService.insert(insertDayReq);
			
			

			
		} catch (Exception e) {
		// TODO Auto-generated catch block			
			e.printStackTrace();
		}
		

		
		}
		//
		if((req.getParameter("emp_no")==null||req.getParameter("emp_no").isEmpty())&&req.getParameter("emp_b")!=null){
			
			try {
				int emp_no = Integer.parseInt(req.getParameter("emp_b"));
				
				List<DaylabHistory> day_list=selectDayService.selectById(emp_no);
				req.setAttribute("day_list", day_list);	
			
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

		}

		return FORM_VIEW;
		//newArticleSuccess 二쇱냼瑜� 諛섑솚
	}
}