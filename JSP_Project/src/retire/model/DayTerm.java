package retire.model;

import java.util.Date;

public class DayTerm {

	private Date prev3_first;
	private Date prev3_last;
	private int prev3_days;
	
	private Date prev2_first;
	private Date prev2_last;
	private int prev2_days;
	
	private Date prev1_first;
	private Date prev1_last;
	private int prev1_days;
	
	private Date this_first;
	private Date this_last;
	private int this_days;
	
	public DayTerm() {
	}

	public DayTerm(Date prev3_first, Date prev3_last, int prev3_days, Date prev2_first, Date prev2_last, int prev2_days,
			Date prev1_first, Date prev1_last, int prev1_days, Date this_first, Date this_last, int this_days) {
		super();
		this.prev3_first = prev3_first;
		this.prev3_last = prev3_last;
		this.prev3_days = prev3_days;
		this.prev2_first = prev2_first;
		this.prev2_last = prev2_last;
		this.prev2_days = prev2_days;
		this.prev1_first = prev1_first;
		this.prev1_last = prev1_last;
		this.prev1_days = prev1_days;
		this.this_first = this_first;
		this.this_last = this_last;
		this.this_days = this_days;
	}

	public Date getPrev3_first() {
		return prev3_first;
	}

	public void setPrev3_first(Date prev3_first) {
		this.prev3_first = prev3_first;
	}

	public Date getPrev3_last() {
		return prev3_last;
	}

	public void setPrev3_last(Date prev3_last) {
		this.prev3_last = prev3_last;
	}

	public int getPrev3_days() {
		return prev3_days;
	}

	public void setPrev3_days(int prev3_days) {
		this.prev3_days = prev3_days;
	}

	public Date getPrev2_first() {
		return prev2_first;
	}

	public void setPrev2_first(Date prev2_first) {
		this.prev2_first = prev2_first;
	}

	public Date getPrev2_last() {
		return prev2_last;
	}

	public void setPrev2_last(Date prev2_last) {
		this.prev2_last = prev2_last;
	}

	public int getPrev2_days() {
		return prev2_days;
	}

	public void setPrev2_days(int prev2_days) {
		this.prev2_days = prev2_days;
	}

	public Date getPrev1_first() {
		return prev1_first;
	}

	public void setPrev1_first(Date prev1_first) {
		this.prev1_first = prev1_first;
	}

	public Date getPrev1_last() {
		return prev1_last;
	}

	public void setPrev1_last(Date prev1_last) {
		this.prev1_last = prev1_last;
	}

	public int getPrev1_days() {
		return prev1_days;
	}

	public void setPrev1_days(int prev1_days) {
		this.prev1_days = prev1_days;
	}

	public Date getThis_first() {
		return this_first;
	}

	public void setThis_first(Date this_first) {
		this.this_first = this_first;
	}

	public Date getThis_last() {
		return this_last;
	}

	public void setThis_last(Date this_last) {
		this.this_last = this_last;
	}

	public int getThis_days() {
		return this_days;
	}

	public void setThis_days(int this_days) {
		this.this_days = this_days;
	}

	@Override
	public String toString() {
		return "DayTerm [prev3_first=" + prev3_first + ", prev3_last=" + prev3_last + ", prev3_days=" + prev3_days
				+ ", prev2_first=" + prev2_first + ", prev2_last=" + prev2_last + ", prev2_days=" + prev2_days
				+ ", prev1_first=" + prev1_first + ", prev1_last=" + prev1_last + ", prev1_days=" + prev1_days
				+ ", this_first=" + this_first + ", this_last=" + this_last + ", this_days=" + this_days + "]";
	}

	
	
	
	
	
}
