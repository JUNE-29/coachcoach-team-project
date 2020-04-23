package com.coachcoach.dao;

import com.coachcoach.domain.ToDoList;

public interface ToDoListDao {

  int insert(ToDoList toDoList) throws Exception;
  // toDoList 등록 시 사용

  int delete(int no) throws Exception;
  // 게시글 삭제시 사용
}


