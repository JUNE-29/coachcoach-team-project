package com.coachcoach.domain;

import java.io.Serializable;

public class CoachingProgramBoard implements Serializable {

  private static final long serialVersionUID = 1L;

  int no;
  int coachNo;
  int programNo;
  String content;
  String createdDate;

  @Override
  public String toString() {
    return "CoachingProgramBoards [no=" + no + ", coachNo=" + coachNo + ", programNo=" + programNo
        + ", content=" + content + ", createdDate=" + createdDate + "]";
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getCoachNo() {
    return coachNo;
  }

  public void setCoachNo(int coachNo) {
    this.coachNo = coachNo;
  }

  public int getProgramNo() {
    return programNo;
  }

  public void setProgramNo(int programNo) {
    this.programNo = programNo;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public String getCreatedDate() {
    return createdDate;
  }

  public void setCreatedDate(String createdDate) {
    this.createdDate = createdDate;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + coachNo;
    result = prime * result + (content == null ? 0 : content.hashCode());
    result = prime * result + (createdDate == null ? 0 : createdDate.hashCode());
    result = prime * result + no;
    result = prime * result + programNo;
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
    CoachingProgramBoard other = (CoachingProgramBoard) obj;
    if (coachNo != other.coachNo)
      return false;
    if (content == null) {
      if (other.content != null)
        return false;
    } else if (!content.equals(other.content))
      return false;
    if (createdDate == null) {
      if (other.createdDate != null)
        return false;
    } else if (!createdDate.equals(other.createdDate))
      return false;
    if (no != other.no)
      return false;
    if (programNo != other.programNo)
      return false;
    return true;
  }

}
