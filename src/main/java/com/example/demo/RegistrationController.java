package com.example.demo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistrationController {
	
	        
	@RequestMapping("/")
	public String register()
	{
		//return "form1";
		return "Registration_Form";
	}
	
//Register Form Details 

	@RequestMapping("/Login")
	public ModelAndView userInfo(UserRegistration reg)
	{
		ModelAndView mv = new ModelAndView("Login_Form");	
		return mv;
	}
//Verification
	@RequestMapping("/Credential_Verify")
	public ModelAndView userVerify(HttpServletRequest request)
	{
		UserRegistration reg=new UserRegistration();
		ModelAndView mv = new ModelAndView("Login_Form");
		String cemail=request.getParameter("email");
		String cpassword=request.getParameter("password");
	
	
		int result=reg.cr_verify(cemail, cpassword);
		
		if(result == 1)
		{
			String msg="Login Sucessful";  
            mv.addObject("message", msg);  
            mv.setViewName("view");  
		}
		else if(result == 0)
		{
            String msg="Sorry You entered an incorrect email or password";  
            mv.addObject("message", msg);  
            mv.setViewName("error"); 
		}
			return mv;
			
	}
	
	
}
