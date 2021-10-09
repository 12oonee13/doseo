package doseo.command;

import org.springframework.format.annotation.DateTimeFormat;

/*
 * name, language, nationality, date, time, phone number
 * message
 */
public class AppointmentCommand {
	
	//private String nationality;
	private String selected_language;
	//private String gender;
	//private String name;
	//private String phone;
	//@DateTimeFormat(pattern="yy/MM/dd")
	private String date;
	private String time;
	private String message;
	
	public AppointmentCommand() {}
	
	public AppointmentCommand(String selected_language, String date, String time, String message) {
		super();
		this.selected_language = selected_language;
		this.date = date;
		this.time = time;
		this.message = message;
	}
	public String getSelected_language() {
		return selected_language;
	}
	public void setSelected_language(String selected_language) {
		this.selected_language = selected_language;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	//date형식 
//	public boolean hasDate() {
//		return date != null && date.trim().length() > 0;
		
		/*
		if (date==null) return false;
		date = date.trim();
		try {
			SimpleDateFormat dateFormatParser = new SimpleDateFormat("yy/MM/dd");//검증할 날짜 포맷 설정
			dateFormatParser.setLenient(false);//false일경우 처리시 입력한 값이 잘못된 형식일 시 오류가 발생
			dateFormatParser.parse(date);//대상 값 포맷에 적용되는지 확인
			return true;
		}
		catch (Exception e){
			return false;
		}*/
	
	//충돌테스트 2	
//	}
}
