package com.neusoft.mapper;

import java.util.List;

import com.neusoft.domain.Userinfo;

public interface UserinfoMapper {
	
	//ͨ��userid�õ����û�������
	Userinfo getUsername(int userid);
	
	//����û�
	int addUser(Userinfo ui);
	
	//�����ʦ
	int addTeacher(Userinfo ui);
	
	//����û���
	int checkUsername(Userinfo u);
	
	//����û��������Ƿ���ȷ
	Userinfo checkUserinfo(Userinfo ui);
	
	//�鿴ȫ���û�
	List<Userinfo> alluserinfo();
	
	//ɾ���û�
	int deluser(int userid);
	
	
}
