package com.coachcoach.domain;

import java.io.Serializable;

public class Workout implements Serializable {

  private static final long serialVersionUID = 1L;

  int no; // 운동번호
  String name; // 이름
  String unit; // 운동단위


  @Override
  public String toString() {
    return "Workout [no=" + no + ", name=" + name + ", unit=" + unit + "]";
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getUnit() {
    return unit;
  }

  public void setUnit(String unit) {
    this.unit = unit;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((name == null) ? 0 : name.hashCode());
    result = prime * result + no;
    result = prime * result + ((unit == null) ? 0 : unit.hashCode());
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
    Workout other = (Workout) obj;
    if (name == null) {
      if (other.name != null)
        return false;
    } else if (!name.equals(other.name))
      return false;
    if (no != other.no)
      return false;
    if (unit == null) {
      if (other.unit != null)
        return false;
    } else if (!unit.equals(other.unit))
      return false;
    return true;
  }
}
