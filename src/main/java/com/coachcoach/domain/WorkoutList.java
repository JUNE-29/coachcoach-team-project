package com.coachcoach.domain;

import java.io.Serializable;
import java.sql.Date;

public class WorkoutList implements Serializable {

  private static final long serialVersionUID = 1L;

  int no; // 운동내역번호
  Date workoutDate; // 시행날짜
  int walkCount; // 걸음수
  String etc; // 비고
  Member member; // 일반회원번호를 가지고 와야 함


  @Override
  public String toString() {
    return "WorkoutList [no=" + no + ", workoutDate=" + workoutDate + ", walkCount=" + walkCount
        + ", etc=" + etc + ", member=" + member + "]";
  }


  public static WorkoutList valueOf(String csv) {
    String[] data = csv.split(",");

    WorkoutList workoutList = new WorkoutList();
    workoutList.setNo(Integer.parseInt(data[0]));
    workoutList.setWorkoutDate(Date.valueOf(data[1]));
    workoutList.setWalkCount(Integer.parseInt(data[2]));
    workoutList.setEtc(data[3]);

    return workoutList;
  }



  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public Date getWorkoutDate() {
    return workoutDate;
  }

  public void setWorkoutDate(Date workoutDate) {
    this.workoutDate = workoutDate;
  }

  public int getWalkCount() {
    return walkCount;
  }

  public void setWalkCount(int walkCount) {
    this.walkCount = walkCount;
  }

  public String getEtc() {
    return etc;
  }

  public void setEtc(String etc) {
    this.etc = etc;
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
    result = prime * result + ((etc == null) ? 0 : etc.hashCode());
    result = prime * result + ((member == null) ? 0 : member.hashCode());
    result = prime * result + no;
    result = prime * result + walkCount;
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
    WorkoutList other = (WorkoutList) obj;
    if (etc == null) {
      if (other.etc != null)
        return false;
    } else if (!etc.equals(other.etc))
      return false;
    if (member == null) {
      if (other.member != null)
        return false;
    } else if (!member.equals(other.member))
      return false;
    if (no != other.no)
      return false;
    if (walkCount != other.walkCount)
      return false;
    if (workoutDate == null) {
      if (other.workoutDate != null)
        return false;
    } else if (!workoutDate.equals(other.workoutDate))
      return false;
    return true;
  }



}
