package aroundu.model;

import org.springframework.web.multipart.MultipartFile;

public class Menu {
	private int it_id;
	private String it_name;
	private int it_price;
	private String it_cont;
	private String it_img1;
	private String it_img2;
	private String it_img3;
	private String it_top3;
	private int sh_id;
	private String it_groupId;
	
	private MultipartFile menu1; private MultipartFile menu2;
	private MultipartFile menu3;
	
	
	public MultipartFile getMenu1() {
		return menu1;
	}
	public void setMenu1(MultipartFile menu1) {
		this.menu1 = menu1;
	}
	public MultipartFile getMenu2() {
		return menu2;
	}
	public void setMenu2(MultipartFile menu2) {
		this.menu2 = menu2;
	}
	public MultipartFile getMenu3() {
		return menu3;
	}
	public void setMenu3(MultipartFile menu3) {
		this.menu3 = menu3;
	}
	public int getSh_id() {
		return sh_id;
	}
	public void setSh_id(int sh_id) {
		this.sh_id = sh_id;
	}
	public int getIt_id() {
		return it_id;
	}
	public void setIt_id(int it_id) {
		this.it_id = it_id;
	}
	public String getIt_top3() {
		return it_top3;
	}
	public void setIt_top3(String it_top3) {
		this.it_top3 = it_top3;
	}
	public String getIt_name() {
		return it_name;
	}
	public void setIt_name(String it_name) {
		this.it_name = it_name;
	}
	public String getIt_groupId() {
		return it_groupId;
	}
	public void setIt_groupId(String it_groupId) {
		this.it_groupId = it_groupId;
	}
	public int getIt_price() {
		return it_price;
	}
	public void setIt_price(int it_price) {
		this.it_price = it_price;
	}
	public String getIt_cont() {
		return it_cont;
	}
	public void setIt_cont(String it_cont) {
		this.it_cont = it_cont;
	}
	public String getIt_img1() {
		return it_img1;
	}
	public void setIt_img1(String it_img1) {
		this.it_img1 = it_img1;
	}
	public String getIt_img2() {
		return it_img2;
	}
	public void setIt_img2(String it_img2) {
		this.it_img2 = it_img2;
	}
	public String getIt_img3() {
		return it_img3;
	}
	public void setIt_img3(String it_img3) {
		this.it_img3 = it_img3;
	}

}
