<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


목표<br>
체중감량!!<br>
<br>

<h1 class="tit">ToDoList</h1>
<div class = "toDoList_add">
<form action='toDoListAddForm' method='post'>
      <input name='memberNo' type='hidden' value='${member.no}'>
     <div class="toDoList_add_btn">
      <button id="toDoList_add_btn">등록하기</button>
     </div>
</form>
  <div class="toDoList_checkbox">
 <input type="checkbox" name="toDoList" class="check-all"/> 
 <label>모두선택</label><br>
 </div>
 
 <div class="toDoList_btn">
 <input type="button" name="toDoListDelete" class="deleteToDoList" value='선택삭제' onclick="seclctDelete();" /> <br>
 </div>
 <div class="toDoList_list">
 <c:forEach items="${findAll}" var="item">
  <tr>
    <span> 
         <td align=center><input type="checkbox" name="toDoList1" class="ab" value="${item.no}"> </td>
         <td align=center>${item.memo}</td>
         <td align=center>${item.createDate}</td> 
    </span>
        
      <th ><a href= 'toDoListUpdateForm?toDoListNo=${item.no}'>수정</a></th>
      <th ><a href= 'toDoListDelete?toDoListNo=${item.no}'>삭제</a></th>
   </tr>
   
   <br>
 </c:forEach>
</div>
</div>





공지사항 
<a href='../coaching/list'>더보기</a>
<br><br>
코치와 채팅하기
