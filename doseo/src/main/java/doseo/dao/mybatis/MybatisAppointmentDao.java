package doseo.dao.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import doseo.dao.AppointmentDao;
import doseo.dao.mybatis.mapper.AppointmentMapper;
import doseo.model.Appointment;

@Repository
public class MybatisAppointmentDao implements AppointmentDao{

	@Autowired
	private AppointmentMapper appointmentMapper;
	
	public List<Appointment> getAppointment_list(String userId) throws DataAccessException{
		return appointmentMapper.getAppointment_list(userId);
	}
	public Appointment getAppointment(String ap_id) throws DataAccessException{
		return appointmentMapper.getAppointment(ap_id);
	}
	
	public void deleteAppointment(String ap_id) throws DataAccessException {
		appointmentMapper.deleteAppointment(ap_id);
	}
	public void insertAppointment(Appointment appointment) throws DataAccessException {
		appointmentMapper.insertAppointment(appointment);
	}
	
	public List<String> getAvaliableTimeList(String doc_id, String day, String date) throws DataAccessException{
		return appointmentMapper.getAvaliableTimeList(doc_id, day, date);
	}

	public void checkVisited(String ap_id) throws DataAccessException{
		appointmentMapper.checkVisited(ap_id);
	}
}
