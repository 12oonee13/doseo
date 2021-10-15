package doseo.dao;

import java.util.List;
import org.springframework.dao.DataAccessException;

import doseo.model.Hospital;

public interface HospitalDao {
	//id빼고
	List<Hospital> getHospitalList(String country, String city, String district) throws DataAccessException;
	
	List<Hospital> getHospitalListByLang(String country, String city, String district, String language) throws DataAccessException;
	
	List<Hospital> getHospitalListByDept(String deptName) throws DataAccessException;
	
	List<String> getLangListByHosId(String hos_id) throws DataAccessException;
	
	String getHosId(String hos_eng) throws DataAccessException;
	
	String getDeptId(String dept_eng, String hos_id) throws DataAccessException;
	
	int getHosCount(String deptName) throws DataAccessException;
}
