package doseo.dao;

import java.util.List;
import org.springframework.dao.DataAccessException;

import doseo.model.Doctor;
import doseo.model.Hospital;
import doseo.model.JoinDoctor;

public interface HospitalManagerDao {

	List<Doctor> admin_getDocList(String deptName, String hos_id) throws DataAccessException;
	
	List<Doctor> getDocList(String hos_id) throws DataAccessException;
	
	Hospital getHospital(String hos_login_id, String hos_pwd) throws DataAccessException;
	
	String getHosIdByLoginId(String hos_login_id) throws DataAccessException;
	
	void deleteDoctor(String doc_id) throws DataAccessException;
		
	//아이디 중복 체크
	int doc_idCheck(String id) throws DataAccessException;
	
	void insertDoctor(JoinDoctor newDoctor) throws DataAccessException;
}
