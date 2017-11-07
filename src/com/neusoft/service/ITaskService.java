package com.neusoft.service;

import java.util.List;

import com.neusoft.domain.Task;
import com.neusoft.domain.TaskWithCount;

public interface ITaskService {
	
	//�õ�ȫ������
	List<TaskWithCount> getAllTask();
	
	//����µ�����
	int addTask(Task task);
	int updateTask(Task task);
	//������������
	int addSubmission(int taskid);
	
	//�鿴��������
	Task getTaskDetail(int taskid);

	TaskWithCount getTaskDetailWithCount(int taskid);
}
