package com.coachcoach.domain;

import java.io.Serializable;

public class MemberCoachingProgram implements Serializable {

  private static final long serialVersionUID = 1L;

  int no;
  int memberNo;
  int programNo;
  String programName; 
  String remark; // 특이사항
  String status; // 결제대기, 결제완료, 진행중, 진행완료, 요청중 등..
  String requestDate;
  String payDate;
  String startDate;
  String endDate;
  int starRate;
  String review;
  String reviewDate;
  String etc; // 거절사유 등...

  Member member;

  @Override
  public String toString() {
    return "MemberCoachingProgram [no=" + no + ", memberNo=" + memberNo + ", programNo=" + programNo
        + ", programName=" + programName + ", remark=" + remark + ", status=" + status
        + ", requestDate=" + requestDate + ", payDate=" + payDate + ", startDate=" + startDate
        + ", endDate=" + endDate + ", starRate=" + starRate + ", review=" + review + ", reviewDate="
        + reviewDate + ", etc=" + etc + ", member=" + member + "]";
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + (endDate == null ? 0 : endDate.hashCode());
    result = prime * result + (etc == null ? 0 : etc.hashCode());
    result = prime * result + (member == null ? 0 : member.hashCode());
    result = prime * result + memberNo;
    result = prime * result + no;
    result = prime * result + (payDate == null ? 0 : payDate.hashCode());
    result = prime * result + (programName == null ? 0 : programName.hashCode());
    result = prime * result + programNo;
    result = prime * result + (remark == null ? 0 : remark.hashCode());
    result = prime * result + (requestDate == null ? 0 : requestDate.hashCode());
    result = prime * result + (review == null ? 0 : review.hashCode());
    result = prime * result + (reviewDate == null ? 0 : reviewDate.hashCode());
    result = prime * result + starRate;
    result = prime * result + (startDate == null ? 0 : startDate.hashCode());
    result = prime * result + (status == null ? 0 : status.hashCode());
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
    MemberCoachingProgram other = (MemberCoachingProgram) obj;
    if (endDate == null) {
      if (other.endDate != null)
        return false;
    } else if (!endDate.equals(other.endDate))
      return false;
    if (etc == null) {
      if (other.etc != null)
        return false;
    } else if (!etc.equals(other.etc))
      return false;
    if (member == null) {
      if (other.member != null)
        return false;
    } else if (!member.equals(other.member))
      return false;
    if (memberNo != other.memberNo)
      return false;
    if (no != other.no)
      return false;
    if (payDate == null) {
      if (other.payDate != null)
        return false;
    } else if (!payDate.equals(other.payDate))
      return false;
    if (programName == null) {
      if (other.programName != null)
        return false;
    } else if (!programName.equals(other.programName))
      return false;
    if (programNo != other.programNo)
      return false;
    if (remark == null) {
      if (other.remark != null)
        return false;
    } else if (!remark.equals(other.remark))
      return false;
    if (requestDate == null) {
      if (other.requestDate != null)
        return false;
    } else if (!requestDate.equals(other.requestDate))
      return false;
    if (review == null) {
      if (other.review != null)
        return false;
    } else if (!review.equals(other.review))
      return false;
    if (reviewDate == null) {
      if (other.reviewDate != null)
        return false;
    } else if (!reviewDate.equals(other.reviewDate))
      return false;
    if (starRate != other.starRate)
      return false;
    if (startDate == null) {
      if (other.startDate != null)
        return false;
    } else if (!startDate.equals(other.startDate))
      return false;
    if (status == null) {
      if (other.status != null)
        return false;
    } else if (!status.equals(other.status))
      return false;
    return true;
  }

  public String getProgramName() {
    return programName;
  }

  public void setProgramName(String programName) {
    this.programName = programName;
  }

  public Member getMember() {
    return member;
  }

  public void setMember(Member member) {
    this.member = member;
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getMemberNo() {
    return memberNo;
  }

  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }

  public int getProgramNo() {
    return programNo;
  }

  public void setProgramNo(int programNo) {
    this.programNo = programNo;
  }

  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getRequestDate() {
    return requestDate;
  }

  public void setRequestDate(String requestDate) {
    this.requestDate = requestDate;
  }

  public String getPayDate() {
    return payDate;
  }

  public void setPayDate(String payDate) {
    this.payDate = payDate;
  }

  public String getStartDate() {
    return startDate;
  }

  public void setStartDate(String startDate) {
    this.startDate = startDate;
  }

  public String getEndDate() {
    return endDate;
  }

  public void setEndDate(String endDate) {
    this.endDate = endDate;
  }

  public int getStarRate() {
    return starRate;
  }

  public void setStarRate(int starRate) {
    this.starRate = starRate;
  }

  public String getReview() {
    return review;
  }

  public void setReview(String review) {
    this.review = review;
  }

  public String getReviewDate() {
    return reviewDate;
  }

  public void setReviewDate(String reviewDate) {
    this.reviewDate = reviewDate;
  }

  public String getEtc() {
    return etc;
  }

  public void setEtc(String etc) {
    this.etc = etc;
  }

}
