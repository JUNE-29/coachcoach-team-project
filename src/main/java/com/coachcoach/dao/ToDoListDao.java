package com.coachcoach.dao;

import java.util.List;
import com.coachcoach.domain.ToDoList;

public interface ToDoListDao {

  void insert(ToDoList toDoList) throws Exception;
  // toDoList 등록 시 사용

  List<ToDoList> findAll(int memberNo) throws Exception;

  int delete(int no) throws Exception;
  // 게시글 삭제시 사용
}


