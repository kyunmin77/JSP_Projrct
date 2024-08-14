package attend.command;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attend.model.AttendHistory;
import attend.service.AttendHistoryInsertService;
import attend.service.AttendHistorySelectService;
import attend.service.AttendManageSelectService;
import attend.service.AttendManageRequest;
import mvc.command.CommandHandler;
import personnel.model.Employee;

public class AttendHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/attend/Attend_Management.jsp";

	private AttendManageSelectService selectEmpService = new AttendManageSelectService();

	private AttendHistorySelectService selectAtdService = new AttendHistorySelectService();
	private AttendHistoryInsertService insertAtdService = new AttendHistoryInsertService();

	SimpleDateFormat fdate = new SimpleDateFormat("yyyy-MM-dd");
	Date atth_inserted;
	Date atth_start;
	Date atth_end;

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

		List<Employee> emp_list = selectEmpService.select();
		req.setAttribute("emp_list", emp_list);

		try {

			AttendManageRequest insertAtdReq = null;

			if (req.getParameter("atd_button") != null) {
				if (req.getParameter("atd_button").equals("保存")) {
					if(req.getParameter("emp_no") != null && req.getParameter("atth_days") != null) {
						
						
					if (req.getParameter("atth_inserted") == null || req.getParameter("atth_inserted").isEmpty()) {
						atth_inserted = null;
					} else {
						atth_inserted = Date.valueOf(req.getParameter("atth_inserted"));
					}
					if (req.getParameter("atth_start") == null || req.getParameter("atth_start").isEmpty()) {
						atth_start = null;
					} else {
						atth_start = Date.valueOf(req.getParameter("atth_start"));
					}
					if (req.getParameter("atth_end") == null || req.getParameter("atth_end").isEmpty()) {
						atth_end = null;
					} else {
						atth_end = Date.valueOf(req.getParameter("atth_end"));
					}

						insertAtdReq = new AttendManageRequest(
								Integer.parseInt(req.getParameter("emp_no")), 
								atth_inserted,
								req.getParameter("atth_name"), 
								atth_start, 
								atth_end,
								Integer.parseInt(req.getParameter("atth_days")),
								req.getParameter("atth_cost"),
								req.getParameter("atth_note"));
						
					}

					if (!errors.isEmpty()) {
						List<AttendHistory> atd_list = selectAtdService.select();
						req.setAttribute("atd_list", atd_list);
						return FORM_VIEW;
					}

					AttendHistory ah = insertAtdService.insert(insertAtdReq);

				}
			}

			if (req.getParameter("atd_button") != null) {
				if (req.getParameter("atd_button").equals("管理")) {

					int emp_no = Integer.parseInt(req.getParameter("emp_b"));

					List<AttendHistory> atd_list = selectAtdService.selectById(emp_no);
					req.setAttribute("atd_list", atd_list);

				}
			}

			/*
			 * if (req.getParameter("atd_button") != null) { if
			 * (req.getParameter("atd_button").equals("선택")) {
			 * 
			 * int emp_no = Integer.parseInt(req.getParameter("atd_name_picked"));
			 * 
			 * req.setAttribute("atd_picked", new_adt);
			 * 
			 * List<AttendHistory> atd_list=selectAtdService.selectById(emp_no);
			 * req.setAttribute("atd_list", atd_list); } }
			 * 
			 * if (req.getParameter("atd_button") != null) { if
			 * (req.getParameter("atd_button").equals("수정")) {
			 * 
			 * String before_name = req.getParameter("emp_before_name");
			 * 
			 * if (req.getParameter("atth_inserted") == null ||
			 * req.getParameter("atth_inserted").isEmpty()) { atth_inserted = null; }else {
			 * atth_inserted = Date.valueOf(req.getParameter("atth_inserted")); } if
			 * (req.getParameter("atth_start") == null ||
			 * req.getParameter("atth_start").isEmpty()) { atth_start = null; }else {
			 * atth_start = Date.valueOf(req.getParameter("atth_start")); } if
			 * (req.getParameter("atth_end") == null ||
			 * req.getParameter("atth_end").isEmpty()) { atth_end = null; }else { atth_end =
			 * Date.valueOf(req.getParameter("atth_end")); }
			 * 
			 * AttendHistory new_adt = new AttendHistory(
			 * Integer.parseInt(req.getParameter("emp_no")), atth_inserted,
			 * req.getParameter("atth_name"), atth_start, atth_end,
			 * Integer.parseInt(req.getParameter("atth_days")),
			 * req.getParameter("atth_cost"), req.getParameter("atth_note") );
			 * 
			 * selectAtdService.update(before_name, new_adt);
			 * 
			 * int emp_no = Integer.parseInt(req.getParameter("emp_b")); List<AttendHistory>
			 * atd_list=selectAtdService.selectById(emp_no); req.setAttribute("atd_list",
			 * atd_list); } }
			 */

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return FORM_VIEW; // �닔�젙�븘�슂. �깉李쎈쭔�뱾湲�? 由ы�섏뒪�듃�뿉 �삱�젮�꽌 �뙘�뾽�쓣�슦湲�?
		// newArticleSuccess 二쇱냼瑜� 諛섑솚
	}

}
