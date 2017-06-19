package aroundu.model;

import java.sql.Date;

public class Seller {
	private String s_id;
	private String s_pw;
	private String s_email;
	private String s_addr;
	private String s_mobile;
	private String s_tel;
	private String s_name;
	private String s_birthdate;
	private String s_gender;
	private String s_tc_conf;
	private int s_mob_conf;
	public String getS_tc_conf() {
		return s_tc_conf;
	}
	public void setS_tc_conf(String s_tc_conf) {
		this.s_tc_conf = s_tc_conf;
	}
	public int getS_mob_conf() {
		return s_mob_conf;
	}
	public void setS_mob_conf(int s_mob_conf) {
		this.s_mob_conf = s_mob_conf;
	}
	public String getS_tel() {
		return s_tel;
	}
	public void setS_tel(String s_tel) {
		this.s_tel = s_tel;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_birthdate() {
		return s_birthdate;
	}
	public void setS_birthdate(String s_birthdate) {
		this.s_birthdate = s_birthdate;
	}
	public String getS_gender() {
		return s_gender;
	}
	public void setS_gender(String s_gender) {
		this.s_gender = s_gender;
	}
	private Date s_regDate;
	private boolean s_reg_conf;
	
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getS_pw() {
		return s_pw;
	}
	public void setS_pw(String s_pw) {
		this.s_pw = s_pw;
	}
	public String getS_email() {
		return s_email;
	}
	public void setS_email(String s_email) {
		this.s_email = s_email;
	}
	public String getS_addr() {
		return s_addr;
	}
	public void setS_addr(String s_addr) {
		this.s_addr = s_addr;
	}
	public String getS_mobile() {
		return s_mobile;
	}
	public void setS_mobile(String s_mobile) {
		this.s_mobile = s_mobile;
	}
	public Date getS_regDate() {
		return s_regDate;
	}
	public void setS_regDate(Date s_regDate) {
		this.s_regDate = s_regDate;
	}
	public boolean isS_reg_conf() {
		return s_reg_conf;
	}
	public void setS_reg_conf(boolean s_reg_conf) {
		this.s_reg_conf = s_reg_conf;
	}


}
