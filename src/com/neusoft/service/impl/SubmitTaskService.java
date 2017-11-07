package com.neusoft.service.impl;

import com.neusoft.domain.SubmitTask;
import com.neusoft.domain.SubmitTaskInfo;
import com.neusoft.mapper.SubmitTaskMapper;
import com.neusoft.service.ISubmitTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class SubmitTaskService implements ISubmitTaskService{

	
	@Autowired
	private SubmitTaskMapper stm;
	
	@Override
	public List<Map<String, Object>> getAllSubmitTaskBytaskid(int taskid) {
		// TODO Auto-generated method stub
		return stm.getAllSubmitTaskBytaskid(taskid);
	}

	@Override
	public List<Map<String, Object>> getSubmitTaskByTaskidTopten(int taskid) {
		// TODO Auto-generated method stub
		return stm.getSubmitTaskByTaskidTopten(taskid);
	}

	@Override
	public Map<String,Object> getInfoBySubmitid(int submitid) {
		// TODO Auto-generated method stub
		return stm.getInfoBySubmitid(submitid);
	}

	@Override
	public List<Map<String, Object>> getAllSubmitTaskByUserid(int userid) {
		// TODO Auto-generated method stub
		return stm.getAllSubmitTaskByUserid(userid);
	}

	@Override
	public int getSubmitCountsByUserid(int userid) {
		// TODO Auto-generated method stub
		return stm.getSubmitCountsByUserid(userid);
	}

	@Override
	public List<Map<String, Object>> getAllReviewByReviewuserid(int reviewuserid) {
		// TODO Auto-generated method stub
		return stm.getAllReviewByReviewuserid(reviewuserid);
	}

	@Override
	public int addSubmitTask(SubmitTask st) {
		return stm.addSubmitTask(st);
	}

	@Override
	public int checkSubmitTask(SubmitTaskInfo sti) {
		return stm.checkSubmitTask(sti);
	}

	@Override
	public int updateSubmitTask(SubmitTask st) {
		return stm.updateSubmitTask(st);
	}

}
