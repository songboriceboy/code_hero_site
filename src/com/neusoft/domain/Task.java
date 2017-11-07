package com.neusoft.domain;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Task",table="task")
public class Task {

  @AutoField(alias = "���", column = "taskid", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "taskid", column = "A")
  protected int taskid;

  @AutoField(alias = "title", column = "title", isRequired = true, length = 100)
  @ExcelVOAttribute(name = "title", column = "B")
  protected String title;

  @AutoField(alias = "difficulty", column = "difficulty", isRequired = true, length = 100)
  @ExcelVOAttribute(name = "difficulty", column = "C")
  protected String difficulty;

  @AutoField(alias = "pubdate", column = "pubdate", isRequired = true, length = 100)
  @ExcelVOAttribute(name = "pubdate", column = "D")
  protected String pubdate;

  @AutoField(alias = "taskclass", column = "taskclass", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "taskclass", column = "E")
  protected int taskclass;

  @AutoField(alias = "submission", column = "submission", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "submission", column = "F")
  protected int submission;

  @AutoField(alias = "taskdetail", column = "taskdetail", isRequired = true, length = 429496729)
  @ExcelVOAttribute(name = "taskdetail", column = "G")
  protected String taskdetail;

  protected String markdown;

  public String getMarkdown() {
    return markdown;
  }

  public void setMarkdown(String markdown) {
    this.markdown = markdown;
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
  public String getDifficulty() {
    return difficulty;
  }
  public void setDifficulty(String difficulty){
    this.difficulty = difficulty;
  }
  public String getPubdate() {
    return pubdate;
  }
  public void setPubdate(String pubdate){
    this.pubdate = pubdate;
  }
  public int getTaskclass() {
    return taskclass;
  }
  public void setTaskclass(int taskclass){
    this.taskclass = taskclass;
  }
  public int getSubmission() {
    return submission;
  }
  public void setSubmission(int submission){
    this.submission = submission;
  }
  public String getTaskdetail() {
    return taskdetail;
  }
  public void setTaskdetail(String taskdetail){
    this.taskdetail = taskdetail;
  }
}
