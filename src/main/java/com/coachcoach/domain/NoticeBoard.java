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
	private String file_path;
	
	@Override
	public String toString() {
		return "NoticeBoard [no=" + no + ", title=" + title + ", date=" + date + ", viewCount=" + viewCount
				+ ", writer=" + writer + ", file_path=" + file_path + "]";
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
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
