package com.coachcoach.domain;

import java.io.Serializable;

public class CalendarFile implements Serializable {

  private static final long serialVersionUID = 1L;

  int no;
  int calendarNo;
  String path;
  String fileType;

  @Override
  public String toString() {
    return "CalendarFile [no=" + no + ", calendarNo=" + calendarNo + ", path=" + path
        + ", fileType=" + fileType + "]";
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public int getCalendarNo() {
    return calendarNo;
  }

  public CalendarFile setCalendarNo(int calendarNo) {
    this.calendarNo = calendarNo;
    return this;
  }

  public String getPath() {
    return path;
  }

  public CalendarFile setPath(String path) {
    this.path = path;
    return this;
  }

  public String getFileType() {
    return fileType;
  }

  public CalendarFile setFileType(String fileType) {
    this.fileType = fileType;
    return this;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + calendarNo;
    result = prime * result + (fileType == null ? 0 : fileType.hashCode());
    result = prime * result + no;
    result = prime * result + (path == null ? 0 : path.hashCode());
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
    CalendarFile other = (CalendarFile) obj;
    if (calendarNo != other.calendarNo)
      return false;
    if (fileType == null) {
      if (other.fileType != null)
        return false;
    } else if (!fileType.equals(other.fileType))
      return false;
    if (no != other.no)
      return false;
    if (path == null) {
      if (other.path != null)
        return false;
    } else if (!path.equals(other.path))
      return false;
    return true;
  }
}
