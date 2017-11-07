package com.neusoft.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Logout {
	
	@RequestMapping("logout")
	public String gohome(HttpServletRequest request){
		HttpSession hs = request.getSession();
		hs.invalidate();
		return "redirect:/";
	}
}
