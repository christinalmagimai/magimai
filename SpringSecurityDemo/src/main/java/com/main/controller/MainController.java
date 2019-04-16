package com.main.controller;
//editeddddddd
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MainController {
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public ModelAndView main() {
		return new ModelAndView("welcomePage");
	}

	@RequestMapping(value = "/loginPage",method= RequestMethod.GET)
	public ModelAndView loginPage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {
		ModelAndView andView =new ModelAndView();
		if(error!=null){
			andView.addObject("error","invalid credentials provided.");
			andView.setViewName("LoginPage");
			return andView;
		}
		else if(logout!=null){
			andView.addObject("message","Logged out successfully.");
			andView.setViewName("LoginPage");
			return andView;
		}
		else if(logout==null && error==null){
			
			return new ModelAndView("LoginPage");
		}
		else{
		return new ModelAndView("Success");
		}
	}
	
	
}
