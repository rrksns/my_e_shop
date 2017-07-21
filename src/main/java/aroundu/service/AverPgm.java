package aroundu.service;

import java.util.List;

import aroundu.model.Grade;

public class AverPgm {
	private int count;
	private List<Grade> glist;
	private int sum;
	private double aver;
	private List<Grade> glist1;
	private List<Grade> glist2;
	

	public AverPgm(int count, List<Grade> glist,List<Grade> glist1,List<Grade> glist2){
		
		
		this.count = count;
		this.glist = glist;
		this.glist1 = glist1;
		this.glist2 = glist2;
		
		int s_sum=0,f_sum=0,p_sum=0;
		
		if(count==0){
			sum=0;
			aver=0;
			return;
		}
		
		sum=0;		
		Grade g = null;
		for(int i = 0 ;i<glist.size() ; i++){
			g = glist.get(i); 
			s_sum += Integer.parseInt(g.getService());
		}
		
		for(int i = 0 ;i<glist1.size() ; i++){
			g = glist1.get(i); 
			f_sum += Integer.parseInt(g.getFlavor());
		}
		
		for(int i = 0 ;i<glist2.size() ; i++){
			g = glist2.get(i); 
			p_sum += Integer.parseInt(g.getPrice());
		}
		
		sum=(int)((s_sum+f_sum+p_sum)/3);
		aver = Math.round((sum/count*10)/10);
		
	}
	
	
	
	public double getAver() {
		return aver;
	}



	public void setAver(double aver) {
		this.aver = aver;
	}



	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
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



	public List<Grade> getGlist1() {
		return glist1;
	}



	public void setGlist1(List<Grade> glist1) {
		this.glist1 = glist1;
	}



	public List<Grade> getGlist2() {
		return glist2;
	}



	public void setGlist2(List<Grade> glist2) {
		this.glist2 = glist2;
	}

}
