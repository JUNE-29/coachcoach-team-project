package com.coachcoach.domain;

import java.io.Serializable;
import java.util.Date;

// 객체를 serialize 하려면 이 기능을 활성화시켜야 한다.
// - java.io.Serializable을 구현하라!
// - serialize 데이터를 구분하기 위해 버전 번호를 명시하라.
//
public class Member implements Serializable {

  private static final long serialVersionUID = 1L;

  int no;
  String id;
  String name;
  String gender;
  Date birth;
  String tel;
  String email;
  String password;
  String photo;
  Date createDate;
  int withdrawal;
  Date withdrawalDate;
  String withdrawalReason;
  String goal;
  String goalIn;

  @Override
  public String toString() {
    return "Member [no=" + no + ", id=" + id + ", name=" + name + ", gender=" + gender + ", birth="
        + birth + ", tel=" + tel + ", email=" + email + ", password=" + password + ", photo="
        + photo + ", createDate=" + createDate + ", withdrawal=" + withdrawal + ", withdrawalDate="
        + withdrawalDate + ", withdrawalReason=" + withdrawalReason + ", goal=" + goal + ", goalIn="
        + goalIn + "]";
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender;
  }

  public Date getBirth() {
    return birth;
  }

  public void setBirth(Date birth) {
    this.birth = birth;
  }

  public String getTel() {
    return tel;
  }

  public void setTel(String tel) {
    this.tel = tel;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getPhoto() {
    return photo;
  }

  public void setPhoto(String photo) {
    this.photo = photo;
  }

  public Date getCreateDate() {
    return createDate;
  }

  public void setCreateDate(Date createDate) {
    this.createDate = createDate;
  }

  public int getWithdrawal() {
    return withdrawal;
  }

  public void setWithdrawal(int withdrawal) {
    this.withdrawal = withdrawal;
  }

  public String getGoal() {
    return goal;
  }

  public Date getWithdrawalDate() {
    return withdrawalDate;
  }

  public void setWithdrawalDate(Date withdrawalDate) {
    this.withdrawalDate = withdrawalDate;
  }

  public String getWithdrawalReason() {
    return withdrawalReason;
  }

  public void setWithdrawalReason(String withdrawalReason) {
    this.withdrawalReason = withdrawalReason;
  }

  public void setGoal(String goal) {
    this.goal = goal;
  }

  public String getGoalIn() {
    return goalIn;
  }

  public void setGoalIn(String goalIn) {
    this.goalIn = goalIn;
  }

}
