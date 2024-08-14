package Issuing.model;

import java.sql.Date;

public class IssuingSetting {
	private int isu_num;
	private String isu_led;
	private String isu_pur;
	private String emp_type;
	private String name_kor;
	private String dept;
	private String job;
	private Date isu_date;
	
	public IssuingSetting(int isu_num, String isu_led, String isu_pur, String emp_type, String name_kor, String dept,
			String job, Date isu_date) {
		super();
		this.isu_num = isu_num;
		this.isu_led = isu_led;
		this.isu_pur = isu_pur;
		this.emp_type = emp_type;
		this.name_kor = name_kor;
		this.dept = dept;
		this.job = job;
		this.isu_date = isu_date;
	}

	public int getIsu_num() {
		return isu_num;
	}

	public void setIsu_num(int isu_num) {
		this.isu_num = isu_num;
	}

	public String getIsu_led() {
		return isu_led;
	}

	public void setIsu_led(String isu_led) {
		this.isu_led = isu_led;
	}

	public String getIsu_pur() {
		return isu_pur;
	}

	public void setIsu_pur(String isu_pur) {
		this.isu_pur = isu_pur;
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

	public Date getIsu_date() {
		return isu_date;
	}

	public void setIsu_date(Date isu_date) {
		this.isu_date = isu_date;
	}
	
}
