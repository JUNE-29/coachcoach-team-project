package com.coachcoach.domain;

import java.io.Serializable;
import java.util.List;

public class CoachingProgram implements Serializable {

  private static final long serialVersionUID = 1L;

  int no; // 프로그램 번호
  int coachNo; // 코치번호
  String name; // 프로그램명
  String introduce; // 소개
  int fee; // 수강료
  String coachingType; // 코칭방식이름
  List<CoachingProgramTag> coachingProgramTags;
  Coach coach;
  MemberCoachingProgram mcp;

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

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getIntroduce() {
    return introduce;
  }

  public void setIntroduce(String introduce) {
    this.introduce = introduce;
  }

  public int getFee() {
    return fee;
  }

  public void setFee(int fee) {
    this.fee = fee;
  }

  public String getCoachingType() {
    return coachingType;
  }

  public void setCoachingType(String coachingType) {
    this.coachingType = coachingType;
  }

  public List<CoachingProgramTag> getCoachingProgramTags() {
    return coachingProgramTags;
  }

  public void setCoachingProgramTags(List<CoachingProgramTag> coachingProgramTags) {
    this.coachingProgramTags = coachingProgramTags;
  }

  public Coach getCoach() {
    return coach;
  }

  public void setCoach(Coach coach) {
    this.coach = coach;
  }

  public MemberCoachingProgram getMcp() {
    return mcp;
  }

  public void setMcp(MemberCoachingProgram mcp) {
    this.mcp = mcp;
  }

  public static long getSerialversionuid() {
    return serialVersionUID;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((coach == null) ? 0 : coach.hashCode());
    result = prime * result + coachNo;
    result = prime * result + ((coachingProgramTags == null) ? 0 : coachingProgramTags.hashCode());
    result = prime * result + ((coachingType == null) ? 0 : coachingType.hashCode());
    result = prime * result + fee;
    result = prime * result + ((introduce == null) ? 0 : introduce.hashCode());
    result = prime * result + ((mcp == null) ? 0 : mcp.hashCode());
    result = prime * result + ((name == null) ? 0 : name.hashCode());
    result = prime * result + no;
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
    CoachingProgram other = (CoachingProgram) obj;
    if (coach == null) {
      if (other.coach != null)
        return false;
    } else if (!coach.equals(other.coach))
      return false;
    if (coachNo != other.coachNo)
      return false;
    if (coachingProgramTags == null) {
      if (other.coachingProgramTags != null)
        return false;
    } else if (!coachingProgramTags.equals(other.coachingProgramTags))
      return false;
    if (coachingType == null) {
      if (other.coachingType != null)
        return false;
    } else if (!coachingType.equals(other.coachingType))
      return false;
    if (fee != other.fee)
      return false;
    if (introduce == null) {
      if (other.introduce != null)
        return false;
    } else if (!introduce.equals(other.introduce))
      return false;
    if (mcp == null) {
      if (other.mcp != null)
        return false;
    } else if (!mcp.equals(other.mcp))
      return false;
    if (name == null) {
      if (other.name != null)
        return false;
    } else if (!name.equals(other.name))
      return false;
    if (no != other.no)
      return false;
    return true;
  }

  @Override
  public String toString() {
    return "CoachingProgram [no=" + no + ", coachNo=" + coachNo + ", name=" + name + ", introduce="
        + introduce + ", fee=" + fee + ", coachingType=" + coachingType + ", coachingProgramTags="
        + coachingProgramTags + ", coach=" + coach + ", mcp=" + mcp + "]";
  }


}
