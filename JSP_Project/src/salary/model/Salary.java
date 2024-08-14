package salary.model;

public class Salary {
	private	int sal_year;// 귀속 연 帰属年
	private int sal_month; // 귀속 월 帰属月
	private String sal_deg; // 급여차수 給与次数
	public int emp_no;
	private String sal_normal; // 기본급 基本給
	private String sal_meal; // 식비 食費
	private String sal_childcare;// 보육수당 保育手当
	private String sal_job;// --직책수당 職責手当
	private String sal_car;// --차량유지비 車両維持費
	private String sal_long;// --근속수당 勤続手当

	private String sal_duty;// VARCHAR2(20),--당직수당 当直手当

	private String sal_reward;// VARCHAR2(20),--상여금 賞与金

	private String sal_vac;// VARCHAR2(20),--휴일수당 休日手当

	private String ded_pen;// VARCHAR2(20),--국민연금 国民年金

	private String ded_heal;// VARCHAR2(20),--건강보험 健康保険

	private String ded_long_care;// VARCHAR2(20),--장기요양보험 長期療養保険

	private String ded_hire;// VARCHAR2(20),--고용보험 雇用保険

	private String ded_income_tax;// VARCHAR2(20),--소득세 所得税

	private String ded_local_tax;// VARCHAR2(20),--지방소득세 地方所得税

	private String ded_funeral;// VARCHAR2(20),--상조회비 互助会費

	private String sal_sum;// VARCHAR2(20),--지급총액 支給総額

	private String ded_sum;// --공제총액 控除総額
	private String sal_real;// --실지급액 手取り額
	public Salary(int sal_year, int sal_month, String sal_deg, int emp_no, String sal_normal, String sal_meal,
			String sal_childcare, String sal_job, String sal_car, String sal_long, String sal_duty, String sal_reward,
			String sal_vac, String ded_pen, String ded_heal, String ded_long_care, String ded_hire,
			String ded_income_tax, String ded_local_tax, String ded_funeral, String sal_sum, String ded_sum,
			String sal_real) {
		super();
		this.sal_year = sal_year;
		this.sal_month = sal_month;
		this.sal_deg = sal_deg;
		this.emp_no = emp_no;
		this.sal_normal = sal_normal;
		this.sal_meal = sal_meal;
		this.sal_childcare = sal_childcare;
		this.sal_job = sal_job;
		this.sal_car = sal_car;
		this.sal_long = sal_long;
		this.sal_duty = sal_duty;
		this.sal_reward = sal_reward;
		this.sal_vac = sal_vac;
		this.ded_pen = ded_pen;
		this.ded_heal = ded_heal;
		this.ded_long_care = ded_long_care;
		this.ded_hire = ded_hire;
		this.ded_income_tax = ded_income_tax;
		this.ded_local_tax = ded_local_tax;
		this.ded_funeral = ded_funeral;
		this.sal_sum = sal_sum;
		this.ded_sum = ded_sum;
		this.sal_real = sal_real;
	}
	public int getSal_year() {
		return sal_year;
	}
	public void setSal_year(int sal_year) {
		this.sal_year = sal_year;
	}
	public int getSal_month() {
		return sal_month;
	}
	public void setSal_month(int sal_month) {
		this.sal_month = sal_month;
	}
	public String getSal_deg() {
		return sal_deg;
	}
	public void setSal_deg(String sal_deg) {
		this.sal_deg = sal_deg;
	}
	public int getEmp_no() {
		return emp_no;
	}
	public void setEmp_no(int emp_no) {
		this.emp_no = emp_no;
	}
	public String getSal_normal() {
		return sal_normal;
	}
	public void setSal_normal(String sal_normal) {
		this.sal_normal = sal_normal;
	}
	public String getSal_meal() {
		return sal_meal;
	}
	public void setSal_meal(String sal_meal) {
		this.sal_meal = sal_meal;
	}
	public String getSal_childcare() {
		return sal_childcare;
	}
	public void setSal_childcare(String sal_childcare) {
		this.sal_childcare = sal_childcare;
	}
	public String getSal_job() {
		return sal_job;
	}
	public void setSal_job(String sal_job) {
		this.sal_job = sal_job;
	}
	public String getSal_car() {
		return sal_car;
	}
	public void setSal_car(String sal_car) {
		this.sal_car = sal_car;
	}
	public String getSal_long() {
		return sal_long;
	}
	public void setSal_long(String sal_long) {
		this.sal_long = sal_long;
	}
	public String getSal_duty() {
		return sal_duty;
	}
	public void setSal_duty(String sal_duty) {
		this.sal_duty = sal_duty;
	}
	public String getSal_reward() {
		return sal_reward;
	}
	public void setSal_reward(String sal_reward) {
		this.sal_reward = sal_reward;
	}
	public String getSal_vac() {
		return sal_vac;
	}
	public void setSal_vac(String sal_vac) {
		this.sal_vac = sal_vac;
	}
	public String getDed_pen() {
		return ded_pen;
	}
	public void setDed_pen(String ded_pen) {
		this.ded_pen = ded_pen;
	}
	public String getDed_heal() {
		return ded_heal;
	}
	public void setDed_heal(String ded_heal) {
		this.ded_heal = ded_heal;
	}
	public String getDed_long_care() {
		return ded_long_care;
	}
	public void setDed_long_care(String ded_long_care) {
		this.ded_long_care = ded_long_care;
	}
	public String getDed_hire() {
		return ded_hire;
	}
	public void setDed_hire(String ded_hire) {
		this.ded_hire = ded_hire;
	}
	public String getDed_income_tax() {
		return ded_income_tax;
	}
	public void setDed_income_tax(String ded_income_tax) {
		this.ded_income_tax = ded_income_tax;
	}
	public String getDed_local_tax() {
		return ded_local_tax;
	}
	public void setDed_local_tax(String ded_local_tax) {
		this.ded_local_tax = ded_local_tax;
	}
	public String getDed_funeral() {
		return ded_funeral;
	}
	public void setDed_funeral(String ded_funeral) {
		this.ded_funeral = ded_funeral;
	}
	public String getSal_sum() {
		return sal_sum;
	}
	public void setSal_sum(String sal_sum) {
		this.sal_sum = sal_sum;
	}
	public String getDed_sum() {
		return ded_sum;
	}
	public void setDed_sum(String ded_sum) {
		this.ded_sum = ded_sum;
	}
	public String getSal_real() {
		return sal_real;
	}
	public void setSal_real(String sal_real) {
		this.sal_real = sal_real;
	}

	
}
