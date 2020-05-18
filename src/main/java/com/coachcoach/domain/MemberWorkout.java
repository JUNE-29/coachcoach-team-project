package com.coachcoach.domain;

import java.io.Serializable;
import java.sql.Date;

public class MemberWorkout implements Serializable {

  private static final long serialVersionUID = 1L;

  int workoutListNo; // 운동내역번호
  int memberNo; // 회원번호
  int workoutUnitNo; // 운동종목번호
  Date workoutDate; // 시행날짜
  int weight; // 체중
  int walkCount; // 걸음수
  Member member;

  @Override
  public String toString() {
    return "MemberWorkout [workoutListNo=" + workoutListNo + ", memberNo=" + memberNo
        + ", workoutUnitNo=" + workoutUnitNo + ", workoutDate=" + workoutDate + ", weight=" + weight
        + ", walkCount=" + walkCount + ", member=" + member + "]";
  }

  public int getWorkoutListNo() {
    return workoutListNo;
  }

  public void setWorkoutListNo(int workoutListNo) {
    this.workoutListNo = workoutListNo;
  }

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }

  public int getWorkoutUnitNo() {
    return workoutUnitNo;
  }

  public void setWorkoutUnitNo(int workoutUnitNo) {
    this.workoutUnitNo = workoutUnitNo;
  }

  public Date getWorkoutDate() {
    return workoutDate;
  }

  public void setWorkoutDate(Date workoutDate) {
    this.workoutDate = workoutDate;
  }

  public int getWeight() {
    return weight;
  }

  public void setWeight(int weight) {
    this.weight = weight;
  }

  public int getWalkCount() {
    return walkCount;
  }

  public void setWalkCount(int walkCount) {
    this.walkCount = walkCount;
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
    result = prime * result + ((member == null) ? 0 : member.hashCode());
    result = prime * result + memberNo;
    result = prime * result + walkCount;
    result = prime * result + weight;
    result = prime * result + ((workoutDate == null) ? 0 : workoutDate.hashCode());
    result = prime * result + workoutListNo;
    result = prime * result + workoutUnitNo;
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
    MemberWorkout other = (MemberWorkout) obj;
    if (member == null) {
      if (other.member != null)
        return false;
    } else if (!member.equals(other.member))
      return false;
    if (memberNo != other.memberNo)
      return false;
    if (walkCount != other.walkCount)
      return false;
    if (weight != other.weight)
      return false;
    if (workoutDate == null) {
      if (other.workoutDate != null)
        return false;
    } else if (!workoutDate.equals(other.workoutDate))
      return false;
    if (workoutListNo != other.workoutListNo)
      return false;
    if (workoutUnitNo != other.workoutUnitNo)
      return false;
    return true;
  }



}
