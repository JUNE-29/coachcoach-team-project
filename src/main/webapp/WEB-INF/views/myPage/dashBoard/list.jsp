<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form>
<div class = "toDoList_add">
<!--  <form action='toDoListAddForm' method='post'>-->
<span class="tit">ToDoList</span>
      <!--<input name='memberNo' type='hidden' value='${member.no}'>-->
     <span class="toDoList_add_btn">
     <a href= 'toDoListAddForm?memberNo=${member.no}' type='hidden'><i class='bx bxs-plus-square'></i></a>
      <!--  <button type="button" class="bx bxs-plus-square"></button>-->
     </span>
     <div style="padding-top:5px;">
     </div>
     

  <span class="toDoList_checkbox">
 <input type="checkbox" name="toDoList" class="check-all"/> 
 <label>전체선택</label><br>
 </span>
 
 <div class="toDoList_list">
 <c:forEach items="${findAll}" var="item">
  <tr>
    <span> 
         <td align=center><input type="checkbox" name="toDoList1" class="ab" value="${item.no}"> </td>
         <td align=center>${item.memo}</td>
    </span>
        
      <th ><a href= 'toDoListUpdateForm?toDoListNo=${item.no}'><i class='bx bx-pencil'></i></a></th> <!-- 수정 -->
      <th ><a href= 'toDoListDelete?toDoListNo=${item.no}'><i class='bx bx-x' ></i></a></th> <!-- 삭제 -->
   </tr>
   
   <br>
 </c:forEach>
</div>

  <span class="toDoList_btn">
 <input type="button" name="toDoListDelete" class="deleteToDoList" value='선택삭제' onclick="selectDelete();" /> <br>
 </span>
 
</div>

</form>



공지사항 
<a href='../coaching/list'>더보기</a>
<br><br>
코치와 채팅하기
