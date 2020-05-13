package com.coachcoach.domain;

import java.io.Serializable;

public class WorkoutUnit implements Serializable {

  private static final long serialVersionUID = 1L;

  int no; // 운동시간번호
  int workoutNo; // 운동종목번호
  int unit; // 운동시간
  String name; // 운동종목이름


  @Override
  public String toString() {
    return "WorkoutUnit [no=" + no + ", workoutNo=" + workoutNo + ", unit=" + unit + ", name="
        + name + "]";
  }


  public int getNo() {
    return no;
  }


  public void setNo(int no) {
    this.no = no;
  }


  public int getWorkoutNo() {
    return workoutNo;
  }


  public void setWorkoutNo(int workoutNo) {
    this.workoutNo = workoutNo;
  }


  public int getUnit() {
    return unit;
  }


  public void setUnit(int unit) {
    this.unit = unit;
  }


  public String getName() {
    return name;
  }


  public void setName(String name) {
    this.name = name;
  }


  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((name == null) ? 0 : name.hashCode());
    result = prime * result + no;
    result = prime * result + unit;
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
    WorkoutUnit other = (WorkoutUnit) obj;
    if (name == null) {
      if (other.name != null)
        return false;
    } else if (!name.equals(other.name))
      return false;
    if (no != other.no)
      return false;
    if (unit != other.unit)
      return false;
    if (workoutNo != other.workoutNo)
      return false;
    return true;
  }



}
