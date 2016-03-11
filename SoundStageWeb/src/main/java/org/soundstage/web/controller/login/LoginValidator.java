/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author atun.ullas
 */
@Controller
public class LoginValidator {

	@RequestMapping({ "/FrontApp.view", "/Home.view" })
	public String frontApp(Model model) {
		return "header";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/Login.do")
	public String login(Model model) {
		return "LoginUser";
	}

	@RequestMapping("/Register.do")
	public String register(Model model) {
		return "Register";
	}

	@RequestMapping("/Validate.run")
	public String validate(Model model) {
		return "LoginUser";
	}

	@RequestMapping("/FirstMovie.view")
	public String FirstMovie(Model model) {
		return "FirstMovie";
	}

	@RequestMapping("/SecondMovie.view")
	public String SecondMovie(Model model) {
		return "SecondMovie";
	}

	@RequestMapping("/ThirdMovie.view")
	public String ThirdMovie(Model model) {
		return "ThirdMovie";
	}

	@RequestMapping("/GuestUser.view")
	public String GuestUser(Model model) {
		return "GuestUser";
	}

	@RequestMapping(value = "/AboutUs.view")
	public String AboutUs(Model model) {
		return "AboutUs";
	}

	@RequestMapping(value = "/ResetPassword.do")
	public String ResetPassword() {
		return "ResetPassword";
	}
}
