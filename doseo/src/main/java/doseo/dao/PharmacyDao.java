package doseo.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import doseo.model.Pharmacy;

public interface PharmacyDao {
	//지역
	List<Pharmacy> getPharmList(String district) throws DataAccessException;
	//지역, 언어
	List<Pharmacy> getPharmList2(String district, String language) throws DataAccessException;
}
