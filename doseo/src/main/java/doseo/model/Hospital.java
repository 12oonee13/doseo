package doseo.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Hospital implements Serializable {
	private String id;
	private String name_kor;
	private String name_eng;
	private String tel;
	private String country;
	private String city;
	private String district;
	private String location;
	private String detail;
	private String email;
	private String hos_login_id;
	private String hos_pwd;
	private String hos_code;
	
	public Hospital(String id, String name_kor, String name_eng, String tel, String country, String city,
			String district, String location, String detail, String email, String hos_login_id, String hos_pwd, String hos_code) {
		super();
		this.id = id;
		this.name_kor = name_kor;
		this.name_eng = name_eng;
		this.tel = tel;
		this.country = country;
		this.city = city;
		this.district = district;
		this.location = location;
		this.detail = detail;
		this.email = email;
		this.hos_login_id = hos_login_id;
		this.hos_pwd = hos_pwd;
		this.hos_code = hos_code;
	}

	/*
	 * public Hospital(String id, String name_kor, String name_eng, String tel,
	 * String location, String detail, String email) { super(); this.id = id;
	 * this.name_kor = name_kor; this.name_eng = name_eng; this.tel = tel;
	 * this.location = location; this.detail = detail; this.email = email; }
	 */
	
	//no id
	/*
	 * public Hospital(String name_kor, String name_eng, String tel, String country,
	 * String city, String district, String location, String detail) { super();
	 * this.name_kor = name_kor; this.name_eng = name_eng; this.tel = tel;
	 * this.country = country; this.city = city; this.district = district;
	 * this.location = location; this.detail = detail; }
	 * 
	 */
	
	public Hospital() {}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName_kor() {
		return name_kor;
	}
	public void setName_kor(String name_kor) {
		this.name_kor = name_kor;
	}
	public String getName_eng() {
		return name_eng;
	}
	public void setName_eng(String name_eng) {
		this.name_eng = name_eng;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHos_login_id() {
		return hos_login_id;
	}

	public void setHos_login_id(String hos_login_id) {
		this.hos_login_id = hos_login_id;
	}

	public String getHos_pwd() {
		return hos_pwd;
	}

	public void setHos_pwd(String hos_pwd) {
		this.hos_pwd = hos_pwd;
	}

	public String getHos_code() {
		return hos_code;
	}

	public void setHos_code(String hos_code) {
		this.hos_code = hos_code;
	}
	
	
	
}
