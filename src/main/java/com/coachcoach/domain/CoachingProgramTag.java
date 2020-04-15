package com.coachcoach.domain;

import java.io.Serializable;

public class CoachingProgramTag implements Serializable {
  private static final long serialVersionUID = 1L;

  int tagNo; // 운동태그번호
  int programNo; // 프로그램번호

  @Override
  public String toString() {
    return "coachingProgrameTag [tagNo=" + tagNo + ", programNo=" + programNo + "]";
  }

  public int getTagNo() {
    return tagNo;
  }

  public void setTagNo(int tagNo) {
    this.tagNo = tagNo;
  }

  public int getProgramNo() {
    return programNo;
  }

  public void setProgramNo(int programNo) {
    this.programNo = programNo;
  }


  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + programNo;
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
    CoachingProgramTag other = (CoachingProgramTag) obj;
    if (programNo != other.programNo)
      return false;
    if (tagNo != other.tagNo)
      return false;
    return true;
  }



}
