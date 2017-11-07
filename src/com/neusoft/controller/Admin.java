package com.neusoft.controller;

import com.alibaba.fastjson.JSON;
import com.neusoft.domain.Task;
import com.neusoft.domain.TaskClass;
import com.neusoft.domain.TaskWithCount;
import com.neusoft.domain.Userinfo;
import com.neusoft.jsonobj.JosnOBJ;
import com.neusoft.service.ISubmitTaskService;
import com.neusoft.service.ITaskClassService;
import com.neusoft.service.ITaskService;
import com.neusoft.service.IUserinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("admin")
public class Admin {
	@Autowired
	private IUserinfoService us;
	@Autowired
	private ITaskService ts;
    @Autowired
    private ISubmitTaskService sts;

	@Autowired
	private ITaskClassService tcs;
	@RequestMapping("adminalluser")
	public String admin(){
		
		return "admin";
	}
	@RequestMapping("admin_task_list")
	public String admin_task_list()  {

		return "admin_task_list";
	}
	@RequestMapping("tasklist")
	public void tasklist(HttpServletResponse response) throws IOException {

		List<TaskWithCount> use = ts.getAllTask();
		JosnOBJ<TaskWithCount> list = new JosnOBJ<TaskWithCount>();
		list.setList(use);
		String struser = JSON.toJSONString(list);
		PrintWriter pw = response.getWriter();
		pw.println(struser);
	}



	@RequestMapping("admingetalluserinfo")
	public void getalluserinfo(HttpServletResponse response) throws IOException{
		List<Userinfo> use = us.alluserinfo();
		JosnOBJ<Userinfo> list = new JosnOBJ<Userinfo>();
		list.setList(use);
		String struser = JSON.toJSONString(list);
		PrintWriter pw = response.getWriter();
		pw.println(struser);
	}
	
	@RequestMapping("admindeluser/{userid}")
	public String deluser(@PathVariable int userid){
		us.deluser(userid);
		return "redirect:/adminalluser";
	}

	@RequestMapping("modifytask/{taskid}")
	public ModelAndView modifytask(@PathVariable int taskid){
		Task task = ts.getTaskDetail(taskid);
		List<TaskClass> tc = tcs.getAllClass();
		ModelAndView mav = new ModelAndView();
		System.out.println(task.getTitle());
		mav.addObject("task",task);
		mav.addObject("task_class",tc);
		mav.setViewName("addTask");
		return mav;

	}

	@RequestMapping("adminaddTask")
	public ModelAndView adminaddTask(){
		List<TaskClass> tc = tcs.getAllClass();
		ModelAndView mav = new ModelAndView();
//		mav.addObject("task",task);
		mav.addObject("task_class",tc);
		mav.setViewName("addTask");
		return mav;
//		return "addTask";
	}
	
	@RequestMapping("adminaddTeacher")
	public String adminaddTeacher(){
		return "addTeacher";
	}
	
	@RequestMapping("adminhome")
	public String adminhome(HttpServletRequest request){
		HttpSession hs = request.getSession();
		Userinfo user = (Userinfo) hs.getAttribute("user");
		if(user.getPower().equals("1")){
			return "teacher";
		}else if(user.getPower().equals("2")){
			return "addTeacher";
		}
		return "";
	}
}
