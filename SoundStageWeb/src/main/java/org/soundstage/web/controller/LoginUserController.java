/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.soundstage.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author atun.ullas
 */
@Controller
public class LoginUserController {

	@RequestMapping({ "/FrontApp.view", "/Home.view" })
	public String frontApp(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(true);
		System.out.println(session.getId());
		return "header";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/Login.do")
	public String login(HttpServletRequest request, Model model) {
		System.out.println(request.getSession(false).getId());
		return "LoginUser";
	}

	@RequestMapping("/GuestUser.view")
	public String GuestUser(HttpServletRequest request,Model model) {
		System.out.println(request.getSession(false).getId());
		return "GuestUser";
	}
	
	@RequestMapping(value = "/AboutUs.view")
	public String AboutUs(HttpServletRequest request,Model model) {
		System.out.println(request.getSession(false).getId());
		return "AboutUs";
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

}
