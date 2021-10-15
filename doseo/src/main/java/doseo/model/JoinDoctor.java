package doseo.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class JoinDoctor implements Serializable{
	private String doc_name;
	private String doc_login_id;
	private String doc_pwd;
	private String dept_id;
	private String hos_id;
	private String speciality;
	
	public JoinDoctor() {}

	public JoinDoctor(String doc_name, String doc_login_id, String doc_pwd, String dept_id, String hos_id,
			String speciality) {
		super();
		this.doc_name = doc_name;
		this.doc_login_id = doc_login_id;
		this.doc_pwd = doc_pwd;
		this.dept_id = dept_id;
		this.hos_id = hos_id;
		this.speciality = speciality;
	}
	
	public String getDoc_name() {
		return doc_name;
	}
	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}
	public String getDoc_login_id() {
		return doc_login_id;
	}
	public void setDoc_login_id(String doc_login_id) {
		this.doc_login_id = doc_login_id;
	}
	public String getDoc_pwd() {
		return doc_pwd;
	}
	public void setDoc_pwd(String doc_pwd) {
		this.doc_pwd = doc_pwd;
	}
	public String getDept_id() {
		return dept_id;
	}
	public void setDept_id(String dept_id) {
		this.dept_id = dept_id;
	}
	public String getHos_id() {
		return hos_id;
	}
	public void setHos_id(String hos_id) {
		this.hos_id = hos_id;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}	
}
