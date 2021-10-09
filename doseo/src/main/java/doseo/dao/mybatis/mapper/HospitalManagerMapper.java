package doseo.dao.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import doseo.model.Doctor;
import doseo.model.Hospital;
import doseo.model.JoinDoctor;

public interface HospitalManagerMapper {
	List<Doctor> getDocList(String hos_id);
	
	//병원 관리자
	List<Doctor> admin_getDocList(@Param("deptName") String deptName, @Param("hos_id") String hos_id );
		
	//ID, PWD로 로그인
	Hospital getHospitalByIdAndPassword(@Param("hos_login_id")String hos_login_id, @Param("hos_pwd")String hos_pwd);
		
	//로그인 아이디로 병원 아이디 가져오기
	String getHosIdByLoginId(String hos_login_id);
		
	//의사 정보 삭제
	void deleteDoctor(String doc_id);	
	
	//의사 아이디 중복 확인
	int doc_idCheck(String doc_login_id);
	
	//의사 정보 추가
	void insertDoctor(JoinDoctor newDoctor);

}
