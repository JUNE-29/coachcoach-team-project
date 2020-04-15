package com.coachcoach.domain;

import java.io.Serializable;
import java.util.List;

public class coachingProgram implements Serializable {

  private static final long serialVersionUID = 1L;

  int programNo; // 프로그램 번호
  int coachNo; // 코치번호
  String name; // 프로그램명
  String introduce; // 소개
  int fee; // 수강료
  String coachingType; // 코칭방식이름
  List<coachingProgramTag> coachingProgramTags;

  @Override
  public String toString() {
    return "coachingProgram [programNo=" + programNo + ", coachNo=" + coachNo + ", name=" + name
        + ", introduce=" + introduce + ", fee=" + fee + ", coachingType=" + coachingType
        + ", coachingProgramTags=" + coachingProgramTags + "]";
  }

  public int getProgramNo() {
    return programNo;
  }

  public void setProgramNo(int programNo) {
    this.programNo = programNo;
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

  public List<coachingProgramTag> getCoachingProgramTags() {
    return coachingProgramTags;
  }

  public void setCoachingProgramTags(List<coachingProgramTag> coachingProgramTags) {
    this.coachingProgramTags = coachingProgramTags;
  }


}
