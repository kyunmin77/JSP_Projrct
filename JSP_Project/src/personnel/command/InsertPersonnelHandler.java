package personnel.command;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import company.model.Company;
import company.service.CompanyRequest;
import mvc.command.CommandHandler;
import personnel.model.Appointment;
import personnel.model.Career;
import personnel.model.Education;
import personnel.model.Employee;
import personnel.model.Family;
import personnel.model.Insurance;
import personnel.model.Issuing;
import personnel.model.Language;
import personnel.model.License;
import personnel.model.Military;
import personnel.model.Retire;
import personnel.model.Reward;
import personnel.model.Study;
import personnel.service.InsertAppointService;
import personnel.service.InsertCareerService;
import personnel.service.InsertEducationService;
import personnel.service.InsertEmployeeService;
import personnel.service.InsertFamilyService;
import personnel.service.InsertInsuranceService;
import personnel.service.InsertIssuingService;
import personnel.service.InsertLanguageService;
import personnel.service.InsertLicenseService;
import personnel.service.InsertMilitaryService;
import personnel.service.InsertRetireService;
import personnel.service.InsertRewardService;
import personnel.service.InsertStudyService;
import personnel.service.SelectAppointService;
import personnel.service.SelectCareerService;
import personnel.service.SelectEducationService;
import personnel.service.SelectEmployeeService;
import personnel.service.SelectFamilyService;
import personnel.service.SelectInsuranceService;
import personnel.service.SelectIssuingService;
import personnel.service.SelectLanguageService;
import personnel.service.SelectLicenseService;
import personnel.service.SelectMilitaryService;
import personnel.service.SelectRetireService;
import personnel.service.SelectRewardService;
import personnel.service.SelectStudyService;

public class InsertPersonnelHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/setting/empRegister.jsp";
	
	private InsertAppointService insertAppointService = new InsertAppointService();
	private InsertCareerService insertCareerService = new InsertCareerService();
	private InsertEducationService insertEducationService = new InsertEducationService();
	private InsertEmployeeService insertEmployeeService = new InsertEmployeeService();
	private InsertFamilyService insertFamilyService = new InsertFamilyService();
	private InsertInsuranceService insertInsuranceService = new InsertInsuranceService();
	private InsertIssuingService insertIssuingService = new InsertIssuingService();
	private InsertLanguageService insertLanguageService = new InsertLanguageService();
	private InsertLicenseService insertLicenseService = new InsertLicenseService();
	private InsertMilitaryService insertMilitaryService = new InsertMilitaryService();
	private InsertRetireService insertRetireService = new InsertRetireService();
	private InsertRewardService insertRewardService = new InsertRewardService();
	private InsertStudyService insertStudyService = new InsertStudyService();
	
	private SelectAppointService selectAppointService = new SelectAppointService();
	private SelectCareerService selectCareerService = new SelectCareerService();
	private SelectEducationService selectEducationService = new SelectEducationService();
	private SelectEmployeeService selectEmployeeService = new SelectEmployeeService();
	private SelectFamilyService selectFamilyService = new SelectFamilyService();
	private SelectInsuranceService selectInsuranceService = new SelectInsuranceService();
	private SelectIssuingService selectIssuingService = new SelectIssuingService();
	private SelectLanguageService selectLanguageService = new SelectLanguageService();
	private SelectLicenseService selectLicenseService = new SelectLicenseService();
	private SelectMilitaryService selectMilitaryService = new SelectMilitaryService();
	private SelectRetireService selectRetireService = new SelectRetireService();
	private SelectRewardService selectRewardervice = new SelectRewardService();
	private SelectStudyService selectStudyService = new SelectStudyService();

	// DATE형 입출력이 있을때 사용하세요
	SimpleDateFormat fdate = new SimpleDateFormat("yyyy-MM-dd"); // 같은 형식으로 맞춰줌
	//Date founded_date;
	
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

		int emp_no = Integer.parseInt(req.getParameter("emp_no"));
		
		List<Appointment> app = selectAppointService.selectAll();
		List<Career> car;
		List<Education> edu;
		Employee emp;
		List<Family> fml;
		Insurance ins;
		Issuing isu;
		List<Language> lang;
		List<License> lcs;
		Military mil;
		Retire rtr;
		List<Reward> rwd;
		List<Study> std;
		

		if (!(company == null)) {
			req.setAttribute("company", company);
		}
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);

		try { 
			if (req.getParameter("founded_date") == null || req.getParameter("founded_date").isEmpty()) {
				founded_date = null;
			}else {
				founded_date = Date.valueOf(req.getParameter("founded_date"));
			}
			if (req.getParameter("calc_start") == null || req.getParameter("calc_start").isEmpty()) {
				calc_start = null;
			}else {
				calc_start = Date.valueOf(req.getParameter("calc_start"));
			}
			if (req.getParameter("calc_end") == null || req.getParameter("calc_end").isEmpty()) {
				calc_end = null;
			}else {
				calc_end = Date.valueOf(req.getParameter("calc_end"));
			}
			if (req.getParameter("payday") == null || req.getParameter("payday").isEmpty()) {
				payday = null;
			}else {
				payday = Date.valueOf(req.getParameter("payday"));
			}

			CompanyRequest cpnReq = new CompanyRequest(
					req.getParameter("cp_name"), 
					req.getParameter("ceo_job"),
					req.getParameter("ceo_name"), 
					req.getParameter("bs_num"), 
					req.getParameter("bs_regnum"),
					founded_date,
					req.getParameter("hp"), 
					req.getParameter("bs_post"), 
					req.getParameter("bs_addr"),
					req.getParameter("bs_phone"), 
					req.getParameter("bs_fax"), 
					req.getParameter("bs_type"),
					req.getParameter("cp_type"), 
					calc_start,
					calc_end,
					payday,
					req.getParameter("bs_bank"),
					req.getParameter("bs_account"), 
					req.getParameter("bs_acc_name"));

			cpnReq.validate(errors);

			if (!errors.isEmpty()) { // 에러가있으면 newArticleForm 주소를 반환
				return FORM_VIEW;
			}

			// 작성과 DB에 저장이 성공적으로 완료되면 저장
			Company company = insertService.insert(cpnReq);
			// company를 Request 영역에 저장
			req.setAttribute("company", company);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return FORM_VIEW; // 수정필요. 새창만들기? 리퀘스트에 올려서 팝업띄우기?
		// newArticleSuccess 주소를 반환
	}

}