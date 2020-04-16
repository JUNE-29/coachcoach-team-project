package com.coachcoach.domain;

import java.io.Serializable;

public class CalendarFiles implements Serializable {

  private static final long serialVersionUID = 1L;

  int fileNo;
  int calendarNo;
  String path;
  String fileType;


  @Override
  public String toString() {
    return "CalendarFiles [fileNo=" + fileNo + ", calendarNo=" + calendarNo + ", path=" + path
        + ", fileType=" + fileType + "]";
  }

  public int getFileNo() {
    return fileNo;
  }

  public void setFileNo(int fileNo) {
    this.fileNo = fileNo;
  }

  public int getCalendarNo() {
    return calendarNo;
  }

  public void setCalendarNo(int calendarNo) {
    this.calendarNo = calendarNo;
  }


  public String getPath() {
    return path;
  }

  public void setPath(String path) {
    this.path = path;
  }

  public String getFileType() {
    return fileType;
  }

  public void setFileType(String fileType) {
    this.fileType = fileType;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + calendarNo;
    result = prime * result + fileNo;
    result = prime * result + ((fileType == null) ? 0 : fileType.hashCode());
    result = prime * result + ((path == null) ? 0 : path.hashCode());
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
    CalendarFiles other = (CalendarFiles) obj;
    if (calendarNo != other.calendarNo)
      return false;
    if (fileNo != other.fileNo)
      return false;
    if (fileType == null) {
      if (other.fileType != null)
        return false;
    } else if (!fileType.equals(other.fileType))
      return false;
    if (path == null) {
      if (other.path != null)
        return false;
    } else if (!path.equals(other.path))
      return false;
    return true;
  }



}
