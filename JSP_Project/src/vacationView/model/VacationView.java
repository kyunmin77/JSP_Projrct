package vacationView.model;

public class VacationView {

	private String emp_type;
	private int emp_no;
	private String name_kor;
	private String dept;
	private String job;
	private String vac_name;
	private int has_vac_days;
	private String vac_used;
	
	public VacationView(String emp_type, int emp_no, String name_kor, String dept, String job, String vac_name,
			int has_vac_days, String vac_used) {
		super();
		this.emp_type = emp_type;
		this.emp_no = emp_no;
		this.name_kor = name_kor;
		this.dept = dept;
		this.job = job;
		this.vac_name = vac_name;
		this.has_vac_days = has_vac_days;
		this.vac_used = vac_used;
	}

	public String getEmp_type() {
		return emp_type;
	}

	public void setEmp_type(String emp_type) {
		this.emp_type = emp_type;
	}

	public int getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(int emp_no) {
		this.emp_no = emp_no;
	}

	public String getName_kor() {
		return name_kor;
	}

	public void setName_kor(String name_kor) {
		this.name_kor = name_kor;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getVac_name() {
		return vac_name;
	}

	public void setVac_name(String vac_name) {
		this.vac_name = vac_name;
	}

	public int getHas_vac_days() {
		return has_vac_days;
	}

	public void setHas_vac_days(int has_vac_days) {
		this.has_vac_days = has_vac_days;
	}

	public String getVac_used() {
		return vac_used;
	}

	public void setVac_used(String vac_used) {
		this.vac_used = vac_used;
	}
    
	
}