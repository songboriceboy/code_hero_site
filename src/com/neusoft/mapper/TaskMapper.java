package com.neusoft.mapper;

import com.neusoft.domain.Task;
import com.neusoft.domain.TaskWithCount;

import java.util.List;

public interface TaskMapper {
	
	//�õ�ȫ������
	List<TaskWithCount> getAllTask();

	//����µ�����
	int addTask(Task task);
	
	//������������
	int addSubmission(int taskid);
	int updateTask(Task task);
	//�鿴��������
	Task getTaskDetail(int taskid);
	TaskWithCount getTaskDetailWithCount(int taskid);
}
