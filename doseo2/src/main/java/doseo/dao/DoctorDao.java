package doseo.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import doseo.model.Appointment;
import doseo.model.Doctor;
import doseo.model.ForCount;
import doseo.model.Timetable;

public interface DoctorDao {

	Doctor getDoctor(String doc_login_id) throws DataAccessException;
	
	Doctor getDoctor(String doc_login_id, String doc_pwd) throws DataAccessException;
	
	void updateTimetable(Timetable timetable) throws DataAccessException;
	
	List<Timetable> getTimetable(String doc_id) throws DataAccessException;
	
	int countMonthlyAppointments(String doc_id) throws DataAccessException;
	
	int countTodayAppointments(String doc_id) throws DataAccessException;
	
	List<ForCount> countMonthlyGender(String doc_id) throws DataAccessException;
	
	List<ForCount> countAge(String doc_id) throws DataAccessException;
	
	void updateDoctor(Doctor doctor) throws DataAccessException;
	
	List<Appointment> get_doctor_appList(String doc_id) throws DataAccessException;
	
	//선택한 병원의 과에 있는 의사 리스트
	List<Doctor> getDoctorList(String dept_id) throws DataAccessException;
	
	List<Doctor> getDocTimeList(String doc_id) throws DataAccessException;
}