package com.neusoft.domain;
import com.tgb.lk.annotation.*;

@AutoBean(alias = "Userinfo",table="userinfo")
public class Userinfo {

  @AutoField(alias = "ÐòºÅ", column = "userid", isKey = true , isRequired = true , type="Integer", length=0)
  @ExcelVOAttribute(name = "userid", column = "A")
  private int userid;

  @AutoField(alias = "username", column = "username", isRequired = true, length = 100)
  @ExcelVOAttribute(name = "username", column = "B")
  private String username;

  @AutoField(alias = "password", column = "password", isRequired = true, length = 16)
  @ExcelVOAttribute(name = "password", column = "C")
  private String password;

  @AutoField(alias = "power", column = "power", isRequired = true, length = 1)
  @ExcelVOAttribute(name = "power", column = "D")
  private String power;


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
  public String getPassword() {
    return password;
  }
  public void setPassword(String password){
    this.password = password;
  }
  public String getPower() {
    return power;
  }
  public void setPower(String power){
    this.power = power;
  }
}
