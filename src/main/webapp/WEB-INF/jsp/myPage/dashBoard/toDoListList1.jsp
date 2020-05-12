<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<section id="contecnt">

   <div class="allCheck" >
   <input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label> 
   </div>
   
   <div class="delBtn">
   <button type="button" class="selectDelete_btn">선택 삭제</button> 
   </div>

 <c:forEach items="${findAll}" var="item">
  
  <tr> 
     <td align=center><input type="checkbox" name="toDoList">${item.no}</td>
     <td align=center>${item.memo}</td>
     <td align=center>${item.createDate}</td>
         
      <th ><a href= 'toDoListUpdateForm?toDoListNo=${item.no}'>수정</a></th>
      <th ><a href= 'toDoListDelete?toDoListNo=${item.no}'>삭제</a></th>
   </tr>
   <br>
 </c:forEach>



</section>