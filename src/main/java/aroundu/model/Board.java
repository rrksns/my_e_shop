package aroundu.model;

import java.sql.Date;

public class Board {
	private int bd_num;
	private String bd_subject;
	private String bd_content;
	private int bd_good;
	private int bd_warn;
	private int taste;
	private int service;
	private int price_adv;
	private Date bd_regDate;
	private int bd_count;
	private int ref;
	private int re_step;
	private int re_level;
	private int start_row;
	private int end_row;
	private String sh_id;
	private String u_id;
	
	public int getBd_num() {
		return bd_num;
	}
	public void setBd_num(int bd_num) {
		this.bd_num = bd_num;
	}
	public String getBd_subject() {
		return bd_subject;
	}
	public void setBd_subject(String bd_subject) {
		this.bd_subject = bd_subject;
	}
	public String getBd_content() {
		return bd_content;
	}
	public void setBd_content(String bd_content) {
		this.bd_content = bd_content;
	}
	public int getBd_good() {
		return bd_good;
	}
	public void setBd_good(int bd_good) {
		this.bd_good = bd_good;
	}
	public int getBd_warn() {
		return bd_warn;
	}
	public void setBd_warn(int bd_warn) {
		this.bd_warn = bd_warn;
	}
	public int getTaste() {
		return taste;
	}
	public void setTaste(int taste) {
		this.taste = taste;
	}
	public int getService() {
		return service;
	}
	public void setService(int service) {
		this.service = service;
	}
	public int getPrice_adv() {
		return price_adv;
	}
	public void setPrice_adv(int price_adv) {
		this.price_adv = price_adv;
	}
	public Date getBd_regDate() {
		return bd_regDate;
	}
	public void setBd_regDate(Date bd_regDate) {
		this.bd_regDate = bd_regDate;
	}
	public int getBd_count() {
		return bd_count;
	}
	public void setBd_count(int bd_count) {
		this.bd_count = bd_count;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRe_step() {
		return re_step;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
	public int getStart_row() {
		return start_row;
	}
	public void setStart_row(int start_row) {
		this.start_row = start_row;
	}
	public int getEnd_row() {
		return end_row;
	}
	public void setEnd_row(int end_row) {
		this.end_row = end_row;
	}
	public String getSh_id() {
		return sh_id;
	}
	public void setSh_id(String sh_id) {
		this.sh_id = sh_id;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	

}
