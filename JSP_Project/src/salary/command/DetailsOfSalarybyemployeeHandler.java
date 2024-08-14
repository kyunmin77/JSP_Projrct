package salary.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import personnel.model.Employee;
import salary.model.EmployeeSalary;
import salary.model.Salary;
import salary.service.SelectAllEmployeeService;
import salary.service.SelectAllSalaryService;
import salary.service.SelectEmployeeSalaryService;
import salary.service.SelectMonthSalaryService;

public class DetailsOfSalarybyemployeeHandler implements CommandHandler {
	// 모든 직원을 조회하는 서비스 객체
	//　必要なサービスインスタンスを生成。
	private static final String FORM_VIEW = "/WEB-INF/view/salary/DetailsOfSalarybyemployee.jsp"; //社員別給与内訳ページ 모든 직원을 조회하는 뷰 페이지
	private static final String FORM_VIEW2 = "/WEB-INF/view/salary/DetailsOfSalarybyemployee2.jsp"; //社員別給与内訳ページ2　（変更確認ページ） 모든 직원을 조회하는 뷰 페이지
	private SelectAllEmployeeService selectAllemployeeSerivce = new SelectAllEmployeeService(); // 모든 직원을 조회하는 서비스 객체
	private SelectAllSalaryService selectAllsalaryService = new SelectAllSalaryService(); // 모든 급여 정보를 조회하는 서비스 객체
	private SelectEmployeeSalaryService selectemployeesalary = new SelectEmployeeSalaryService();
	private SelectMonthSalaryService selectMonthsalaryService = new SelectMonthSalaryService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
//			get要請なら　processForm（）移動。
			return processForm(req, res); // GET 요청 처리
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
//			post要請なprocessSubmit()移動。
			return processSubmit(req, res); // POST 요청 처리
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED); // 허용되지 않은 메서드에 대한 처리
			return null;
		}
	}
	
//	get要請　processForm（）移動。
	private String processForm(HttpServletRequest req, HttpServletResponse res) throws Exception {
		try {
			// 모든 Employee 객체 정보를 가져옴 全てのEmployee インスタンスを持ち込む
			List<Employee> employees = selectAllemployeeSerivce.selectAll();
			req.setAttribute("employees", employees);

			// 모든 Salary 객체 정보를 가져옴 全てのSalary インスタンスを持ち込む
			List<Salary> salaries = selectAllsalaryService.selectAll();
			req.setAttribute("salaries", salaries);
//			全てのEmployeeSalary　インスタンスを持ち込む
			List<EmployeeSalary> employeesalaries = selectemployeesalary.selectAll();
			req.setAttribute("employeesalaries", employeesalaries);

		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("errors", "Failed to load employee or salary information.");
		}
//		実行の後　 FORM_VIEWに変換
		return FORM_VIEW;
	}


	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);

		try {
			List<EmployeeSalary> employeesalaries = selectemployeesalary.selectAll();
			req.setAttribute("employeesalaries", employeesalaries);

			if (req.getParameter("sal_button") != null) {
				if (req.getParameter("sal_button").equals("照会")) {
					if (req.getParameter("sal_month") != null) {
				
						int sal_month = Integer.parseInt(req.getParameter("sal_month"));
						List<EmployeeSalary> sal_list = selectMonthsalaryService.selectEmployeeSalaryMonth(sal_month);

						req.setAttribute("sal_list", sal_list);
						req.setAttribute("picked_month", sal_month);
						return FORM_VIEW2;
					}
				}

				return FORM_VIEW;
			}

		} catch (Exception e) {
			e.printStackTrace();
			errors.put("insertFailed", Boolean.TRUE); // 삽입 실패 시 에러 설정
			return FORM_VIEW;
		}

		return FORM_VIEW;
	}
}
