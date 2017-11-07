package com.neusoft.service.impl;

import com.neusoft.domain.TaskClass;
import com.neusoft.mapper.TaskClassMapper;
import com.neusoft.service.ITaskClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TaskClassService implements ITaskClassService{
	@Autowired
	private TaskClassMapper tck;
	@Override
	public List<TaskClass> getAllClass() {
		// TODO Auto-generated method stub
		return tck.getAllClass();
	}

	@Override
	public List<TaskClass> getAllClassWithTask() {
		return tck.getAllClassWithTask();
	}

	@Override
	public int addTaskClass(TaskClass tc) {
		// TODO Auto-generated method stub
		return tck.addTaskClass(tc);
	}

	@Override
	public int delTaskClassByClassId(int classid) {
		// TODO Auto-generated method stub
		return tck.delTaskClassByClassId(classid);
	}

	@Override
	public int updateTaskClassByClassId(TaskClass tc) {
		// TODO Auto-generated method stub
		return tck.updateTaskClassByClassId(tc);
	}

	@Override
	public TaskClass getTaskClass(int classid) {
		// TODO Auto-generated method stub
		return tck.getTaskClass(classid);
	}

}
