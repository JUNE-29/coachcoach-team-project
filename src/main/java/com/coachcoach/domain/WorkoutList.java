package com.coachcoach.domain;

import java.io.Serializable;
import java.sql.Date;

public class WorkoutList implements Serializable {

  private static final long serialVersionUID = 1L;

  int workoutList;         // 운동내역번호
  int memberNo;            // 일반회원번호
  int workoutNo;           // 운동번호
  Date workoutDate;        // 시행날짜
  int workoutAmount;       // 운동량
  int kcal;                // 소모칼로리

  @Override
  public String toString() {
    return "WorkoutList [workoutList=" + workoutList + ", memberNo=" + memberNo + ", workoutNo="
        + workoutNo + ", workoutDate=" + workoutDate + ", workoutAmount=" + workoutAmount
        + ", kcal=" + kcal + "]";
  }

  public int getWorkoutList() {
    return workoutList;
  }

  public void setWorkoutList(int workoutList) {
    this.workoutList = workoutList;
  }

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }

  public int getWorkoutNo() {
    return workoutNo;
  }

  public void setWorkoutNo(int workoutNo) {
    this.workoutNo = workoutNo;
  }

  public Date getWorkoutDate() {
    return workoutDate;
  }

  public void setWorkoutDate(Date workoutDate) {
    this.workoutDate = workoutDate;
  }

  public int getWorkoutAmount() {
    return workoutAmount;
  }

  public void setWorkoutAmount(int workoutAmount) {
    this.workoutAmount = workoutAmount;
  }

  public int getKcal() {
    return kcal;
  }

  public void setKcal(int kcal) {
    this.kcal = kcal;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + kcal;
    result = prime * result + memberNo;
    result = prime * result + workoutAmount;
    result = prime * result + ((workoutDate == null) ? 0 : workoutDate.hashCode());
    result = prime * result + workoutList;
    result = prime * result + workoutNo;
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
    if (kcal != other.kcal)
      return false;
    if (memberNo != other.memberNo)
      return false;
    if (workoutAmount != other.workoutAmount)
      return false;
    if (workoutDate == null) {
      if (other.workoutDate != null)
        return false;
    } else if (!workoutDate.equals(other.workoutDate))
      return false;
    if (workoutList != other.workoutList)
      return false;
    if (workoutNo != other.workoutNo)
      return false;
    return true;
  }



}
