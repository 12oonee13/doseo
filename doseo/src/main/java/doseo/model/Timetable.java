package doseo.model;

import java.io.Serializable;

@SuppressWarnings("serial")

public class Timetable  implements Serializable {
	private String doc_id;
	private String day;
	private String time;
	
	public Timetable() {}
	
	public Timetable(String doc_id, String day, String time) {
		this.doc_id = doc_id;
		this.day = day;
		this.time = time;
	}

	public String getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
	
	
}
