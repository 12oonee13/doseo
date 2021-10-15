package doseo.dao.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import doseo.model.Appointment;
public interface AppointmentMapper {
	
	List<Appointment> getAppointment_list(String userId);
	
	Appointment getAppointment(String ap_id);
	
	void deleteAppointment(String ap_id);
	
	void insertAppointment(Appointment appointment);
	
	List<String> getAvaliableTimeList(@Param("doc_id") String doc_id, 
			@Param("day") String day, @Param("date") String date);//8/3: 여러개의 parameter 전달시 이름 지정하기
	void checkVisited(String ap_id);
}
