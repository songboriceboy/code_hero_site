package com.neusoft.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.domain.*;
import com.neusoft.jsonobj.JosnOBJ;
import com.neusoft.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.Map;


@Controller
public class Home {
	@Autowired
	private ITaskService ts;
	@Autowired
	private ITaskClassService tck;
	@Autowired
	private ISubmitTaskService sts;
	@Autowired
	private IReviewService rs;
	@Autowired
	private IUserinfoService us;
	
	@RequestMapping("/")
	public ModelAndView getAllTaskAndAllTaskClass(){
		List<TaskWithCount> task =ts.getAllTask();
		List<TaskClass> tc = tck.getAllClassWithTask();
		ModelAndView mav = new ModelAndView();
		mav.addObject("task",task);
		mav.addObject("task_class",tc);
		mav.setViewName("home");
		return mav;
	}
	@RequestMapping("submit_task")
	public void submit_task(SubmitTask task,HttpServletResponse response) throws IOException {

		task.setSubmittime(new Date().toLocaleString());
		task.setTitle("");
		task.setUsername("");

		SubmitTaskInfo sti = new SubmitTaskInfo();
		sti.setTaskid(task.getTaskid());
		sti.setUserid(task.getUserid());

		int count = sts.checkSubmitTask(sti);
		if(count <=0 )
		{
			sts.addSubmitTask(task);
		}
		else
		{
			sts.updateSubmitTask(task);
		}

		String strTask = JSON.toJSONString(task);
		PrintWriter pw = response.getWriter();
		pw.println(strTask);

	}
	@RequestMapping("detail/{taskid}")
	public ModelAndView getdetail(@PathVariable int taskid){
		TaskWithCount t = ts.getTaskDetailWithCount(taskid);
		int score = rs.getTaskAvgScore(taskid);
//		List<Map<String,Object>> list_ten = sts.getSubmitTaskByTaskidTopten(taskid);
		List<Map<String,Object>> list_all = sts.getAllSubmitTaskBytaskid(taskid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("task",t);
		mav.addObject("score",score);
//		mav.addObject("list_ten",list_ten);
		mav.addObject("submit_task",list_all);
		mav.setViewName("taskdetail");
		return mav;
	}
	
	@RequestMapping("review/{submitid}")
	public ModelAndView getReview(@PathVariable int submitid){
		Map<String,Object> st = sts.getInfoBySubmitid(submitid);
//		List<Review> list = rs.getAllReviewBySubmitid(submitid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("submittask",st);
//		mav.addObject("review",list);
		mav.setViewName("review");
		return mav;
	}
	
	@RequestMapping("profile/{userid}")
	public ModelAndView getuserhome(@PathVariable int userid){
		Userinfo user = us.getUsername(userid);
		int submitcount = sts.getSubmitCountsByUserid(userid);
		int reviewcount = rs.getReviewCountsByUserid(userid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("submitcount", submitcount);
		mav.addObject("reviewcount", reviewcount);
		mav.addObject("userinfo",user);
		mav.setViewName("userhome");
		return mav;
	}
	
	@RequestMapping("getsubmit/{userid}")
	public void getsubmit(@PathVariable int userid,HttpServletResponse response) throws IOException{
		List<Map<String,Object>> submitMap = sts.getAllSubmitTaskByUserid(userid);
		JosnOBJ<Map<String,Object>> list = new JosnOBJ<Map<String,Object>>();
		list.setList(submitMap);
		String strsub = JSON.toJSONString(list);
		PrintWriter pw = response.getWriter();
		pw.println(strsub);
	}
	
	@RequestMapping("getreview/{userid}")
	public void getreview(@PathVariable int userid,HttpServletResponse response) throws IOException{
		List<Map<String,Object>> revieMap = sts.getAllReviewByReviewuserid(userid);
		JosnOBJ<Map<String,Object>> list = new JosnOBJ<Map<String,Object>>();
		list.setList(revieMap);
		String strmap = JSON.toJSONString(list);
		PrintWriter pw = response.getWriter();
		pw.println(strmap);
	}
	@RequestMapping("about_us")
	public String aboutus(){

		return "aboutus";
	}
}
