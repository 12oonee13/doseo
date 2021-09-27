package doseo.service;

import java.util.List;

import doseo.model.Appointment;
import doseo.model.Doctor;
import doseo.model.ForCount;
import doseo.model.Hospital;
import doseo.model.JoinDoctor;
import doseo.model.Member;
import doseo.model.Pharmacy;
import doseo.model.Review;
import doseo.model.Timetable;

public interface dsFacade {
	// doctor
	Doctor getDoctor(String doc_login_id);

	Doctor getDoctor(String doc_login_id, String doc_pwd);
	
	void updateTimetable(Timetable timetable);
	
	List<Timetable> getTimetable(String doc_id);
	
	int countMonthlyAppointments(String doc_id);
	
	int countTodayAppointments(String doc_id);
	
	int countMonthlyFemale(String doc_id);
	
	List<ForCount> countMonthlyGender(String doc_id);
	
	List<ForCount> countAge(String doc_id);
	
	void updateDoctor(Doctor doctor);
	
	List<Appointment> get_doctor_appList(String doc_id);
	
	List<Doctor> getDoctorList(String dept_id);
	
	List<Doctor> getDocTimeList(String doc_id);
	
	// member
	Member getMember(String id);

	Member getMember(String id, String password);

	List<String> getIdList();

	void updateMember(Member member);

	void insertMember(Member member);

	int idCheck(String id);
	
	// review
	List<Review> getReview_list(String userId);

	Review getReview(String review_id);

	void deleteReview(String review_id);
	
	List<Review> getReviewByHosId(String hos_id);	//추가
	
	double getAVGRate(String hos_id); //추가
	
	Review getReviewDetailById(String hos_id, String review_id);//0925

	// hospital search
	List<Hospital> getHospitalList(String country, String city, String district);

	List<Hospital> getHospitalListByLang(String country, String city, String district, String language);

	List<Hospital> getHospitalListByDept(String deptName);

	List<String> getLangListByHosId(String hos_id);

	String getHosId(String hos_eng);

	String getDeptId(String dept_eng, String hos_id);

	int getHosCount(String deptName);

	// appointment
	List<Appointment> getAppointment_list(String userId);

	Appointment getAppointment(String ap_id);

	void deleteAppointment(String ap_id);

	void insertAppointment(Appointment appointment);// 서연

	List<String> getAvaliableTimeList(String doc_id, String day, String date);//서연
	
	//pharmacy
	List<Pharmacy> getPharmList(String district);
	
	List<Pharmacy> getPharmList2(String district, String language);
	
	//admin
	
	//hospital manager
	List<Doctor> getDocList(String hos_id);

	List<Doctor> admin_getDocList(String deptName, String hos_id);//병원 관리자
	
	Hospital getHospital(String hos_login_id, String hos_pwd);
	
	String getHosIdByLoginId(String hos_login_id);
	
	void deleteDoctor(String doc_id);
	
	int doc_idCheck(String doc_login_id);
	
	void insertDoctor(JoinDoctor newDoctor);
	
			
}