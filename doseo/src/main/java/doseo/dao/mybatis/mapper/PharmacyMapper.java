package doseo.dao.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import doseo.model.Pharmacy;

public interface PharmacyMapper {
	//지역으로 약국 리스트 불러오기
	List<Pharmacy> getPharmList(String district);
	
	//지역 언어로 약국 리스트 불러오기
	List<Pharmacy> getPharmList2(@Param("district") String district, @Param("language")String language);
}
