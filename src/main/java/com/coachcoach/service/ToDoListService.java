package com.coachcoach.service;

import java.util.List;
import com.coachcoach.domain.ToDoList;

public interface ToDoListService {

  void add(ToDoList toDoList) throws Exception;

  List<ToDoList> list() throws Exception;

  int delete(int no) throws Exception;

}
