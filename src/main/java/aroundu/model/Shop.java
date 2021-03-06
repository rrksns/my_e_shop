package aroundu.model;

import org.springframework.web.multipart.MultipartFile;

public class Shop {
	private int sh_id;
	private String sh_name;
	private String sh_addr1;
	private String sh_addr2;
	private String sh_web1;
	private String sh_web2;
	private String sh_web3;
	private String sh_web4;
	private String sh_tel;
	private String sh_cate;
	private String sh_subcate;
	private String sh_content;
	private String sh_operTimeS1;
	private String sh_operTimeS2;
	private String sh_operTimeS3;
	private String sh_operTimeE1;
	private String sh_operTimeE2;
	private String sh_operTimeE3;
	private String sh_brTimeS;
	private String sh_brTimeE;
	private String sh_hashtag;
	private String sh_img1;
	private String sh_img2;
	private String sh_img3;
	private String sh_img4;
	private String sh_img5;
	private String sh_img6;
	private int sh_count;
	private int sh_pickcount;
	private String s_id;
	public String allday_open;
	public String driveThru;
	public String takeOut;
	public String dineIn;
	public String delivery;
	private String sh_hash;
	
	private MultipartFile file1; private MultipartFile file2;
	private MultipartFile file3; private MultipartFile file4;
	private MultipartFile file5; private MultipartFile file6;	

	
	//search작업
		private String search;
		private String keyword;
		public int getSh_id() {
			return sh_id;
		}
		public void setSh_id(int sh_id) {
			this.sh_id = sh_id;
		}
		public String getSh_name() {
			return sh_name;
		}
		public void setSh_name(String sh_name) {
			this.sh_name = sh_name;
		}
		public String getSh_addr1() {
			return sh_addr1;
		}
		public void setSh_addr1(String sh_addr1) {
			this.sh_addr1 = sh_addr1;
		}
		public String getSh_addr2() {
			return sh_addr2;
		}
		public void setSh_addr2(String sh_addr2) {
			this.sh_addr2 = sh_addr2;
		}
		public String getSh_web1() {
			return sh_web1;
		}
		public void setSh_web1(String sh_web1) {
			this.sh_web1 = sh_web1;
		}
		public String getSh_web2() {
			return sh_web2;
		}
		public void setSh_web2(String sh_web2) {
			this.sh_web2 = sh_web2;
		}
		public String getSh_web3() {
			return sh_web3;
		}
		public void setSh_web3(String sh_web3) {
			this.sh_web3 = sh_web3;
		}
		public String getSh_web4() {
			return sh_web4;
		}
		public void setSh_web4(String sh_web4) {
			this.sh_web4 = sh_web4;
		}
		public String getSh_tel() {
			return sh_tel;
		}
		public void setSh_tel(String sh_tel) {
			this.sh_tel = sh_tel;
		}
		public String getSh_cate() {
			return sh_cate;
		}
		public void setSh_cate(String sh_cate) {
			this.sh_cate = sh_cate;
		}
		public String getSh_subcate() {
			return sh_subcate;
		}
		public void setSh_subcate(String sh_subcate) {
			this.sh_subcate = sh_subcate;
		}
		public String getSh_content() {
			return sh_content;
		}
		public void setSh_content(String sh_content) {
			this.sh_content = sh_content;
		}
		public String getSh_operTimeS1() {
			return sh_operTimeS1;
		}
		public void setSh_operTimeS1(String sh_operTimeS1) {
			this.sh_operTimeS1 = sh_operTimeS1;
		}
		public String getSh_operTimeS2() {
			return sh_operTimeS2;
		}
		public void setSh_operTimeS2(String sh_operTimeS2) {
			this.sh_operTimeS2 = sh_operTimeS2;
		}
		public String getSh_operTimeS3() {
			return sh_operTimeS3;
		}
		public void setSh_operTimeS3(String sh_operTimeS3) {
			this.sh_operTimeS3 = sh_operTimeS3;
		}
		public String getSh_operTimeE1() {
			return sh_operTimeE1;
		}
		public void setSh_operTimeE1(String sh_operTimeE1) {
			this.sh_operTimeE1 = sh_operTimeE1;
		}
		public String getSh_operTimeE2() {
			return sh_operTimeE2;
		}
		public void setSh_operTimeE2(String sh_operTimeE2) {
			this.sh_operTimeE2 = sh_operTimeE2;
		}
		public String getSh_operTimeE3() {
			return sh_operTimeE3;
		}
		public void setSh_operTimeE3(String sh_operTimeE3) {
			this.sh_operTimeE3 = sh_operTimeE3;
		}
		public String getSh_brTimeS() {
			return sh_brTimeS;
		}
		public void setSh_brTimeS(String sh_brTimeS) {
			this.sh_brTimeS = sh_brTimeS;
		}
		public String getSh_brTimeE() {
			return sh_brTimeE;
		}
		public void setSh_brTimeE(String sh_brTimeE) {
			this.sh_brTimeE = sh_brTimeE;
		}
		public String getSh_hashtag() {
			return sh_hashtag;
		}
		public void setSh_hashtag(String sh_hashtag) {
			this.sh_hashtag = sh_hashtag;
		}
		public String getSh_img1() {
			return sh_img1;
		}
		public void setSh_img1(String sh_img1) {
			this.sh_img1 = sh_img1;
		}
		public String getSh_img2() {
			return sh_img2;
		}
		public void setSh_img2(String sh_img2) {
			this.sh_img2 = sh_img2;
		}
		public String getSh_img3() {
			return sh_img3;
		}
		public void setSh_img3(String sh_img3) {
			this.sh_img3 = sh_img3;
		}
		public String getSh_img4() {
			return sh_img4;
		}
		public void setSh_img4(String sh_img4) {
			this.sh_img4 = sh_img4;
		}
		public String getSh_img5() {
			return sh_img5;
		}
		public void setSh_img5(String sh_img5) {
			this.sh_img5 = sh_img5;
		}
		public String getSh_img6() {
			return sh_img6;
		}
		public void setSh_img6(String sh_img6) {
			this.sh_img6 = sh_img6;
		}
		public int getSh_count() {
			return sh_count;
		}
		public void setSh_count(int sh_count) {
			this.sh_count = sh_count;
		}
		public int getSh_pickcount() {
			return sh_pickcount;
		}
		public void setSh_pickcount(int sh_pickcount) {
			this.sh_pickcount = sh_pickcount;
		}
		public String getS_id() {
			return s_id;
		}
		public void setS_id(String s_id) {
			this.s_id = s_id;
		}
		public String getAllday_open() {
			return allday_open;
		}
		public void setAllday_open(String allday_open) {
			this.allday_open = allday_open;
		}
		public String getDriveThru() {
			return driveThru;
		}
		public void setDriveThru(String driveThru) {
			this.driveThru = driveThru;
		}
		public String getTakeOut() {
			return takeOut;
		}
		public void setTakeOut(String takeOut) {
			this.takeOut = takeOut;
		}
		public String getDineIn() {
			return dineIn;
		}
		public void setDineIn(String dineIn) {
			this.dineIn = dineIn;
		}
		public String getDelivery() {
			return delivery;
		}
		public void setDelivery(String delivery) {
			this.delivery = delivery;
		}
		public String getSh_hash() {
			return sh_hash;
		}
		public void setSh_hash(String sh_hash) {
			this.sh_hash = sh_hash;
		}
		public MultipartFile getFile1() {
			return file1;
		}
		public void setFile1(MultipartFile file1) {
			this.file1 = file1;
		}
		public MultipartFile getFile2() {
			return file2;
		}
		public void setFile2(MultipartFile file2) {
			this.file2 = file2;
		}
		public MultipartFile getFile3() {
			return file3;
		}
		public void setFile3(MultipartFile file3) {
			this.file3 = file3;
		}
		public MultipartFile getFile4() {
			return file4;
		}
		public void setFile4(MultipartFile file4) {
			this.file4 = file4;
		}
		public MultipartFile getFile5() {
			return file5;
		}
		public void setFile5(MultipartFile file5) {
			this.file5 = file5;
		}
		public MultipartFile getFile6() {
			return file6;
		}
		public void setFile6(MultipartFile file6) {
			this.file6 = file6;
		}
		public String getSearch() {
			return search;
		}
		public void setSearch(String search) {
			this.search = search;
		}
		public String getKeyword() {
			return keyword;
		}
		public void setKeyword(String keyword) {
			this.keyword = keyword;
		}	
		
	
	

}
