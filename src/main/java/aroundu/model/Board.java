package aroundu.model;


public class Board {					
	private int bd_num;
	private String bd_subject;
	private String bd_content;	
	private String bd_regDate;
	private int bd_count;
	private int ref;
	private int re_step;
	private int re_level;	
	private String s_id;
	private String del;
	
	//page작업
	private int startRow;
	private int endRow;
	
	//search작업
	private String search;
	private String keyword;	
	
	
	
	
	public String getDel() {
		return del;
	}
	public void setDel(String del) {
		this.del = del;
	}
	public String getBd_regDate() {
		return bd_regDate;
	}
	public void setBd_regDate(String bd_regDate) {
		this.bd_regDate = bd_regDate;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
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
	
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	
	

	
	

	

}
