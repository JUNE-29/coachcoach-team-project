package com.coachcoach.domain;

import java.io.Serializable;
import java.sql.Date;

public class Weight implements Serializable {
  private static final long serialVersionUID = 1L;

  int no;
  int memberNo;
  int weight;
  Date measureDate;
  Member member;


  @Override
  public String toString() {
    return "Weight [no=" + no + ", memberNo=" + memberNo + ", weight=" + weight + ", measureDate="
        + measureDate + ", member=" + member + "]";
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

  public int getWeight() {
    return weight;
  }

  public void setWeight(int weight) {
    this.weight = weight;
  }

  public Date getMeasureDate() {
    return measureDate;
  }

  public void setMeasureDate(Date measureDate) {
    this.measureDate = measureDate;
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
    result = prime * result + ((measureDate == null) ? 0 : measureDate.hashCode());
    result = prime * result + ((member == null) ? 0 : member.hashCode());
    result = prime * result + memberNo;
    result = prime * result + no;
    result = prime * result + weight;
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
    Weight other = (Weight) obj;
    if (measureDate == null) {
      if (other.measureDate != null)
        return false;
    } else if (!measureDate.equals(other.measureDate))
      return false;
    if (member == null) {
      if (other.member != null)
        return false;
    } else if (!member.equals(other.member))
      return false;
    if (memberNo != other.memberNo)
      return false;
    if (no != other.no)
      return false;
    if (weight != other.weight)
      return false;
    return true;
  }



}
