package com.coachcoach.domain;

import java.io.Serializable;
import java.util.List;

public class CoachingProgramBoard implements Serializable {

  private static final long serialVersionUID = 1L;

  int no;
  int coachNo;
  int programNo;
  String title;
  String content;
  String createdDate;
  List<Member> members;
  String programName;

  @Override
  public String toString() {
    return "CoachingProgramBoard [no=" + no + ", coachNo=" + coachNo + ", programNo=" + programNo
        + ", title=" + title + ", content=" + content + ", createdDate=" + createdDate
        + ", members=" + members + ", programName=" + programName + "]";
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + coachNo;
    result = prime * result + ((content == null) ? 0 : content.hashCode());
    result = prime * result + ((createdDate == null) ? 0 : createdDate.hashCode());
    result = prime * result + ((members == null) ? 0 : members.hashCode());
    result = prime * result + no;
    result = prime * result + ((programName == null) ? 0 : programName.hashCode());
    result = prime * result + programNo;
    result = prime * result + ((title == null) ? 0 : title.hashCode());
    return result;
  }

  @Override
  public boolean equals(Object obj) {
    if (this == obj) {
      return true;
    }
    if (obj == null) {
      return false;
    }
    if (getClass() != obj.getClass()) {
      return false;
    }
    CoachingProgramBoard other = (CoachingProgramBoard) obj;
    if (coachNo != other.coachNo) {
      return false;
    }
    if (content == null) {
      if (other.content != null) {
        return false;
      }
    } else if (!content.equals(other.content)) {
      return false;
    }
    if (createdDate == null) {
      if (other.createdDate != null) {
        return false;
      }
    } else if (!createdDate.equals(other.createdDate)) {
      return false;
    }
    if (members == null) {
      if (other.members != null) {
        return false;
      }
    } else if (!members.equals(other.members)) {
      return false;
    }
    if (no != other.no) {
      return false;
    }
    if (programName == null) {
      if (other.programName != null) {
        return false;
      }
    } else if (!programName.equals(other.programName)) {
      return false;
    }
    if (programNo != other.programNo) {
      return false;
    }
    if (title == null) {
      if (other.title != null) {
        return false;
      }
    } else if (!title.equals(other.title)) {
      return false;
    }
    return true;
  }

  public String getProgramName() {
    return programName;
  }

  public void setProgramName(String programName) {
    this.programName = programName;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public List<Member> getMembers() {
    return members;
  }

  public void setMembers(List<Member> members) {
    this.members = members;
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

}
