package com.coachcoach.domain;

import java.io.Serializable;
import java.util.Date;

public class weight implements Serializable {
  private static final long serialVersionUID = 1L;

  int weightNo;
  int memberNo;
  int weight;
  Date measureDate;


  @Override
  public String toString() {
    return "weight [weightNo=" + weightNo + ", memberNo=" + memberNo + ", weight=" + weight
        + ", measureDate=" + measureDate + "]";
  }

  public int getWeightNo() {
    return weightNo;
  }

  public void setWeightNo(int weightNo) {
    this.weightNo = weightNo;
  }

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }

  public int getWeight() {
    return weight;
  }

  public void setWeight(int weight) {
    this.weight = weight;
  }

  public Date getMeasureDate() {
    return measureDate;
  }

  public void setMeasureDate(Date measureDate) {
    this.measureDate = measureDate;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((measureDate == null) ? 0 : measureDate.hashCode());
    result = prime * result + memberNo;
    result = prime * result + weight;
    result = prime * result + weightNo;
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
    weight other = (weight) obj;
    if (measureDate == null) {
      if (other.measureDate != null)
        return false;
    } else if (!measureDate.equals(other.measureDate))
      return false;
    if (memberNo != other.memberNo)
      return false;
    if (weight != other.weight)
      return false;
    if (weightNo != other.weightNo)
      return false;
    return true;
  }



}
