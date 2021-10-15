package doseo.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Member implements Serializable {
	private String id;
	private String name;
	private String password;
	private String confirmPassword;
	private String phone;
	private String age;
	private String gender;
	private String nationality;
	
	public Member(String id, String name, String password, String confirmPassword, String phone, String age,
			String gender, String nationality) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.phone = phone;
		this.age = age;
		this.gender = gender;
		this.nationality = nationality;
	}

	public Member() {}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	

}