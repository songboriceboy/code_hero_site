package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.domain.SubmitTask;
import com.neusoft.domain.SubmitTaskInfo;


public interface SubmitTaskMapper {

	//ͨ��taskid�õ��������ȫ�����ύ�����б�()
	List<Map<String,Object>> getAllSubmitTaskBytaskid(int taskid);
	
	//ͨ��taskid�õ�����������ύ�����б�(�õ��÷�ǰ10)
	List<Map<String,Object>> getSubmitTaskByTaskidTopten(int taskid);
	
	//ͨ��submitid�õ����ύ�����ȫ����Ϣ
	Map<String,Object> getInfoBySubmitid(int submitid);
	
	//ͨ��userid�õ����û���ȫ�����ύ����
	List<Map<String,Object>> getAllSubmitTaskByUserid(int userid);
	
	//ͨ��userid�õ����û���ȫ�����ύ��������
	int getSubmitCountsByUserid(int userid);
	
	//ͨ��reviewuserid�õ����û����۵�ȫ�����ύ����
	List<Map<String,Object>> getAllReviewByReviewuserid(int reviewuserid);
	int addSubmitTask(SubmitTask st);
	int checkSubmitTask(SubmitTaskInfo sti);
	int updateSubmitTask(SubmitTask st);
}
