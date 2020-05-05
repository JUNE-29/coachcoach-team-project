package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.ToDoList;

public interface ToDoListService {

  int add(ToDoList toDoList) throws Exception;

  List<ToDoList> findAll(int memberNo) throws Exception;

  ToDoList findByNo(int toDoListNo) throws Exception;

  int delete(int no) throws Exception;

  int update(ToDoList toDoList) throws Exception;

}
