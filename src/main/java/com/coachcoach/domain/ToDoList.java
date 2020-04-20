package com.coachcoach.domain;

import java.io.Serializable;
import java.sql.Date;

public class ToDoList implements Serializable {
  private static final long serialVersionUID = 1L;

  int no;
  int memberNo;
  String memo;
  Date createDate;


  @Override
  public String toString() {
    return "ToDoList [no=" + no + ", memberNo=" + memberNo + ", memo=" + memo + ", createDate="
        + createDate + "]";
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
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

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((createDate == null) ? 0 : createDate.hashCode());
    result = prime * result + memberNo;
    result = prime * result + ((memo == null) ? 0 : memo.hashCode());
    result = prime * result + no;
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    ToDoList other = (ToDoList) obj;
    if (createDate == null) {
      if (other.createDate != null)
        return false;
    } else if (!createDate.equals(other.createDate))
      return false;
    if (memberNo != other.memberNo)
      return false;
    if (memo == null) {
      if (other.memo != null)
        return false;
    } else if (!memo.equals(other.memo))
      return false;
    if (no != other.no)
      return false;
    return true;
  }
}
