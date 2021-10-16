package doseo.dao.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import doseo.dao.HospitalManagerDao;
import doseo.dao.mybatis.mapper.HospitalManagerMapper;
import doseo.model.Doctor;
import doseo.model.Hospital;
import doseo.model.JoinDoctor;

@Repository
public class MybatisHospitalManagerDao implements HospitalManagerDao {
	@Autowired
	private HospitalManagerMapper hospitalManagerMapper;
	
	public List<Doctor> getDocList(String hos_id){
		return hospitalManagerMapper.getDocList(hos_id);
	}
	
	//기존의 의사 정보 불러오기
		public List<Doctor> admin_getDocList(String deptName, String hos_id) throws DataAccessException {
			return hospitalManagerMapper.admin_getDocList(deptName, hos_id);
		}
		
		public Hospital getHospital(String hos_login_id, String hos_pwd) throws DataAccessException {
			return hospitalManagerMapper.getHospitalByIdAndPassword(hos_login_id, hos_pwd);
		}
		
		public String getHosIdByLoginId(String hos_login_id) throws DataAccessException{
			return hospitalManagerMapper.getHosIdByLoginId(hos_login_id);
		}
		
		public void deleteDoctor(String doc_id) throws DataAccessException {
			hospitalManagerMapper.deleteDoctor(doc_id);
		}
		
		public int doc_idCheck(String doc_login_id) throws DataAccessException{
			return hospitalManagerMapper.doc_idCheck(doc_login_id);
		}
		
		public void insertDoctor(JoinDoctor newDoctor) throws DataAccessException{
			hospitalManagerMapper.insertDoctor(newDoctor);
		}
}
