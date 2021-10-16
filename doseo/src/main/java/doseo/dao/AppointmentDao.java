package doseo.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import doseo.model.Appointment;

public interface AppointmentDao {

	List<Appointment> getAppointment_list(String userId)throws DataAccessException;
	
	Appointment getAppointment(String ap_id)throws DataAccessException;
	
	void deleteAppointment(String ap_id) throws DataAccessException;
	
	void insertAppointment(Appointment appointment) throws DataAccessException;
	
	List<String> getAvaliableTimeList(String doc_id, String day, String date) throws DataAccessException;
	
	void checkVisited(String ap_id) throws DataAccessException;
}
