package com.coachcoach.domain;

import java.io.Serializable;

public class WorkoutTag implements Serializable {
  private static final long serialVersionUID = 1L;

  int tagNo; // 운동태그번호
  String name; // 태그명

  @Override
  public String toString() {
    return "workoutTag [tagNo=" + tagNo + ", name=" + name + "]";
  }


  public int getTagNo() {
    return tagNo;
  }

  public void setTagNo(int tagNo) {
    this.tagNo = tagNo;
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
    result = prime * result + tagNo;
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
    WorkoutTag other = (WorkoutTag) obj;
    if (name == null) {
      if (other.name != null)
        return false;
    } else if (!name.equals(other.name))
      return false;
    if (tagNo != other.tagNo)
      return false;
    return true;
  }
}
