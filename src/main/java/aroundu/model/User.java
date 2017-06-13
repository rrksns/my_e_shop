package aroundu.model;

import java.sql.Date;

public class User {
	private String u_id;
	private String u_pw;
	private String u_mobile;
	private String u_img;
	private String u_email;
	private Date u_joinDate;
	
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pw() {
		return u_pw;
	}
	public void setU_pw(String u_pw) {
		this.u_pw = u_pw;
	}
	public String getU_mobile() {
		return u_mobile;
	}
	public void setU_mobile(String u_mobile) {
		this.u_mobile = u_mobile;
	}
	public String getU_img() {
		return u_img;
	}
	public void setU_img(String u_img) {
		this.u_img = u_img;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public Date getU_joinDate() {
		return u_joinDate;
	}
	public void setU_joinDate(Date u_joinDate) {
		this.u_joinDate = u_joinDate;
	}
	
	

}
