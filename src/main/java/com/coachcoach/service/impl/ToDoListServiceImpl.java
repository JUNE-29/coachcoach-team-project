package com.coachcoach.service.impl;

import java.util.List;
import org.springframework.stereotype.Component;
import com.coachcoach.dao.ToDoListDao;
import com.coachcoach.domain.ToDoList;
import com.coachcoach.service.ToDoListService;

@Component
public class ToDoListServiceImpl implements ToDoListService {

  ToDoListDao toDoListDao;

  public ToDoListServiceImpl(ToDoListDao toDoListDao) {
    this.toDoListDao = toDoListDao;
  }

  @Override
  public void add(ToDoList toDoList) throws Exception {
    this.toDoListDao.insert(toDoList);
  }

  @Override
  public List<ToDoList> list() throws Exception {
    return toDoListDao.findAll();
  }

  @Override
  public int delete(int no) throws Exception {
    return toDoListDao.delete(no);
  }
}
