package com.coachcoach.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class MemberWorkout implements Serializable {

  private static final long serialVersionUID = 1L;

  int workoutListNo; // 운동내역번호
  int memberNo; // 회원번호
  Date workoutDate; // 시행날짜
  int weight; // 체중
  int walkCount; // 걸음수
  List<WorkoutUnit> workoutUnit;
  Member member;

  @Override
  public String toString() {
    return "MemberWorkout [workoutListNo=" + workoutListNo + ", memberNo=" + memberNo
        + ", workoutDate=" + workoutDate + ", weight=" + weight + ", walkCount=" + walkCount
        + ", workoutUnit=" + workoutUnit + ", member=" + member + "]";
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

  public List<WorkoutUnit> getWorkoutUnit() {
    return workoutUnit;
  }

  public void setWorkoutUnit(List<WorkoutUnit> workoutUnit) {
    this.workoutUnit = workoutUnit;
  }

  public Member getMember() {
    return member;
  }

  public void setMember(Member member) {
    this.member = member;
  }



}
