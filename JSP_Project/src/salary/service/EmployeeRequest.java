package salary.service;

import java.sql.Date;
import java.util.Map;

public class EmployeeRequest {
    private	int emp_no;
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
    private String account;

    // 기본 생성자 추가
    public EmployeeRequest() {}

    // Getters and Setters
    public int getEmp_no() {
        return emp_no;
    }

    public void setEmp_no(int emp_no) {
        this.emp_no = emp_no;
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

    public String getName_eng() {
        return name_eng;
    }

    public void setName_eng(String name_eng) {
        this.name_eng = name_eng;
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

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getId_number() {
        return id_number;
    }

    public void setId_number(String id_number) {
        this.id_number = id_number;
    }

    public String getPost_code() {
        return post_code;
    }

    public void setPost_code(String post_code) {
        this.post_code = post_code;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getHome_number() {
        return home_number;
    }

    public void setHome_number(String home_number) {
        this.home_number = home_number;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSns() {
        return sns;
    }

    public void setSns(String sns) {
        this.sns = sns;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }
    
  
    public void validate(Map<String, Boolean> errors) {
    	checkInteger(errors, Integer.toString(emp_no), "emp_no");
        checkEmpty(errors, emp_type, "emp_type");
        checkEmpty(errors, name_kor, "name_kor");
  
        checkEmpty(errors, dept, "dept");
        checkEmpty(errors, job, "job");
  
    }

    private void checkEmpty(Map<String, Boolean> errors, String value, String fieldName) {
        if (value == null || value.isEmpty()) {
            errors.put(fieldName, Boolean.TRUE);
        }
    }
    private void checkInteger(Map<String, Boolean> errors, String value, String fieldName) {
        try {
            Integer.parseInt(value);
        } catch (NumberFormatException e) {
            errors.put(fieldName, Boolean.TRUE);
        }
    }
}
