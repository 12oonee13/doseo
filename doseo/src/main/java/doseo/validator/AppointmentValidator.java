package doseo.validator;


import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import doseo.command.AppointmentCommand;

public class AppointmentValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return AppointmentCommand.class.isAssignableFrom(clazz);
	}
	@Override
	   public void validate(Object target, Errors errors) {
		AppointmentCommand appointment = (AppointmentCommand) target;
		//if (appointment.getDate() == null || appointment.getDate().trim().isEmpty())
		//	errors.rejectValue("date", "required");
		/*else {
			SimpleDateFormat dateFormatParser = new SimpleDateFormat("yy/MM/dd");//검증할 날짜 포맷 설정
			dateFormatParser.setLenient(false);//false일경우 처리시 입력한 값이 잘못된 형식일 시 오류가 발생
			try {
				dateFormatParser.parse(appointment.getDate());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}//대상 값 포맷에 적용되는지 확인
*/		
		//형식
		/*if (appointment.hasDate()) {
			SimpleDateFormat dateFormatParser = new SimpleDateFormat("yy/MM/dd");//검증할 날짜 포맷 설정
			dateFormatParser.setLenient(false);//false일경우 처리시 입력한 값이 잘못된 형식일 시 오류가 발생
			dateFormatParser.parse(appointment.getDate());//대상 값 포맷에 적용되는지 확인
			
			
		}*/
	}
}
