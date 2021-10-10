package doseo.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import doseo.command.JoinDoctorCommand;

public class JoinDoctorValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
	      return JoinDoctorCommand.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		JoinDoctorCommand doctor = (JoinDoctorCommand) target;
		
		
	}
}
