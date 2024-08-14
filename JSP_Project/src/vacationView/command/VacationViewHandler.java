package vacationView.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import vacationView.model.VacationView;
import vacationView.model.VacationViewJoin;
import vacationView.service.SelectVacationViewService;

public class VacationViewHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/attend/Vac_View.jsp";
	
	private SelectVacationViewService selectVacService=new SelectVacationViewService();
		

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		}else if(req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		}else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		
		List<VacationView> vac_list=selectVacService.select();
		req.setAttribute("vac_list", vac_list);
		
		
		return FORM_VIEW;
	}
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);	

		List<VacationView> vac_list=selectVacService.select();
		req.setAttribute("vac_list", vac_list);
		
		if((req.getParameter("emp_no")==null||req.getParameter("emp_no").isEmpty())&&req.getParameter("emp_b")!=null){
			
			try {
				int emp_no = Integer.parseInt(req.getParameter("emp_b"));
					
				List<VacationViewJoin> day_list=selectVacService.selectById(emp_no);
				req.setAttribute("day_list", day_list);	
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
			e.printStackTrace();
			}
				

		}
		
		return FORM_VIEW;
	}
	
}
