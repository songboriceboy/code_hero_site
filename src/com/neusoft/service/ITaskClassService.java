package com.neusoft.service;

import com.neusoft.domain.TaskClass;

import java.util.List;

public interface ITaskClassService {
	
	//��ȡ����������������
	List<TaskClass> getAllClass();
    List<TaskClass> getAllClassWithTask();
	//����������
	int addTaskClass(TaskClass tc);
		
	//ͨ������idɾ���÷���
	int delTaskClassByClassId(int classid);
		
	//ͨ������id�޸ķ�����Ϣ
	int updateTaskClassByClassId(TaskClass tc);
		
	//ͨ��classid�õ�������Ϣ
	TaskClass getTaskClass(int classid);
}
