package doseo.dao.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import doseo.dao.HospitalDao;
import doseo.dao.mybatis.mapper.HospitalMapper;
import doseo.model.Doctor;
import doseo.model.Hospital;

@Repository
public class MybatisHospitalDao implements HospitalDao {
	@Autowired
	private HospitalMapper hospitalMapper;
	
	//지역에 맞는 병원 리스트를 찾아줌
	public List<Hospital> getHospitalList(String country, String city, String district) throws DataAccessException{
		return hospitalMapper.getHospitalList(country, city, district);
	}
	
	public List<Hospital> getHospitalListByLang(String country, String city, String district, String language) throws DataAccessException{
		return hospitalMapper.getHospitalListByLang(country, city, district, language);
	}
	
	public List<Hospital> getHospitalListByDept(String deptName) throws DataAccessException{
		return hospitalMapper.getHospitalListByDept(deptName);
	}
	
	public List<String> getLangListByHosId(String hos_id) throws DataAccessException{
		return hospitalMapper.getLangListByHosId(hos_id);
	}

	public String getHosId(String hos_eng) throws DataAccessException{
		return hospitalMapper.getHosId(hos_eng);
	}
	
	public String getDeptId(String dept_eng, String hos_id) throws DataAccessException {
		return hospitalMapper.getDeptId(dept_eng, hos_id);
	}
	
	public int getHosCount(String deptName) throws DataAccessException{
		return hospitalMapper.getHosCount(deptName);
	}
	
	
}
