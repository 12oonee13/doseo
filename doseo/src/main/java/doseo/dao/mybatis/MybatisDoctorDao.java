package doseo.dao.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import doseo.dao.DoctorDao;
import doseo.dao.mybatis.mapper.DoctorMapper;
import doseo.model.Appointment;
import doseo.model.Doctor;
import doseo.model.ForCount;
import doseo.model.Timetable;


@Repository
public class MybatisDoctorDao implements DoctorDao{

	@Autowired
	private DoctorMapper doctorMapper;
	
	public Doctor getDoctor(String doc_login_id) throws DataAccessException {
		return doctorMapper.getDoctorById(doc_login_id);
	}
	
	public Doctor getDoctor(String doc_login_id, String doc_pwd) throws DataAccessException {
		return doctorMapper.getDoctorByIdAndPassword(doc_login_id, doc_pwd);
	}

	public void updateTimetable(Timetable timetable) throws DataAccessException {
		doctorMapper.updateTimetable(timetable);
	}
	
	public List<Timetable> getTimetable(String doc_id) throws DataAccessException{
		return doctorMapper.getTimetable(doc_id);
	}
	
	public int countMonthlyAppointments(String doc_id) throws DataAccessException {
		return doctorMapper.countMonthlyAppointments(doc_id);
	}
	
	public int countTodayAppointments(String doc_id) throws DataAccessException {
		return doctorMapper.countTodayAppointments(doc_id);
	}
	
	public 	List<ForCount> countMonthlyGender(String doc_id) throws DataAccessException{
		return doctorMapper.countMonthlyGender(doc_id);
	}
	
	public List<ForCount> countAge(String doc_id) throws DataAccessException{
		return doctorMapper.countAge(doc_id);
	}
	
	public void updateDoctor(Doctor doctor) throws DataAccessException{
		doctorMapper.updateDoctor(doctor);
	}

	public List<Appointment> get_doctor_appList(String doc_id) throws DataAccessException{
		return doctorMapper.get_doctor_appList(doc_id);
	}
	
	public List<Doctor> getDoctorList(String dept_id) throws DataAccessException {
		return doctorMapper.getDoctorList(dept_id);
	}
	public List<Doctor> getDocTimeList(String doc_id) throws DataAccessException {
		return doctorMapper.getDocTimeList(doc_id);
	}
	

}
