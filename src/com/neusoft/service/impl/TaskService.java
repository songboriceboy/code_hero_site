package com.neusoft.service.impl;

import java.util.List;

import com.neusoft.domain.TaskWithCount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.domain.Task;
import com.neusoft.mapper.TaskMapper;
import com.neusoft.service.ITaskService;
@Service
public class TaskService implements ITaskService{
	@Autowired
	private TaskMapper tm;
	@Override
	public List<TaskWithCount> getAllTask() {
		// TODO Auto-generated method stub
		return tm.getAllTask();
	}

	@Override
	public int addTask(Task task) {
		// TODO Auto-generated method stub
		return tm.addTask(task);
	}

	@Override
	public int updateTask(Task task) {
		return tm.updateTask(task);
	}

	@Override
	public int addSubmission(int taskid) {
		// TODO Auto-generated method stub
		return tm.addSubmission(taskid);
	}

	@Override
	public Task getTaskDetail(int taskid) {
		// TODO Auto-generated method stub
		return tm.getTaskDetail(taskid);
	}

	@Override
	public TaskWithCount getTaskDetailWithCount(int taskid) {
		return tm.getTaskDetailWithCount(taskid);
	}

}
