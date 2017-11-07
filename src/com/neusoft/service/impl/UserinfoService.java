package com.neusoft.service.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.domain.Userinfo;
import com.neusoft.mapper.UserinfoMapper;
import com.neusoft.service.IUserinfoService;
@Service
public class UserinfoService implements IUserinfoService{
	
	@Autowired
	private UserinfoMapper um;
	@Override
	public Userinfo getUsername(int userid) {
		// TODO Auto-generated method stub
		return um.getUsername(userid);
	}

	@Override
	public int addUser(Userinfo ui) {
		// TODO Auto-generated method stub
		return um.addUser(ui);
	}

	@Override
	public int addTeacher(Userinfo ui) {
		// TODO Auto-generated method stub
		return um.addTeacher(ui);
	}

	@Override
	public int checkUsername(Userinfo u) {
		// TODO Auto-generated method stub
		return um.checkUsername(u);
	}

	@Override
	public Userinfo checkUserinfo(Userinfo ui) {
		// TODO Auto-generated method stub
		return um.checkUserinfo(ui);
	}

	@Override
	public List<Userinfo> alluserinfo() {
		// TODO Auto-generated method stub
		return um.alluserinfo();
	}

	@Override
	public int deluser(int userid) {
		// TODO Auto-generated method stub
		return um.deluser(userid);
	}

}
