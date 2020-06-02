<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class ="toDoList_add">
  <span class="tit">ToDoList</span>
  <a id="toDoListAdd" href= '#' type='hidden'><i class='bx bxs-plus-square'></i></a>
  
   <br>
   <div class ="toDoList_checkbox_area">
   <span class="toDoList_checkbox">
   <input type="checkbox" name="toDoList" id="check-all"/> 
   <label for="check-all">전체선택</label>
   </span>
    <span class="toDoList_btn">
     <input type="button" name="toDoListDelete" class="deleteToDoList" value='선택삭제' onclick="selectDelete();" /> <br>
    </span>
   </div>
   
    <div class="toDoList_list">
      <c:forEach items="${findAll}" var="item">
        <span class="item">
             <span><input type="checkbox" name="toDoList1" class="ab" value="${item.no}"> </span>
             <span class="memo">${item.memo}</span>
             <span><a class="updateToDoList" href="#"><input name="no" type="hidden" value="${item.no}"><i class='bx bx-pencil'></i></a></span> <!-- 수정 -->
             <span><a href="toDoListDelete?toDoListNo=${item.no}"><i class='bx bx-x' ></i></a></span> <!-- 삭제 -->
        </span>
      <br>
      </c:forEach>
    </div>
  
   
</div>
