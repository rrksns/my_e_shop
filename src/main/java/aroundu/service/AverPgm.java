package aroundu.service;

import java.util.List;

import aroundu.model.Grade;

public class AverPgm {
	private int count;
	private List<Grade> glist;
	
	public AverPgm(int count, List<Grade> glist){
		this.count = count;
		this.glist = glist;
		int sum=0;
		Grade g = null;
		for(int i = 0 ;i<glist.size() ; i++){
			g = glist.get(i); 
		}
		
	
		
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public List<Grade> getGlist() {
		return glist;
	}

	public void setGlist(List<Grade> glist) {
		this.glist = glist;
	}

}
