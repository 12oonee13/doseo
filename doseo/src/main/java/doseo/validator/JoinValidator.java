
package doseo.validator;


import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import doseo.command.MemberCommand;

public class JoinValidator implements Validator {

   @Override
   public boolean supports(Class<?> clazz) {
      return MemberCommand.class.isAssignableFrom(clazz);
   }

   @Override
   public void validate(Object target, Errors errors) {
      MemberCommand member = (MemberCommand) target;
      
      if (member.hasPassword()) {
         if (member.getPassword().length() < 6)
            errors.rejectValue("password", "shortPassword");
         if (!member.isSamePasswordConfirmPassword())
            errors.rejectValue("confirmPassword", "notSamePassword");
      }   
      
   }
}
