package com.coachcoach.domain;

import java.io.Serializable;
import java.sql.Date;

public class NoticeBoard implements Serializable {

  private static final long serialVersionUID = 20200131L;

  private int no;
  private String title;
  private Date date;
  private int viewCount;
  private String writer;

  @Override
  public String toString() {
    return "NoticeBoard [no=" + no + ", title=" + title + ", date=" + date + ", viewCount=" + viewCount
        + ", writer=" + writer + "]";
  }

  public static NoticeBoard valueOf(String csv) {
    String[] data = csv.split(",");

    NoticeBoard noticeboard = new NoticeBoard();
    noticeboard.setNo(Integer.parseInt(data[0]));
    noticeboard.setTitle(data[1]);
    noticeboard.setDate(Date.valueOf(data[2]));
    noticeboard.setViewCount(Integer.parseInt(data[3]));
    noticeboard.setWriter(data[4]);
    return noticeboard;
  }

  public String toCsvString() {
    return String.format("%d,%s,%s,%d,%s", this.getNo(), this.getTitle(), this.getDate(),
        this.getViewCount(), this.getWriter());
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + no;
    result = prime * result + ((title == null) ? 0 : title.hashCode());
    result = prime * result + viewCount;
    result = prime * result + ((writer == null) ? 0 : writer.hashCode());
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
    NoticeBoard other = (NoticeBoard) obj;
    if (no != other.no)
      return false;
    if (title == null) {
      if (other.title != null)
        return false;
    } else if (!title.equals(other.title))
      return false;
    if (viewCount != other.viewCount)
      return false;
    if (writer == null) {
      if (other.writer != null)
        return false;
    } else if (!writer.equals(other.writer))
      return false;
    return true;
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public Date getDate() {
    return date;
  }

  public void setDate(Date date) {
    this.date = date;
  }

  public int getViewCount() {
    return viewCount;
  }

  public void setViewCount(int viewCount) {
    this.viewCount = viewCount;
  }

  public String getWriter() {
    return writer;
  }

  public void setWriter(String writer) {
    this.writer = writer;
  }

}
