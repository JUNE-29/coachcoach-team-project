package com.coachcoach.domain;

import java.io.Serializable;
import java.sql.Date;

public class WorkoutList implements Serializable {

  private static final long serialVersionUID = 1L;

  int no; // 운동내역번호
  int memberNo; // 회원번호
  Date workoutDate; // 시행날짜
  int walkCount; // 걸음수
  String etc; // 비고
  Member member;
  WorkoutListTag workoutListTag;
  MemberWorkoutTag memberWorkoutTag;


  @Override
  public String toString() {
    return "WorkoutList [no=" + no + ", memberNo=" + memberNo + ", workoutDate=" + workoutDate
        + ", walkCount=" + walkCount + ", etc=" + etc + ", member=" + member + ", workoutListTag="
        + workoutListTag + ", memberWorkoutTag=" + memberWorkoutTag + "]";
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

  public WorkoutListTag getWorkoutListTag() {
    return workoutListTag;
  }

  public void setWorkoutListTag(WorkoutListTag workoutListTag) {
    this.workoutListTag = workoutListTag;
  }

  public MemberWorkoutTag getMemberWorkoutTag() {
    return memberWorkoutTag;
  }

  public void setMemberWorkoutTag(MemberWorkoutTag memberWorkoutTag) {
    this.memberWorkoutTag = memberWorkoutTag;
  }


  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((etc == null) ? 0 : etc.hashCode());
    result = prime * result + ((member == null) ? 0 : member.hashCode());
    result = prime * result + memberNo;
    result = prime * result + ((memberWorkoutTag == null) ? 0 : memberWorkoutTag.hashCode());
    result = prime * result + no;
    result = prime * result + walkCount;
    result = prime * result + ((workoutDate == null) ? 0 : workoutDate.hashCode());
    result = prime * result + ((workoutListTag == null) ? 0 : workoutListTag.hashCode());
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
    if (memberNo != other.memberNo)
      return false;
    if (memberWorkoutTag == null) {
      if (other.memberWorkoutTag != null)
        return false;
    } else if (!memberWorkoutTag.equals(other.memberWorkoutTag))
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
    if (workoutListTag == null) {
      if (other.workoutListTag != null)
        return false;
    } else if (!workoutListTag.equals(other.workoutListTag))
      return false;
    return true;
  }



}
