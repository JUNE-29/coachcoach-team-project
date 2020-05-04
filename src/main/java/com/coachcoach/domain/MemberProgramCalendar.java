package com.coachcoach.domain;

import java.io.Serializable;
import java.util.List;

public class MemberProgramCalendar implements Serializable {

  private static final long serialVersionUID = 1L;

  int no;
  int memberProgramNo;
  MemberCoachingProgram memberCoachingProgram;
  String plan;
  String workoutDate;
  List<CalendarFile> files;
  Member member;
  Coach coach;
  String ProgramName;



  @Override
  public String toString() {
    return "MemberProgramCalendar [no=" + no + ", memberProgramNo=" + memberProgramNo
        + ", memberCoachingProgram=" + memberCoachingProgram + ", plan=" + plan + ", workoutDate="
        + workoutDate + ", files=" + files + ", member=" + member + ", coach=" + coach
        + ", ProgramName=" + ProgramName + "]";
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + (ProgramName == null ? 0 : ProgramName.hashCode());
    result = prime * result + (coach == null ? 0 : coach.hashCode());
    result = prime * result + (files == null ? 0 : files.hashCode());
    result = prime * result + (member == null ? 0 : member.hashCode());
    result =
        prime * result + (memberCoachingProgram == null ? 0 : memberCoachingProgram.hashCode());
    result = prime * result + memberProgramNo;
    result = prime * result + no;
    result = prime * result + (plan == null ? 0 : plan.hashCode());
    result = prime * result + (workoutDate == null ? 0 : workoutDate.hashCode());
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
    MemberProgramCalendar other = (MemberProgramCalendar) obj;
    if (ProgramName == null) {
      if (other.ProgramName != null)
        return false;
    } else if (!ProgramName.equals(other.ProgramName))
      return false;
    if (coach == null) {
      if (other.coach != null)
        return false;
    } else if (!coach.equals(other.coach))
      return false;
    if (files == null) {
      if (other.files != null)
        return false;
    } else if (!files.equals(other.files))
      return false;
    if (member == null) {
      if (other.member != null)
        return false;
    } else if (!member.equals(other.member))
      return false;
    if (memberCoachingProgram == null) {
      if (other.memberCoachingProgram != null)
        return false;
    } else if (!memberCoachingProgram.equals(other.memberCoachingProgram))
      return false;
    if (memberProgramNo != other.memberProgramNo)
      return false;
    if (no != other.no)
      return false;
    if (plan == null) {
      if (other.plan != null)
        return false;
    } else if (!plan.equals(other.plan))
      return false;
    if (workoutDate == null) {
      if (other.workoutDate != null)
        return false;
    } else if (!workoutDate.equals(other.workoutDate))
      return false;
    return true;
  }

  public MemberCoachingProgram getMemberCoachingProgram() {
    return memberCoachingProgram;
  }

  public void setMemberCoachingProgram(MemberCoachingProgram memberCoachingProgram) {
    this.memberCoachingProgram = memberCoachingProgram;
  }

  public MemberCoachingProgram getMemberProgram() {
    return memberCoachingProgram;
  }

  public void setMemberProgram(MemberCoachingProgram memberCoachingProgram) {
    this.memberCoachingProgram = memberCoachingProgram;
  }

  public List<CalendarFile> getFiles() {
    return files;
  }

  public void setFiles(List<CalendarFile> files) {
    this.files = files;
  }

  public Member getMember() {
    return member;
  }

  public void setMember(Member member) {
    this.member = member;
  }

  public Coach getCoach() {
    return coach;
  }

  public void setCoach(Coach coach) {
    this.coach = coach;
  }

  public String getProgramName() {
    return ProgramName;
  }

  public void setProgramName(String programName) {
    ProgramName = programName;
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getMemberProgramNo() {
    return memberProgramNo;
  }

  public void setMemberProgramNo(int memberProgramNo) {
    this.memberProgramNo = memberProgramNo;
  }

  public String getPlan() {
    return plan;
  }

  public void setPlan(String plan) {
    this.plan = plan;
  }

  public String getWorkoutDate() {
    return workoutDate;
  }

  public void setWorkoutDate(String workoutDate) {
    this.workoutDate = workoutDate;
  }


}
