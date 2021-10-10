package doseo.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Pharmacy implements Serializable {
	private String id;
	private String name_kor;
	private String name_eng;
	private String tel;
	private String detail;
	private String district;
	private String language;
	
	public Pharmacy() {}

	
	public Pharmacy(String id, String name_kor, String name_eng, String tel, String detail) {
		super();
		this.id = id;
		this.name_kor = name_kor;
		this.name_eng = name_eng;
		this.tel = tel;
		this.detail = detail;
	}
	
	public Pharmacy(String id, String name_kor, String name_eng, String tel, String detail, String language) {
		super();
		this.id = id;
		this.name_kor = name_kor;
		this.name_eng = name_eng;
		this.tel = tel;
		this.detail = detail;
		this.language = language;
	}

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
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}
	
	
	
}
