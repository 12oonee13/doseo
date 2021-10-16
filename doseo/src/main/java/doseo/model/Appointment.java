package doseo.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Appointment implements Serializable{
	private String ap_id;
	private java.sql.Date date;
	private String time;
	private String ap_date;
	private String ap_time;
	
	//private String language;
	private String select_language;
	private String hos_name_eng;
	private String dept_name_eng;
	
	private String id;
	private String hos_id;
	private String dept_id;
	private String message;
	private String doc_id;//8/5추가
	
	private String compareDate; // 지난 예약인지 확인
	private String canBeDeleted; //삭제 가능한 에약인지
	
	//의사페이지에서 환자 정보 가져올때
	private String p_name;
	private String p_gender;
	private String p_age;
	private String p_nationality;

	private String visited;
	
	public Appointment() {}
	
	public Appointment(String ap_id, String ap_date, String time, String select_language, String hos_name_eng,
			String dept_name_eng, String visited, String message, String dept_id) {
		super();
		this.ap_id = ap_id;
		this.ap_date = ap_date;
		this.time = ap_time;
		this.select_language = select_language;
		this.hos_name_eng = hos_name_eng;
		this.dept_name_eng = dept_name_eng;
		this.visited = visited;
		this.message = message;
		this.dept_id = dept_id;
	}
	
	public Appointment(String ap_id, String ap_date, String ap_time, String select_language, String message, String p_name,
			String p_gender, String p_age, String p_nationality,String visited) {
		super();
		this.ap_id = ap_id;
		this.ap_date = ap_date;
		this.ap_time = ap_time;
		this.select_language = select_language;
		this.message = message;
		this.p_name = p_name;
		this.p_gender = p_gender;
		this.p_age = p_age;
		this.p_nationality = p_nationality;
		this.visited = visited;
	}
	
	public Appointment(java.sql.Date date, String time, String select_language, String id, String hos_id,
			String dept_id, String message, String doc_id) {
		super();
		//this.ap_id = ap_id;
		this.date = date;
		this.time = time;
		this.select_language = select_language;
		this.id = id;
		this.hos_id = hos_id;
		this.dept_id = dept_id;
		this.message = message;
		this.doc_id = doc_id;
	}

	public Appointment(String ap_date, String ap_time, String select_language, String message, String p_name,
			String p_gender, String p_age, String p_nationality) {
		super();
		this.ap_date = ap_date;
		this.ap_time = ap_time;
		this.select_language = select_language;
		this.message = message;
		this.p_name = p_name;
		this.p_gender = p_gender;
		this.p_age = p_age;
		this.p_nationality = p_nationality;
	}
	
	public Appointment(java.sql.Date date, String time, String select_language, String id, String hos_id,
			String dept_id, String message) {
		super();
		//this.ap_id = ap_id;
		this.date = date;
		this.time = time;
		this.select_language = select_language;
		this.id = id;
		this.hos_id = hos_id;
		this.dept_id = dept_id;
		this.message = message;
	}

	public String getAp_id() {
		return ap_id;
	}

	public void setAp_id(String ap_id) {
		this.ap_id = ap_id;
	}

	public java.sql.Date getDate() {
		return date;
	}

	public void setDate(java.sql.Date date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAp_date() {
		return ap_date;
	}

	public void setAp_date(String ap_date) {
		this.ap_date = ap_date;
	}

	public String getAp_time() {
		return ap_time;
	}

	public void setAp_time(String ap_time) {
		this.ap_time = ap_time;
	}

	public String getSelect_language() {
		return select_language;
	}

	public void setSelect_language(String select_language) {
		this.select_language = select_language;
	}

	public String getHos_name_eng() {
		return hos_name_eng;
	}

	public void setHos_name_eng(String hos_name_eng) {
		this.hos_name_eng = hos_name_eng;
	}

	public String getDept_name_eng() {
		return dept_name_eng;
	}

	public void setDept_name_eng(String dept_name_eng) {
		this.dept_name_eng = dept_name_eng;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getHos_id() {
		return hos_id;
	}

	public void setHos_id(String hos_id) {
		this.hos_id = hos_id;
	}

	public String getDept_id() {
		return dept_id;
	}

	public void setDept_id(String dept_id) {
		this.dept_id = dept_id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}

	public String getCompareDate() {
		return compareDate;
	}

	public void setCompareDate(String compareDate) {
		this.compareDate = compareDate;
	}

	public String getCanBeDeleted() {
		return canBeDeleted;
	}

	public void setCanBeDeleted(String canBeDeleted) {
		this.canBeDeleted = canBeDeleted;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_gender() {
		return p_gender;
	}

	public void setP_gender(String p_gender) {
		this.p_gender = p_gender;
	}

	public String getP_age() {
		return p_age;
	}

	public void setP_age(String p_age) {
		this.p_age = p_age;
	}

	public String getP_nationality() {
		return p_nationality;
	}

	public void setP_nationality(String p_nationality) {
		this.p_nationality = p_nationality;
	}
	
	public String getVisited() {
		return visited;
	}

	public void setVisited(String visited) {
		this.visited = visited;
	}
	
}
