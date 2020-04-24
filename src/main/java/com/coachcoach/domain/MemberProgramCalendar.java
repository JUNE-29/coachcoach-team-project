package com.coachcoach.domain;

import java.io.Serializable;
import java.util.Date;

public class MemberProgramCalendar implements Serializable {

  private static final long serialVersionUID = 1L;

  int no;
  int memberProgramNo;
  String plan;
  Date workoutDate;

  @Override
  public String toString() {
    return "MemberProgramCalendar [no=" + no + ", memberProgramNo=" + memberProgramNo + ", plan="
        + plan + ", workoutDate=" + workoutDate + "]";
  }

  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getMemberProgramNo() {
    return memberProgramNo;
  }
  public void setMemberProgramNo(int memberProgramNo) {
    this.memberProgramNo = memberProgramNo;
  }
  public String getPlan() {
    return plan;
  }
  public void setPlan(String plan) {
    this.plan = plan;
  }
  public Date getWorkoutDate() {
    return workoutDate;
  }
  public void setWorkoutDate(Date workoutDate) {
    this.workoutDate = workoutDate;
  }
  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + memberProgramNo;
    result = prime * result + no;
    result = prime * result + ((plan == null) ? 0 : plan.hashCode());
    result = prime * result + ((workoutDate == null) ? 0 : workoutDate.hashCode());
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
    MemberProgramCalendar other = (MemberProgramCalendar) obj;
    if (memberProgramNo != other.memberProgramNo)
      return false;
    if (no != other.no)
      return false;
    if (plan == null) {
      if (other.plan != null)
        return false;
    } else if (!plan.equals(other.plan))
      return false;
    if (workoutDate == null) {
      if (other.workoutDate != null)
        return false;
    } else if (!workoutDate.equals(other.workoutDate))
      return false;
    return true;
  }


}
