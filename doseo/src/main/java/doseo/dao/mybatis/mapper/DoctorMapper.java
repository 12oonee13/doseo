package doseo.dao.mybatis.mapper;

import java.util.List;

import doseo.model.Appointment;
import doseo.model.Doctor;
import doseo.model.ForCount;
import doseo.model.Timetable;

public interface DoctorMapper {

	Doctor getDoctorById(String doc_login_id);
	
	Doctor getDoctorByIdAndPassword(String doc_login_id, String doc_pwd);
	
	void updateTimetable(Timetable timetable);
	
	List<Timetable> getTimetable(String doc_id);
	
	int countMonthlyAppointments(String doc_id);
	
	int countTodayAppointments(String doc_id);
	
	List<ForCount> countMonthlyGender(String doc_id);
	
	List<ForCount> countAge(String doc_id);
	
	void updateDoctor(Doctor doctor);
	
	List<Appointment> get_doctor_appList(String doc_id);
	
	//선택한 병원의 과에 있는 의사 리스트
	List<Doctor> getDoctorList(String dept_id);
	
	//해당 의사의 시간표
	List<Doctor> getDocTimeList(String doc_id);
	
	
}
