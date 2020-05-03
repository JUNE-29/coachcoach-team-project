package com.coachcoach.domain;

import java.io.Serializable;

public class ToDoList implements Serializable {
  private static final long serialVersionUID = 1L;

  int no;
  int memberNo;
  String memo;
  String createDate;
  Member member;

  @Override
  public String toString() {
    return "ToDoList [no=" + no + ", memberNo=" + memberNo + ", memo=" + memo + ", createDate="
        + createDate + ", member=" + member + "]";
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

  public String getCreateDate() {
    return createDate;
  }

  public void setCreateDate(String createDate) {
    this.createDate = createDate;
  }

  public Member getMember() {
    return member;
  }

  public void setMember(Member member) {
    this.member = member;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((createDate == null) ? 0 : createDate.hashCode());
    result = prime * result + ((member == null) ? 0 : member.hashCode());
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
    if (member == null) {
      if (other.member != null)
        return false;
    } else if (!member.equals(other.member))
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
