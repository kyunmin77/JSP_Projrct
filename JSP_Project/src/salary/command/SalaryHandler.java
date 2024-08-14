package salary.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import personnel.model.Employee;
import salary.model.EmployeeSalary;
import salary.model.Salary;
import salary.service.DeleteSalaryService;
import salary.service.InsertSalaryService;
import salary.service.SalaryRequest;
import salary.service.SelectAllEmployeeService;
import salary.service.SelectAllSalaryService;
import salary.service.SelectEmployeeSalaryService;
import salary.service.SelectEmployeeService;
import salary.service.SelectSalaryService;
import salary.service.UpdateSalaryService;

public class SalaryHandler implements CommandHandler {

	private static final String FORM_VIEW = "/WEB-INF/view/salary/SalaryListManagement.jsp";

	private SelectAllEmployeeService selectEmployeeService = new SelectAllEmployeeService();
	private InsertSalaryService insertSalaryService = new InsertSalaryService();
	private SelectAllSalaryService selectSalaryService = new SelectAllSalaryService();
	private SelectSalaryService selectsalary = new SelectSalaryService();
	private SelectEmployeeService selectemployee = new SelectEmployeeService();
	private SelectEmployeeSalaryService selectEmployeeSalary = new SelectEmployeeSalaryService();
	private DeleteSalaryService deleteSalaryService = new DeleteSalaryService();
	private UpdateSalaryService updateSalaryService = new UpdateSalaryService();

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
		try {
			// 모든 Employee 객체 정보를 가져옴
			List<Employee> employees = selectEmployeeService.selectAll();
			req.setAttribute("employees", employees);

			// 모든 Salary 객체 정보를 가져옴
			List<Salary> salaries = selectSalaryService.selectAll();
			req.setAttribute("salaries", salaries);

			List<EmployeeSalary> employeesalaries = selectEmployeeSalary.selectAll();
			req.setAttribute("employeesalaries", employeesalaries);

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("errors", "Failed to load employee or salary information.");
		}
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);

		try {
			List<EmployeeSalary> employeesalaries = selectEmployeeSalary.selectAll();
			req.setAttribute("employeesalaries", employeesalaries);

			

			// 저장　保存　保存バートンを押すとデータの値を挿入します。
			if (req.getParameter("button") != null) {

				if (req.getParameter("button").equals("保存")) {

					SalaryRequest sqlReq = new SalaryRequest(2024, Integer.parseInt(req.getParameter("sal_month")), "-",
							Integer.parseInt(req.getParameter("emp_no")), req.getParameter("sal_normal"),
							req.getParameter("sal_meal"), req.getParameter("sal_childcare"),
							req.getParameter("sal_job"), req.getParameter("sal_car"), req.getParameter("sal_long"),
							req.getParameter("sal_duty"), req.getParameter("sal_reward"), req.getParameter("sal_vac"),
							req.getParameter("ded_pen"), req.getParameter("ded_heal"),
							req.getParameter("ded_long_care"), req.getParameter("ded_hire"),
							req.getParameter("ded_income_tax"), req.getParameter("ded_local_tax"),
							req.getParameter("ded_funeral"), req.getParameter("sal_sum"), req.getParameter("ded_sum"),
							req.getParameter("sal_real"));

					insertSalaryService.insert(sqlReq);

					employeesalaries = selectEmployeeSalary.selectAll();
					req.setAttribute("employeesalaries", employeesalaries);

				}
			}

//			削除
			if (req.getParameter("button") != null) {

				if (req.getParameter("button").equals("削除")) {
					int empNo = Integer.parseInt(req.getParameter("emp_no"));
					int salMonth = Integer.parseInt(req.getParameter("sal_month"));
					deleteSalaryService.delete(empNo, salMonth);

					employeesalaries = selectEmployeeSalary.selectAll();
					req.setAttribute("employeesalaries", employeesalaries);

				}
			}

//			修正

			if (req.getParameter("button") != null) {

				if (req.getParameter("button").equals("修正")) {

					int emp_no = Integer.parseInt(req.getParameter("emp_no"));
					int sal_month = Integer.parseInt(req.getParameter("sal_month"));

					SalaryRequest salReq = new SalaryRequest(2024, Integer.parseInt(req.getParameter("sal_month")), "-",
							Integer.parseInt(req.getParameter("emp_no")), req.getParameter("sal_normal"),
							req.getParameter("sal_meal"), req.getParameter("sal_childcare"),
							req.getParameter("sal_job"), req.getParameter("sal_car"), req.getParameter("sal_long"),
							req.getParameter("sal_duty"), req.getParameter("sal_reward"), req.getParameter("sal_vac"),
							req.getParameter("ded_pen"), req.getParameter("ded_heal"),
							req.getParameter("ded_long_care"), req.getParameter("ded_hire"),
							req.getParameter("ded_income_tax"), req.getParameter("ded_local_tax"),
							req.getParameter("ded_funeral"), req.getParameter("sal_sum"), req.getParameter("ded_sum"),
							req.getParameter("sal_real"));
					updateSalaryService.update(emp_no, sal_month, salReq);
					employeesalaries = selectEmployeeSalary.selectAll();
					req.setAttribute("employeesalaries", employeesalaries);

				}
			}
			
			if (req.getParameter("emp_no") != null) {

				int emp_no = Integer.parseInt(req.getParameter("emp_no"));
				int sal_month = Integer.parseInt(req.getParameter("sal_month"));
				Salary sal = selectSalaryService.select_No_Mon(emp_no, sal_month);
				req.setAttribute("sal", sal);
				req.setAttribute("emp_no", emp_no);
				req.setAttribute("sal_month", sal_month);
			}

			List<Employee> employees = selectEmployeeService.selectAll();
			req.setAttribute("employees", employees);

			List<Salary> salaries = selectSalaryService.selectAll();
			req.setAttribute("salaries", salaries);
			return FORM_VIEW;
		} catch (Exception e) {
			e.printStackTrace();
			errors.put("insertFailed", Boolean.TRUE); // 삽입 실패 시 에러 설정
			return FORM_VIEW;
		}
	}


}
