package doseo.dao.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import doseo.dao.PharmacyDao;
import doseo.dao.mybatis.mapper.PharmacyMapper;
import doseo.model.Pharmacy;

@Repository
public class MybatisPharmacyDao implements PharmacyDao{
	@Autowired
	private PharmacyMapper pharmacyMapper;
	
	//해당 지역의 약국 리스트 가져오기
	public List<Pharmacy> getPharmList(String district) throws DataAccessException {
		return pharmacyMapper.getPharmList(district);
	}
	
	//지역 + 언어
	public List<Pharmacy> getPharmList2(String district, String language) throws DataAccessException {
		return pharmacyMapper.getPharmList2(district, language);
	}
}
