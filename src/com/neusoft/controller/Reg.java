package com.neusoft.controller;

import com.neusoft.domain.Userinfo;
import com.neusoft.service.IUserinfoService;
import com.neusoft.util.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
public class Reg {
	
	@Autowired
	private IUserinfoService us;
	
	@RequestMapping("reg")
	public String reg(){
		
		return "register";
	}
	
	@RequestMapping("check")
	public void check(Userinfo u,HttpServletResponse response) throws IOException{
		 int count = us.checkUsername(u);
		 PrintWriter pw = response.getWriter();
		 pw.println(count);

	}
	
	@RequestMapping("register")
	public String register(Userinfo u,HttpServletRequest request){
		HttpSession hs = request.getSession();
		String md5Pass = Md5Utils.md5(u.getPassword());
		u.setPassword(md5Pass);
		us.addUser(u);
		hs.setAttribute("user",u);
		
		return "redirect:/";
	}
}
