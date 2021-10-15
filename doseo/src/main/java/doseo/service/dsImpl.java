
package doseo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import doseo.dao.AppointmentDao;
import doseo.dao.DoctorDao;
import doseo.dao.HospitalDao;
import doseo.dao.HospitalManagerDao;
import doseo.dao.MemberDao;
import doseo.dao.PharmacyDao;
import doseo.dao.ReviewDao;
import doseo.model.Appointment;
import doseo.model.Doctor;
import doseo.model.ForCount;
import doseo.model.Hospital;
import doseo.model.JoinDoctor;
import doseo.model.Member;
import doseo.model.Pharmacy;
import doseo.model.Review;
import doseo.model.Timetable;


@Service
@Transactional
public class dsImpl implements dsFacade {
	@Autowired
	private MemberDao memberDao;
	@Autowired
	private HospitalDao hospitalDao;
	@Autowired
	private HospitalManagerDao hospitalManagerDao;
	@Autowired
	private ReviewDao reviewDao;
	@Autowired
	private AppointmentDao appointmentDao;
	@Autowired 
	private DoctorDao doctorDao;
	@Autowired 
	private PharmacyDao pharmacyDao;
	
	
	//doctor
	public Doctor getDoctor(String doc_login_id) {
		return doctorDao.getDoctor(doc_login_id);
	}
	
	public Doctor getDoctor(String doc_login_id, String doc_pwd) {
		return doctorDao.getDoctor(doc_login_id, doc_pwd);
	}
	
	public void updateTimetable(Timetable timetable) {
		doctorDao.updateTimetable(timetable);
	} 
	
	public List<Timetable> getTimetable(String doc_id){
		return doctorDao.getTimetable(doc_id);
	}
	
	public int countMonthlyAppointments(String doc_id) {
		return doctorDao.countMonthlyAppointments(doc_id);
	}
	
	public int countTodayAppointments(String doc_id) {
		return doctorDao.countTodayAppointments(doc_id);
	}
	
	public List<ForCount> countMonthlyGender(String doc_id){
		return doctorDao.countMonthlyGender(doc_id);
	}
	
	public List<ForCount> countAge(String doc_id){
		return doctorDao.countAge(doc_id);
	}
	
	public void updateDoctor(Doctor doctor) {
		doctorDao.updateDoctor(doctor);
	}
	
	public List<Appointment> get_doctor_appList(String doc_id){
		return doctorDao.get_doctor_appList(doc_id);
	}
	
	public List<Doctor> getDoctorList(String dept_id){
		return doctorDao.getDoctorList(dept_id);
	}
	
	public List<Doctor> getDocTimeList(String doc_id){
		return doctorDao.getDocTimeList(doc_id);
	}
	
	//member
	public Member getMember(String id) {
		return memberDao.getMember(id);
	}

	public Member getMember(String id, String password) {
		return memberDao.getMember(id, password);
	}
	
	public List<String> getIdList() {
		return memberDao.getIdList();
	}
	public void updateMember(Member member) {
		memberDao.updateMember(member);
	}

	public void insertMember(Member member) {
		memberDao.insertMember(member);
	}
	
	public int idCheck(String id) {
		return memberDao.idCheck(id);
	}
	
	//review
	public List<Review> getReview_list(String userId){
		return reviewDao.getReview_list(userId);
	}
	
	public Review getReview(String review_id) {
		return reviewDao.getReview(review_id);
	}
	
	public void deleteReview(String review_id) {
		reviewDao.deleteReview(review_id);
	}
	
	public List<Review> getReviewByHosId(String hos_id){
		return reviewDao.getReviewByHosId(hos_id);
	}
	
	public double getAVGRate(String hos_id) {
		return reviewDao.getAVGRate(hos_id);
	}
	
	public Review getReviewDetailById(String hos_id, String review_id) {
		return reviewDao.getReviewDetailById(hos_id, review_id);
	}
	
	public void insertReview(Review review) {
		reviewDao.insertReview(review);
	}
	
	public int reviewExistCheck(String ap_id) {
		return reviewDao.reviewExistCheck(ap_id);
	}
	
	public List<Review> getAllReview(){
		return reviewDao.getAllReview();
	}
	
	
	//hospital search
	public List<Hospital> getHospitalList(String country, String city, String district){
		return hospitalDao.getHospitalList(country, city, district);
	}
			
	public List<Hospital> getHospitalListByLang(String country, String city, String district, String language){
		return hospitalDao.getHospitalListByLang(country, city, district, language);
	}
			
	public List<Hospital> getHospitalListByDept(String deptName){
		return hospitalDao.getHospitalListByDept(deptName);
	}
	
	public List<String> getLangListByHosId(String hos_id){
		return hospitalDao.getLangListByHosId(hos_id);
	}
	
	public String getHosId(String hos_eng) {
		return hospitalDao.getHosId(hos_eng);
	}
	
	public String getDeptId(String dept_eng, String hos_id) {
		return hospitalDao.getDeptId(dept_eng, hos_id);
	}
	
	public int getHosCount(String depName) {
		return hospitalDao.getHosCount(depName);
	}
		
	//appointment
	public List<Appointment> getAppointment_list(String userId){
		return appointmentDao.getAppointment_list(userId);
	}
	public Appointment getAppointment(String ap_id) {
		return appointmentDao.getAppointment(ap_id);
	}
	
	public void deleteAppointment(String ap_id) {
		appointmentDao.deleteAppointment(ap_id);
	}
	public void insertAppointment(Appointment appointment) {
		appointmentDao.insertAppointment(appointment);
	}

	public List<String> getAvaliableTimeList(String doc_id, String day, String date){
		return appointmentDao.getAvaliableTimeList(doc_id, day, date);
	}
	
	@Override
	public int countMonthlyFemale(String doc_id) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//pharmacy
	public List<Pharmacy> getPharmList(String district){
		return pharmacyDao.getPharmList(district);
	}
	public List<Pharmacy> getPharmList2(String district, String language){
		return pharmacyDao.getPharmList2(district, language);
	}	
	
	//hospital manager
	public List<Doctor> getDocList(String hos_id){//병원 전체의사
		return hospitalManagerDao.getDocList(hos_id);
	}
	public List<Doctor> admin_getDocList(String deptName, String hos_id){//병원 특정과에 속하는 의사
		return hospitalManagerDao.admin_getDocList(deptName, hos_id);
	}		

	public Hospital getHospital(String hos_login_id, String hos_pwd) {
		return hospitalManagerDao.getHospital(hos_login_id, hos_pwd);
	}
	
	public String getHosIdByLoginId(String hos_login_id) {
		return hospitalManagerDao.getHosIdByLoginId(hos_login_id);
	}
	
	public void deleteDoctor(String doc_id) {
		hospitalManagerDao.deleteDoctor(doc_id);
	}
	
	public int doc_idCheck(String doc_login_id) {
		return hospitalManagerDao.doc_idCheck(doc_login_id);
	}
	
	public void insertDoctor(JoinDoctor newDoctor) {
		hospitalManagerDao.insertDoctor(newDoctor);
	}
	
}
