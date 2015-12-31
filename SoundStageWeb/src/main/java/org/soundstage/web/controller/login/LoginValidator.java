/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author atun.ullas
 */
@Controller
public class LoginValidator{
	
@RequestMapping("/Login.do")
public String login(){
	return "LoginUser";
}
							
@RequestMapping("/Register.do")
public String register(){
	return "Register";
}

@RequestMapping("/Validate.run")
public String validate(){
	return "LoginUser";
}

@RequestMapping("/FirstMovie.view")
public String FirstMovie(){
	return "FirstMovie";
}
@RequestMapping("/SecondMovie.view")
public String SecondMovie(){
	return "SecondMovie";
}
@RequestMapping("/ThirdMovie.view")
public String ThirdMovie(){
	return "ThirdMovie";
}

@RequestMapping(value ="/GuestUser.view")

public String GuestUser(Model model){
	model.addAttribute("isGuestUser","true");
	return "GuestUser";
}


@RequestMapping(value ="/AboutUs.view")

public String AboutUs(Model model){
	model.addAttribute("isGuestUser","true");
	return "AboutUs";
}

@RequestMapping(value ="/ResetPassword.do")
public String ResetPassword(){
	return "ResetPassword";
}
}
