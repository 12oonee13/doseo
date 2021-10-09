package doseo.command;

public class DoctorCommand {
	
	private String doc_id;
	private String doc_name;
	private String doc_pwd;
	private String doc_con_pwd;
	private String speciality;
	
	

	public DoctorCommand(String doc_id, String doc_name, String doc_pwd, String doc_con_pwd, String speciality) {
		super();
		this.doc_id = doc_id;
		this.doc_name = doc_name;
		this.doc_pwd = doc_pwd;
		this.doc_con_pwd = doc_con_pwd;
		this.speciality = speciality;
	}

	public DoctorCommand() {}

	public String getDoc_id() {
		return doc_id;
	}



	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}



	public String getDoc_name() {
		return doc_name;
	}



	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}



	public String getDoc_pwd() {
		return doc_pwd;
	}



	public void setDoc_pwd(String doc_pwd) {
		this.doc_pwd = doc_pwd;
	}



	public String getDoc_con_pwd() {
		return doc_con_pwd;
	}



	public void setDoc_con_pwd(String doc_con_pwd) {
		this.doc_con_pwd = doc_con_pwd;
	}



	public String getSpeciality() {
		return speciality;
	}



	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}



	public boolean isSamePasswordConfirmPassword() {
		if (doc_pwd == null || doc_con_pwd == null)
			return false;
		return doc_pwd.equals(doc_con_pwd);
	}
}
