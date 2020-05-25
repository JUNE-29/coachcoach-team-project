<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
<div class="container2">
	<div class="notice">
	  공지사항 
	  <a href='../coaching/list'>더보기</a>
	  <br><br>
	</div>
	<div class="workouts">
	</div>
</div>

<div class="container1 ">
	<div class ="toDoList_add">
	<span class="tit">ToDoList</span>
  <span class="toDoList_add_btn">
  <a href= 'toDoListAddForm?memberNo=${member.no}' type='hidden'><i class='bx bxs-plus-square'></i></a>
  </span>
	
	 <br>
   <span class="toDoList_checkbox">
	 <input type="checkbox" name="toDoList" id="check-all"/> 
	 <label for="check-all">전체선택</label><br>
	 </span>
	 
		<div class="toDoList_list">
			<c:forEach items="${findAll}" var="item">
				<tr>
		         <td align=center><input type="checkbox" name="toDoList1" class="ab" value="${item.no}"> </td>
		         <td align=center>${item.memo}</td>
				     <th><a href= 'toDoListUpdateForm?toDoListNo=${item.no}'><i class='bx bx-pencil'></i></a></th> <!-- 수정 -->
				     <th><a href= 'toDoListDelete?toDoListNo=${item.no}'><i class='bx bx-x' ></i></a></th> <!-- 삭제 -->
				</tr>
			<br>
		  </c:forEach>
		</div>
	
	  <span class="toDoList_btn">
	   <input type="button" name="toDoListDelete" class="deleteToDoList" value='선택삭제' onclick="selectDelete();" /> <br>
	  </span>
	 
	</div>
	<div class="chatting">
		코치와 채팅하기
	</div>
</div>
</div>