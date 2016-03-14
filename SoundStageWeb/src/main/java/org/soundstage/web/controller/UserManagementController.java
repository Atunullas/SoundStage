package org.soundstage.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserManagementController {

	@RequestMapping("/Register.do")
	public String registerUser(HttpServletRequest request, Model model)
	{
		System.out.println(request.getSession(false).getId());
		return "Register";
	}
	
	@RequestMapping(value = "/ResetPassword.do")
	public String ResetPassword(HttpServletRequest request, Model model) {
		
		System.out.println(request.getSession(false).getId());
		return "ResetPassword";
	}
}
