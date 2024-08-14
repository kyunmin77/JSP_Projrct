package vacationView.model;

import java.util.Date;

public class VacationViewJoin {

	private String emp_type;
	private int emp_no;
	private String name_kor;
	private String dept;
	private String job;
	private String vac_name;
	private int has_vac_days;
	private String vac_used;
	private Date atth_inserted;
	private String atth_name;
	private Date atth_start;
	private Date atth_end;
	private int atth_days;
    private String atth_note;
    
	public VacationViewJoin(String emp_type, int emp_no, String name_kor, String dept, String job, String vac_name,
			int has_vac_days, String vac_used, Date atth_inserted, String atth_name, Date atth_start, Date atth_end,
			int atth_days, String atth_note) {
		super();
		this.emp_type = emp_type;
		this.emp_no = emp_no;
		this.name_kor = name_kor;
		this.dept = dept;
		this.job = job;
		this.vac_name = vac_name;
		this.has_vac_days = has_vac_days;
		this.vac_used = vac_used;
		this.atth_inserted = atth_inserted;
		this.atth_name = atth_name;
		this.atth_start = atth_start;
		this.atth_end = atth_end;
		this.atth_days = atth_days;
		this.atth_note = atth_note;
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

	public Date getAtth_inserted() {
		return atth_inserted;
	}

	public void setAtth_inserted(Date atth_inserted) {
		this.atth_inserted = atth_inserted;
	}

	public String getAtth_name() {
		return atth_name;
	}

	public void setAtth_name(String atth_name) {
		this.atth_name = atth_name;
	}

	public Date getAtth_start() {
		return atth_start;
	}

	public void setAtth_start(Date atth_start) {
		this.atth_start = atth_start;
	}

	public Date getAtth_end() {
		return atth_end;
	}

	public void setAtth_end(Date atth_end) {
		this.atth_end = atth_end;
	}

	public int getAtth_days() {
		return atth_days;
	}

	public void setAtth_days(int atth_days) {
		this.atth_days = atth_days;
	}

	public String getAtth_note() {
		return atth_note;
	}

	public void setAtth_note(String atth_note) {
		this.atth_note = atth_note;
	}

}