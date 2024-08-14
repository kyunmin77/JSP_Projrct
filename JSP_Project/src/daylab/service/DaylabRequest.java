package daylab.service;

import java.sql.Date;
import java.util.Map;

public class DaylabRequest {
	
	private int emp_no;
	private Date datth_date;
	private String datth_name;
	private String datth_pay;
	private String datth_payrate;
	private String datth_payment;
	private String datth_income_tax;
	private String datth_local_tax;
	private String datth_realpayment;
	
	public DaylabRequest(int emp_no, Date datth_date, String datth_name, String datth_pay, String datth_payrate,
			String datth_payment, String datth_income_tax, String datth_local_tax, String datth_realpayment) {
		super();
		this.emp_no = emp_no;
		this.datth_date = datth_date;
		this.datth_name = datth_name;
		this.datth_pay = datth_pay;
		this.datth_payrate = datth_payrate;
		this.datth_payment = datth_payment;
		this.datth_income_tax = datth_income_tax;
		this.datth_local_tax = datth_local_tax;
		this.datth_realpayment = datth_realpayment;
	}
	

	public int getEmp_no() {
		return emp_no;
	}

	public void setEmp_no(int emp_no) {
		this.emp_no = emp_no;
	}


	public Date getDatth_date() {
		return datth_date;
	}

	public void setDatth_date(Date datth_date) {
		this.datth_date = datth_date;
	}


	public String getDatth_name() {
		return datth_name;
	}

	public void setDatth_name(String datth_name) {
		this.datth_name = datth_name;
	}


	public String getDatth_pay() {
		return datth_pay;
	}

	public void setDatth_pay(String datth_pay) {
		this.datth_pay = datth_pay;
	}


	public String getDatth_payrate() {
		return datth_payrate;
	}

	public void setDatth_payrate(String datth_payrate) {
		this.datth_payrate = datth_payrate;
	}


	public String getDatth_payment() {
		return datth_payment;
	}

	public void setDatth_payment(String datth_payment) {
		this.datth_payment = datth_payment;
	}


	public String getDatth_income_tax() {
		return datth_income_tax;
	}

	public void setDatth_income_tax(String datth_income_tax) {
		this.datth_income_tax = datth_income_tax;
	}


	public String getDatth_local_tax() {
		return datth_local_tax;
	}

	public void setDatth_local_tax(String datth_local_tax) {
		this.datth_local_tax = datth_local_tax;
	}


	public String getDatth_realpayment() {
		return datth_realpayment;
	}

	public void setDatth_realpayment(String datth_realpayment) {
		this.datth_realpayment = datth_realpayment;
	}


	public void validate(Map<String, Boolean> errors) {
		// 아이디,이름등의 정보가 입력되었는지, password 와 confirmPassword가 일치하지 확인하여
		// 문제가 있을시 errors 맵에 키<String>과 함께 True를 저장하는 매서드
	
		
	}
	
	private void checkEmpty(Map<String, Boolean> errors, String value, String fieldName) {
		if(value == null || value.isEmpty())
			errors.put(fieldName, Boolean.TRUE);
	}
	private void checkEmpty(Map<String, Boolean> errors, Date value, String fieldName) {
		if(value == null || value.toString().isEmpty())
			errors.put(fieldName, Boolean.TRUE);
	}

}