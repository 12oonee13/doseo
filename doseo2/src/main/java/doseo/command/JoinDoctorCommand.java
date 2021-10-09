package doseo.command;
/*
 쿼리
 INSERT INTO DOCTOR 
	VALUES(DOC_SEQ.NEXTVAL, 'KANG DUK-HYUN'
	, 'AS0001', 'KANGDUKHYUN', '30000006', '20000004'
	, 'Ischemic heart disease, Valvular heart disease, Coronary artery disease');
	COMMIT;
 */
public class JoinDoctorCommand {
	private String doc_name;
	private String specialty;
	
	public JoinDoctorCommand(String doc_name, String specialty) {
		super();
		this.doc_name = doc_name;
		this.specialty = specialty;
	}
	
	public JoinDoctorCommand() {}

	public String getDoc_name() {
		return doc_name;
	}

	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}

	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	 
}
