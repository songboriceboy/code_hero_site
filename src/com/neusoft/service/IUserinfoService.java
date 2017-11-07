package com.neusoft.service;

import java.util.List;

import com.neusoft.domain.Userinfo;

public interface IUserinfoService {

		//通过userid得到该用户的名字
		Userinfo getUsername(int userid);
		
		//添加用户
		int addUser(Userinfo ui);
		
		//添加老师
		int addTeacher(Userinfo ui);
		
		//检查用户名
		int checkUsername(Userinfo u);
		
		//检查用户名密码是否正确
		Userinfo checkUserinfo(Userinfo ui);
		
		//查看全部用户
		List<Userinfo> alluserinfo();
		
		//删除用户
		int deluser(int userid);
}
