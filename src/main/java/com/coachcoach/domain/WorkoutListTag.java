package com.coachcoach.domain;

import java.io.Serializable;

public class WorkoutListTag implements Serializable {

  private static final long serialVersionUID = 1L;

  WorkoutList workoutlist; // workoutList에서 운동내역번호를 가지고 옴
  MemberWorkoutTag memberWorkoutTag; // memberWorkoutTag에서 운동번호를 가지고 옴


  @Override
  public String toString() {
    return "WorkoutListTag [workoutlist=" + workoutlist + ", memberWorkoutTag=" + memberWorkoutTag
        + "]";
  }

  public WorkoutList getWorkoutlist() {
    return workoutlist;
  }

  public void setWorkoutlist(WorkoutList workoutlist) {
    this.workoutlist = workoutlist;
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
    result = prime * result + ((memberWorkoutTag == null) ? 0 : memberWorkoutTag.hashCode());
    result = prime * result + ((workoutlist == null) ? 0 : workoutlist.hashCode());
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
    WorkoutListTag other = (WorkoutListTag) obj;
    if (memberWorkoutTag == null) {
      if (other.memberWorkoutTag != null)
        return false;
    } else if (!memberWorkoutTag.equals(other.memberWorkoutTag))
      return false;
    if (workoutlist == null) {
      if (other.workoutlist != null)
        return false;
    } else if (!workoutlist.equals(other.workoutlist))
      return false;
    return true;
  }



}
