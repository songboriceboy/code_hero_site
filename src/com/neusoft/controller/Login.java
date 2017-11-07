package com.neusoft.controller;

import com.neusoft.domain.Userinfo;
import com.neusoft.service.IUserinfoService;
import com.neusoft.util.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
@Controller
public class Login {
	
	@Autowired
	private IUserinfoService us;
	
	@RequestMapping("login")
	public String login(){
		return "login";
	}
	
	@RequestMapping("logins")
	public String logins(Userinfo u,HttpServletRequest request){
		String md5Pass = Md5Utils.md5(u.getPassword());
		u.setPassword(md5Pass);
		Userinfo user = us.checkUserinfo(u);
		HttpSession hs = request.getSession();
		if(user!=null){
			hs.setAttribute("user",user);
			if(user.getPower().equals("0")){
				return "redirect:/";
			}
			else if(user.getPower().equals("1")){
				
				return "teacher";
			}else if(user.getPower().equals("2")){
				return "admin";
			}
			
		}
		return "login";

	}
}
