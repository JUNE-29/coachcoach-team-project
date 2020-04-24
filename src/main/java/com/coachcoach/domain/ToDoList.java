package com.coachcoach.domain;

import java.io.Serializable;
import java.sql.Date;

public class ToDoList implements Serializable {
  private static final long serialVersionUID = 1L;

  int no;
  String memo;
  Date createDate;
  Member member;

  @Override
  public String toString() {
    return "ToDoList [no=" + no + ", memo=" + memo + ", createDate=" + createDate + ", member="
        + member + "]";
  }


  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getMemo() {
    return memo;
  }

  public void setMemo(String memo) {
    this.memo = memo;
  }

  public Date getCreateDate() {
    return createDate;
  }

  public void setCreateDate(Date createDate) {
    this.createDate = createDate;
  }

  public Member getMember() {
    return member;
  }

  public void setMember(Member member) {
    this.member = member;
  }



}
