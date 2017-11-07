package com.neusoft.domain;

import com.tgb.lk.annotation.*;

@AutoBean(alias = "Review",table="review")
public class Review {

	private String reviewtime;
	
  public String getReviewtime() {
		return reviewtime;
	}
	public void setReviewtime(String reviewtime) {
		this.reviewtime = reviewtime;
	}
@AutoField(alias = "ÐòºÅ", column = "reviewid", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "reviewid", column = "A")
  private int reviewid;

  @AutoField(alias = "taskid", column = "taskid", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "taskid", column = "B")
  private int taskid;

  @AutoField(alias = "submitid", column = "submitid", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "submitid", column = "C")
  private int submitid;

  @AutoField(alias = "reviewuserid", column = "reviewuserid", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "reviewuserid", column = "D")
  private int reviewuserid;

  @AutoField(alias = "reviewusername", column = "reviewusername", isRequired = true, length = 100)
  @ExcelVOAttribute(name = "reviewusername", column = "E")
  private String reviewusername;

  @AutoField(alias = "reviewbody", column = "reviewbody", isRequired = true, length = 10000)
  @ExcelVOAttribute(name = "reviewbody", column = "F")
  private String reviewbody;

  @AutoField(alias = "score", column = "score", isRequired = true, type = "Integer")
  @ExcelVOAttribute(name = "score", column = "G")
  private int score;


  public int getReviewid() {
    return reviewid;
  }
  public void setReviewid(int reviewid){
    this.reviewid = reviewid;
  }
  public int getTaskid() {
    return taskid;
  }
  public void setTaskid(int taskid){
    this.taskid = taskid;
  }
  public int getSubmitid() {
    return submitid;
  }
  public void setSubmitid(int submitid){
    this.submitid = submitid;
  }
  public int getReviewuserid() {
    return reviewuserid;
  }
  public void setReviewuserid(int reviewuserid){
    this.reviewuserid = reviewuserid;
  }
  public String getReviewusername() {
    return reviewusername;
  }
  public void setReviewusername(String reviewusername){
    this.reviewusername = reviewusername;
  }
  public String getReviewbody() {
    return reviewbody;
  }
  public void setReviewbody(String reviewbody){
    this.reviewbody = reviewbody;
  }
  public int getScore() {
    return score;
  }
  public void setScore(int score){
    this.score = score;
  }
}
