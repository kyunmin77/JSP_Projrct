package salary.model;

import java.sql.Date;

public class Company {
	private String cp_name;//    , --상호 商号
	private String	ceo_job;//    , --대표자 직급	代表者職業
	private String ceo_name;//    , --대표자	代表者
	private String bs_num;//   PRIMARY KEY, --사업자번호	事業者番号
	private String bs_regnum;//  , --법인등록번호	法人登録番号
	private Date founded_date;// date, --설립일	設立日
	private String hp;//  , --홈페이지	ホームページ
	private String bs_post;//    , --사업장 우편번호	事業場郵便番号
	private String bs_addr;//    , --사업장 주소	事業場　住所
	private String bs_phone;//    , --사업장 전화번호	事業場	電話番号
	private String bs_fax;//  , --사업장 팩스번호	事業場	FAX番号
	private String bs_type;//  , --업태	業態
	private String cp_type;//  , --종목	種目
	private Date calc_start;// date;, --급여산정기간(시작)	給与算定期間（始まり）
	private Date calc_end;// date;//, --급여산정기간(끝)	給与算定期間（終わり）
	private Date payday;//, --급여지급일 給与支給日
	private String bs_bank;//  , --금융기관	金融機関
	private String bs_account;//  , --계좌번호	口座番号
	private String bs_acc_name;//  ); --예금주	預金主
	
	public Company(String cp_name, String ceo_job, String ceo_name, String bs_num, String bs_regnum, Date founded_date,
			String hp, String bs_post, String bs_addr, String bs_phone, String bs_fax, String bs_type, String cp_type,
			Date calc_start, Date calc_end, Date payday, String bs_bank, String bs_account, String bs_acc_name) {
		super();
		this.cp_name = cp_name;
		this.ceo_job = ceo_job;
		this.ceo_name = ceo_name;
		this.bs_num = bs_num;
		this.bs_regnum = bs_regnum;
		this.founded_date = founded_date;
		this.hp = hp;
		this.bs_post = bs_post;
		this.bs_addr = bs_addr;
		this.bs_phone = bs_phone;
		this.bs_fax = bs_fax;
		this.bs_type = bs_type;
		this.cp_type = cp_type;
		this.calc_start = calc_start;
		this.calc_end = calc_end;
		this.payday = payday;
		this.bs_bank = bs_bank;
		this.bs_account = bs_account;
		this.bs_acc_name = bs_acc_name;
	}

	public String getCp_name() {
		return cp_name;
	}

	public void setCp_name(String cp_name) {
		this.cp_name = cp_name;
	}

	public String getCeo_job() {
		return ceo_job;
	}

	public void setCeo_job(String ceo_job) {
		this.ceo_job = ceo_job;
	}

	public String getCeo_name() {
		return ceo_name;
	}

	public void setCeo_name(String ceo_name) {
		this.ceo_name = ceo_name;
	}

	public String getBs_num() {
		return bs_num;
	}

	public void setBs_num(String bs_num) {
		this.bs_num = bs_num;
	}

	public String getBs_regnum() {
		return bs_regnum;
	}

	public void setBs_regnum(String bs_regnum) {
		this.bs_regnum = bs_regnum;
	}

	public Date getFounded_date() {
		return founded_date;
	}

	public void setFounded_date(Date founded_date) {
		this.founded_date = founded_date;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getBs_post() {
		return bs_post;
	}

	public void setBs_post(String bs_post) {
		this.bs_post = bs_post;
	}

	public String getBs_addr() {
		return bs_addr;
	}

	public void setBs_addr(String bs_addr) {
		this.bs_addr = bs_addr;
	}

	public String getBs_phone() {
		return bs_phone;
	}

	public void setBs_phone(String bs_phone) {
		this.bs_phone = bs_phone;
	}

	public String getBs_fax() {
		return bs_fax;
	}

	public void setBs_fax(String bs_fax) {
		this.bs_fax = bs_fax;
	}

	public String getBs_type() {
		return bs_type;
	}

	public void setBs_type(String bs_type) {
		this.bs_type = bs_type;
	}

	public String getCp_type() {
		return cp_type;
	}

	public void setCp_type(String cp_type) {
		this.cp_type = cp_type;
	}

	public Date getCalc_start() {
		return calc_start;
	}

	public void setCalc_start(Date calc_start) {
		this.calc_start = calc_start;
	}

	public Date getCalc_end() {
		return calc_end;
	}

	public void setCalc_end(Date calc_end) {
		this.calc_end = calc_end;
	}

	public Date getPayday() {
		return payday;
	}

	public void setPayday(Date payday) {
		this.payday = payday;
	}

	public String getBs_bank() {
		return bs_bank;
	}

	public void setBs_bank(String bs_bank) {
		this.bs_bank = bs_bank;
	}

	public String getBs_account() {
		return bs_account;
	}

	public void setBs_account(String bs_account) {
		this.bs_account = bs_account;
	}

	public String getBs_acc_name() {
		return bs_acc_name;
	}

	public void setBs_acc_name(String bs_acc_name) {
		this.bs_acc_name = bs_acc_name;
	}
	
	
}
