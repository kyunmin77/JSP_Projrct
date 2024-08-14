package retire.model;

import java.util.Date;

public class RetirePayRequest {

	private int emp_no; //-
	private String ret_calc_type_mid; //퇴직구분(중간정산)-    //parameterName 은 ret_calc_type
    private String ret_calc_type_retire; //퇴직구분(퇴직정산)- //parameterName 은 ret_calc_type

	
	//employee 테이블
	private String emp_type; // 정규직, 일용직
	private String name_kor;
	private String job;
	private String dept;
	private String state; // 재직, 퇴직
	private Date hired_date;
	private Date retired_date;
	private int years_service; // 근속연수
	private int days_service; // 근속일수

	
	//retire_payment 테이블
	private Date ret_other_date; // 기타과세소득지급일-
	private String ret_other_name; // 기타과세소득지급항목-
	private int ret_other_cost; // 기타과세소득금액-
	private int ret_prize; // 퇴직위로금-
	private int ret_notice; // 해고예고수당-
	private int ret_tax_free_pay; // 비과세퇴직급여-
	private int ret_ad_pay; // 기납부세액-
	private int ret_tax_free; // 세액공제-

	private int ret_3mon_sum; // 3개월총계-
	private int ret_day_avg; // 1일평균임금-
	private int ret_pay; // 퇴직소득
	private int ret_year; // 퇴직일과세연도
	private int ret_tax; // 산출세액
	private int ret_income_tax;		//퇴직소득세
	private int ret_local_tax; 	//지방소득세
	private int ret_realpay; // 실수령액
	private String how_to_pay; // 지급방법
	private Date ret_payday; // 지급일

	public RetirePayRequest() {
	}

	public RetirePayRequest(int emp_no, String ret_calc_type_mid, String ret_calc_type_retire, String emp_type,
			String name_kor, String job, String dept, String state, Date hired_date, Date retired_date,
			int years_service, int days_service, Date ret_other_date, String ret_other_name, int ret_other_cost,
			int ret_prize, int ret_notice, int ret_tax_free_pay, int ret_ad_pay, int ret_tax_free, int ret_3mon_sum,
			int ret_day_avg, int ret_pay, int ret_year, int ret_tax, int ret_income_tax, int ret_local_tax,
			int ret_realpay, String how_to_pay, Date ret_payday) {
		super();
		this.emp_no = emp_no;
		this.ret_calc_type_mid = ret_calc_type_mid;
		this.ret_calc_type_retire = ret_calc_type_retire;
		this.emp_type = emp_type;
		this.name_kor = name_kor;
		this.job = job;
		this.dept = dept;
		this.state = state;
		this.hired_date = hired_date;
		this.retired_date = retired_date;
		this.years_service = years_service;
		this.days_service = days_service;
		this.ret_other_date = ret_other_date;
		this.ret_other_name = ret_other_name;
		this.ret_other_cost = ret_other_cost;
		this.ret_prize = ret_prize;
		this.ret_notice = ret_notice;
		this.ret_tax_free_pay = ret_tax_free_pay;
		this.ret_ad_pay = ret_ad_pay;
		this.ret_tax_free = ret_tax_free;
		this.ret_3mon_sum = ret_3mon_sum;
		this.ret_day_avg = ret_day_avg;
		this.ret_pay = ret_pay;
		this.ret_year = ret_year;
		this.ret_tax = ret_tax;
		this.ret_income_tax = ret_income_tax;
		this.ret_local_tax = ret_local_tax;
		this.ret_realpay = ret_realpay;
		this.how_to_pay = how_to_pay;
		this.ret_payday = ret_payday;
	}

	public int getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(int emp_no) {
		this.emp_no = emp_no;
	}

	public String getRet_calc_type_mid() {
		return ret_calc_type_mid;
	}

	public void setRet_calc_type_mid(String ret_calc_type_mid) {
		this.ret_calc_type_mid = ret_calc_type_mid;
	}

	public String getRet_calc_type_retire() {
		return ret_calc_type_retire;
	}

	public void setRet_calc_type_retire(String ret_calc_type_retire) {
		this.ret_calc_type_retire = ret_calc_type_retire;
	}

	public String getEmp_type() {
		return emp_type;
	}

	public void setEmp_type(String emp_type) {
		this.emp_type = emp_type;
	}

	public String getName_kor() {
		return name_kor;
	}

	public void setName_kor(String name_kor) {
		this.name_kor = name_kor;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Date getHired_date() {
		return hired_date;
	}

	public void setHired_date(Date hired_date) {
		this.hired_date = hired_date;
	}

	public Date getRetired_date() {
		return retired_date;
	}

	public void setRetired_date(Date retired_date) {
		this.retired_date = retired_date;
	}

	public int getYears_service() {
		return years_service;
	}

	public void setYears_service(int years_service) {
		this.years_service = years_service;
	}

	public int getDays_service() {
		return days_service;
	}

	public void setDays_service(int days_service) {
		this.days_service = days_service;
	}

	public Date getRet_other_date() {
		return ret_other_date;
	}

	public void setRet_other_date(Date ret_other_date) {
		this.ret_other_date = ret_other_date;
	}

	public String getRet_other_name() {
		return ret_other_name;
	}

	public void setRet_other_name(String ret_other_name) {
		this.ret_other_name = ret_other_name;
	}

	public int getRet_other_cost() {
		return ret_other_cost;
	}

	public void setRet_other_cost(int ret_other_cost) {
		this.ret_other_cost = ret_other_cost;
	}

	public int getRet_prize() {
		return ret_prize;
	}

	public void setRet_prize(int ret_prize) {
		this.ret_prize = ret_prize;
	}

	public int getRet_notice() {
		return ret_notice;
	}

	public void setRet_notice(int ret_notice) {
		this.ret_notice = ret_notice;
	}

	public int getRet_tax_free_pay() {
		return ret_tax_free_pay;
	}

	public void setRet_tax_free_pay(int ret_tax_free_pay) {
		this.ret_tax_free_pay = ret_tax_free_pay;
	}

	public int getRet_ad_pay() {
		return ret_ad_pay;
	}

	public void setRet_ad_pay(int ret_ad_pay) {
		this.ret_ad_pay = ret_ad_pay;
	}

	public int getRet_tax_free() {
		return ret_tax_free;
	}

	public void setRet_tax_free(int ret_tax_free) {
		this.ret_tax_free = ret_tax_free;
	}

	public int getRet_3mon_sum() {
		return ret_3mon_sum;
	}

	public void setRet_3mon_sum(int ret_3mon_sum) {
		this.ret_3mon_sum = ret_3mon_sum;
	}

	public int getRet_day_avg() {
		return ret_day_avg;
	}

	public void setRet_day_avg(int ret_day_avg) {
		this.ret_day_avg = ret_day_avg;
	}

	public int getRet_pay() {
		return ret_pay;
	}

	public void setRet_pay(int ret_pay) {
		this.ret_pay = ret_pay;
	}

	public int getRet_year() {
		return ret_year;
	}

	public void setRet_year(int ret_year) {
		this.ret_year = ret_year;
	}

	public int getRet_tax() {
		return ret_tax;
	}

	public void setRet_tax(int ret_tax) {
		this.ret_tax = ret_tax;
	}

	public int getRet_income_tax() {
		return ret_income_tax;
	}

	public void setRet_income_tax(int ret_income_tax) {
		this.ret_income_tax = ret_income_tax;
	}

	public int getRet_local_tax() {
		return ret_local_tax;
	}

	public void setRet_local_tax(int ret_local_tax) {
		this.ret_local_tax = ret_local_tax;
	}

	public int getRet_realpay() {
		return ret_realpay;
	}

	public void setRet_realpay(int ret_realpay) {
		this.ret_realpay = ret_realpay;
	}

	public String getHow_to_pay() {
		return how_to_pay;
	}

	public void setHow_to_pay(String how_to_pay) {
		this.how_to_pay = how_to_pay;
	}

	public Date getRet_payday() {
		return ret_payday;
	}

	public void setRet_payday(Date ret_payday) {
		this.ret_payday = ret_payday;
	}

	@Override
	public String toString() {
		return "RetirePayRequest [emp_no=" + emp_no + ", ret_calc_type_mid=" + ret_calc_type_mid
				+ ", ret_calc_type_retire=" + ret_calc_type_retire + ", emp_type=" + emp_type + ", name_kor=" + name_kor
				+ ", job=" + job + ", dept=" + dept + ", state=" + state + ", hired_date=" + hired_date
				+ ", retired_date=" + retired_date + ", years_service=" + years_service + ", days_service="
				+ days_service + ", ret_other_date=" + ret_other_date + ", ret_other_name=" + ret_other_name
				+ ", ret_other_cost=" + ret_other_cost + ", ret_prize=" + ret_prize + ", ret_notice=" + ret_notice
				+ ", ret_tax_free_pay=" + ret_tax_free_pay + ", ret_ad_pay=" + ret_ad_pay + ", ret_tax_free="
				+ ret_tax_free + ", ret_3mon_sum=" + ret_3mon_sum + ", ret_day_avg=" + ret_day_avg + ", ret_pay="
				+ ret_pay + ", ret_year=" + ret_year + ", ret_tax=" + ret_tax + ", ret_income_tax=" + ret_income_tax
				+ ", ret_local_tax=" + ret_local_tax + ", ret_realpay=" + ret_realpay + ", how_to_pay=" + how_to_pay
				+ ", ret_payday=" + ret_payday + "]";
	}
	

}
