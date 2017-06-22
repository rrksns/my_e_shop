package aroundu.service;

public class PagingPgm {
	private int total;
	private int ROWPERPAGE;
	private int currentPage;
	private int pagePerBlk=10;
	private int startPage;
	private int endPage;
	private int totalPage;
	public PagingPgm(int total, int ROWPERPAGE, int currentPage) {
		this.total = total;
		this.ROWPERPAGE = ROWPERPAGE;
		this.currentPage = currentPage;
		totalPage = (int)Math.ceil((double)total/ROWPERPAGE);
		startPage = currentPage-(currentPage-1)%pagePerBlk;
		endPage = startPage + pagePerBlk -1;
		if(endPage>totalPage) endPage=totalPage;
		
		
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getROWPERPAGE() {
		return ROWPERPAGE;
	}
	public void setROWPERPAGE(int rOWPERPAGE) {
		ROWPERPAGE = rOWPERPAGE;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPagePerBlk() {
		return pagePerBlk;
	}
	public void setPagePerBlk(int pagePerBlk) {
		this.pagePerBlk = pagePerBlk;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

}
