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
  public int add(ToDoList toDoList) throws Exception {
    return this.toDoListDao.insert(toDoList);
  }

  @Override
  public List<ToDoList> findAll(int memberNo) throws Exception {
    return toDoListDao.findAll(memberNo);
  }

  @Override
  public int delete(int no) throws Exception {
    return toDoListDao.delete(no);
  }

  @Override
  public int update(ToDoList toDoList) throws Exception {
    return toDoListDao.update(toDoList);
  }

  @Override
  public ToDoList findByNo(int toDoListNo) throws Exception {
    return toDoListDao.findByNo(toDoListNo);
  }

  // 체크박스 섹제
  @Override
  public void deleteCheckBox(ToDoList toDoList) throws Exception {
    toDoListDao.deleteCheckBox(toDoList);
  }



}
