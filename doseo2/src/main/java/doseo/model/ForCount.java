package doseo.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class ForCount implements Serializable{
	private String str; 
	private int num;
	
	public ForCount() {};
	
	public ForCount(String str, int num) {
		super();
		this.str = str;
		this.num = num;
	}


	public String getStr() {
		return str;
	}


	public void setStr(String str) {
		this.str = str;
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}
	
	

}
