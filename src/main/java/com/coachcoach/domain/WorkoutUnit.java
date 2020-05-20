package com.coachcoach.domain;

import java.io.Serializable;

public class WorkoutUnit implements Serializable {

  private static final long serialVersionUID = 1L;

  int workoutNo;
  String unit;
  String name;

  @Override
  public String toString() {
    return "WorkoutUnit [workoutNo=" + workoutNo + ", unit=" + unit + ", name=" + name + "]";
  }

  public int getWorkoutNo() {
    return workoutNo;
  }

  public void setWorkoutNo(int workoutNo) {
    this.workoutNo = workoutNo;
  }

  public String getUnit() {
    return unit;
  }

  public void setUnit(String unit) {
    this.unit = unit;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }



}
