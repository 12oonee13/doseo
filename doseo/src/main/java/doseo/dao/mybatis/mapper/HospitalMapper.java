package doseo.dao.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import doseo.model.Doctor;
import doseo.model.Hospital;

public interface HospitalMapper {
	//사용x - 지역으로 병원 리스트 구하기 
	List<Hospital> getHospitalList(String country, String city, String district);//String? Hospital?
	
	//사용x - 지역+언어로 병원 정보 리스트 구하기
	List<Hospital> getHospitalListByLang(@Param("country") String country, @Param("city") String city, @Param("district") String district, @Param("language") String language);//String? Hospital?

	//해당 과가 존재하는 병원 정보 리스트
	List<Hospital> getHospitalListByDept(String deptName);
	
	//해당 병원에서 지원하는 언어들
	List<String> getLangListByHosId(String hos_id);
	
	//병원 이름으로 id 찾기
	String getHosId(String hos_eng);
	
	//과의 id 찾기
	String getDeptId(@Param("dept_eng") String dept_eng, @Param("hos_id") String hos_id);
	
	//해당 과가 존재하는 병원의 수
	int getHosCount(String deptName);
}
