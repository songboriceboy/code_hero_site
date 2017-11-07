package com.neusoft.domain;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "SubmitTask",table="submit_task")
public class SubmitTask {

  @AutoField(alias = "ÐòºÅ", column = "submitid", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "submitid", column = "A")
  private int submitid;

  @AutoField(alias = "taskid", column = "taskid", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "taskid", column = "B")
  private int taskid;

  @AutoField(alias = "title", column = "title", isRequired = true, length = 100)
  @ExcelVOAttribute(name = "title", column = "C")
  private String title;

  @AutoField(alias = "userid", column = "userid", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "userid", column = "D")
  private int userid;

  @AutoField(alias = "username", column = "username", isRequired = true, length = 100)
  @ExcelVOAttribute(name = "username", column = "E")
  private String username;

  @AutoField(alias = "codeaddress", column = "codeaddress", isRequired = true, length = 100)
  @ExcelVOAttribute(name = "codeaddress", column = "F")
  private String codeaddress;

  @AutoField(alias = "demo", column = "demo", isRequired = true, length = 100)
  @ExcelVOAttribute(name = "demo", column = "G")
  private String demo;

  @AutoField(alias = "description", column = "description", isRequired = true, length = 10000)
  @ExcelVOAttribute(name = "description", column = "H")
  private String description;

  @AutoField(alias = "submittime", column = "submittime", isRequired = true, length = 100)
  @ExcelVOAttribute(name = "submittime", column = "I")
  private String submittime;


  public int getSubmitid() {
    return submitid;
  }
  public void setSubmitid(int submitid){
    this.submitid = submitid;
  }
  public int getTaskid() {
    return taskid;
  }
  public void setTaskid(int taskid){
    this.taskid = taskid;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title){
    this.title = title;
  }
  public int getUserid() {
    return userid;
  }
  public void setUserid(int userid){
    this.userid = userid;
  }
  public String getUsername() {
    return username;
  }
  public void setUsername(String username){
    this.username = username;
  }
  public String getCodeaddress() {
    return codeaddress;
  }
  public void setCodeaddress(String codeaddress){
    this.codeaddress = codeaddress;
  }
  public String getDemo() {
    return demo;
  }
  public void setDemo(String demo){
    this.demo = demo;
  }
  public String getDescription() {
    return description;
  }
  public void setDescription(String description){
    this.description = description;
  }
  public String getSubmittime() {
    return submittime;
  }
  public void setSubmittime(String submittime){
    this.submittime = submittime;
  }
}
