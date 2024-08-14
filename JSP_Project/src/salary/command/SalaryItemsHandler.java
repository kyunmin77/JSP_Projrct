package salary.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import personnel.model.Employee;
import salary.model.Salary;
import salary.service.SelectAllEmployeeService;
import salary.service.SelectSalaryService;

public class SalaryItemsHandler implements CommandHandler {

    private static final String FORM_VIEW = "/WEB-INF/view/salary/SalaryItemsList.jsp"; // JSP 파일 경로 상수
    // 서비스 객체 생성
    private SelectSalaryService salaryService = new SelectSalaryService();
    private SelectAllEmployeeService employeeService = new SelectAllEmployeeService();

    @Override
    public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
        // 요청 메서드에 따라 GET 또는 POST 방식 처리
        if (req.getMethod().equalsIgnoreCase("GET")) {
            return processGet(req, res);
        } else if (req.getMethod().equalsIgnoreCase("POST")) {
            return processPost(req, res);
        } else {
            // 지원하지 않는 메서드에 대해 에러 응답
            res.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
            return null;
        }
    }

    // GET 방식 요청 처리
    private String processGet(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        List<Employee> employees = employeeService.selectAll(); // 모든 직원 정보를 조회
        req.setAttribute("employeeList", employees); // 조회한 직원 정보를 요청 속성에 설정
        return FORM_VIEW; // JSP 파일 경로 반환
    }

    // POST 방식 요청 처리
    private String processPost(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        // 요청 파라미터에서 기간 및 항목 값 가져오기
        String startPeriod = req.getParameter("startPeriod");
        String endPeriod = req.getParameter("endPeriod");
        String salaryItem = req.getParameter("salaryItem");

        List<Salary> salaries = null;
        // 급여 데이터를 기간 및 항목에 따라 조회
        if (startPeriod != null && endPeriod != null && salaryItem != null) {
            salaries = salaryService.getSalariesByPeriodAndItem(startPeriod, endPeriod, salaryItem);
        }
        req.setAttribute("salaryList", salaries); // 조회한 급여 정보를 요청 속성에 설정
        
        // 사원 목록을 조회하여 요청에 설정
        List<Employee> employees = employeeService.selectAll();
        req.setAttribute("employeeList", employees);

        return FORM_VIEW; // JSP 파일 경로 반환
    }
}
