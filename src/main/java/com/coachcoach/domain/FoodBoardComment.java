package com.coachcoach.domain;

import java.io.Serializable;
import java.util.Date;

public class FoodBoardComment implements Serializable {

  private static final long serialVersionUID = 1L;

  int no;
  int coachNo;
  int foodBoardNo;
  String content;
  Date createDate;
  String coachName;


  @Override
  public String toString() {
    return "FoodBoardComment [no=" + no + ", coachNo=" + coachNo + ", foodBoardNo=" + foodBoardNo
        + ", content=" + content + ", createDate=" + createDate + ", coachName=" + coachName + "]";
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + (coachName == null ? 0 : coachName.hashCode());
    result = prime * result + coachNo;
    result = prime * result + (content == null ? 0 : content.hashCode());
    result = prime * result + (createDate == null ? 0 : createDate.hashCode());
    result = prime * result + foodBoardNo;
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
    FoodBoardComment other = (FoodBoardComment) obj;
    if (coachName == null) {
      if (other.coachName != null)
        return false;
    } else if (!coachName.equals(other.coachName))
      return false;
    if (coachNo != other.coachNo)
      return false;
    if (content == null) {
      if (other.content != null)
        return false;
    } else if (!content.equals(other.content))
      return false;
    if (createDate == null) {
      if (other.createDate != null)
        return false;
    } else if (!createDate.equals(other.createDate))
      return false;
    if (foodBoardNo != other.foodBoardNo)
      return false;
    if (no != other.no)
      return false;
    return true;
  }

  public String getCoachName() {
    return coachName;
  }

  public void setCoachName(String coachName) {
    this.coachName = coachName;
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

  public int getFoodBoardNo() {
    return foodBoardNo;
  }

  public void setFoodBoardNo(int foodBoardNo) {
    this.foodBoardNo = foodBoardNo;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public Date getCreateDate() {
    return createDate;
  }

  public void setCreateDate(Date createDate) {
    this.createDate = createDate;
  }


}
