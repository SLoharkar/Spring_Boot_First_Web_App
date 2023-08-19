package com.example.demo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistrationController {
	
	@RequestMapping("/")
	public String register()
	{
		return "Registration_Form";
	}

//Register Form Details 
	@RequestMapping("/Login")
	public ModelAndView userInfo(UserRegistration reg)
	{
		ModelMap model = new ModelMap();
		model.addAttribute("user_name", reg.getUname());
		model.addAttribute("user_email", reg.getEmail());
		model.addAttribute("cr_password", reg.getCrpassword());
		model.addAttribute("co_password", reg.getCopassword());
		
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
	
	
		int result=reg.Display(cemail, cpassword);
		
		if(result==1)
		{
			mv = new ModelAndView("Registration_Form");
		}
			return mv;

	}
	
	
}
