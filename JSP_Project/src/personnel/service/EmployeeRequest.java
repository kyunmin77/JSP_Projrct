package personnel.service;

import java.sql.Date;

public class EmployeeRequest {
	private int emp_no;
	private String emp_type;
	private String name_kor;
	private String name_eng;
	private Date hired_date;
	private Date retired_date;
	private String dept;
	private String job;
	private String state;
	private String nationality;
	private String id_number;
	private String post_code;
	private String addr;
	private String home_number;
	private String phone;
	private String email;
	private String sns;
	private String note;
	private String bank;
	private String acoount;
	
	public EmployeeRequest(int emp_no, String emp_type, String name_kor, String name_eng, Date hired_date,
			Date retired_date, String dept, String job, String state, String nationality, String id_number,
			String post_code, String addr, String home_number, String phone, String email, String sns, String note,
			String bank, String acoount) {
		super();
		this.emp_no = emp_no;
		this.emp_type = emp_type;
		this.name_kor = name_kor;
		this.name_eng = name_eng;
		this.hired_date = hired_date;
		this.retired_date = retired_date;
		this.dept = dept;
		this.job = job;
		this.state = state;
		this.nationality = nationality;
		this.id_number = id_number;
		this.post_code = post_code;
		this.addr = addr;
		this.home_number = home_number;
		this.phone = phone;
		this.email = email;
		this.sns = sns;
		this.note = note;
		this.bank = bank;
		this.acoount = acoount;
	}

	public int getEmp_no() {
		return emp_no;
	}

	public String getEmp_type() {
		return emp_type;
	}

	public String getName_kor() {
		return name_kor;
	}

	public String getName_eng() {
		return name_eng;
	}

	public Date getHired_date() {
		return hired_date;
	}

	public Date getRetired_date() {
		return retired_date;
	}

	public String getDept() {
		return dept;
	}

	public String getJob() {
		return job;
	}

	public String getState() {
		return state;
	}

	public String getNationality() {
		return nationality;
	}

	public String getId_number() {
		return id_number;
	}

	public String getPost_code() {
		return post_code;
	}

	public String getAddr() {
		return addr;
	}

	public String getHome_number() {
		return home_number;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getSns() {
		return sns;
	}

	public String getNote() {
		return note;
	}

	public String getBank() {
		return bank;
	}

	public String getAcoount() {
		return acoount;
	}
	
	

}
