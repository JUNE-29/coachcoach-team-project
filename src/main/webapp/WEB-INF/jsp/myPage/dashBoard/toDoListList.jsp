<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h1>ToDoList</h1>
<form action='toDoListAddForm' method='post'>
   <input name='memberNo' type='hidden' value='${member.no}'>
   <button>등록</button>
</form>

<head>

<!-- 스타일적용 -->
<style>.checked{text-decoration:line-through;font-weight:700;color:red}</style>

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
  $(document).ready(function() {
	 // 체크박스 전체 선택 및 해제
	  $('#ck_all').click(function(){
	         if($("#ck_all").prop("checked")){
	            $("input[type=checkbox]").prop("checked",true); 
	        }else{
	            $("input[type=checkbox]").prop("checked",false); 
	        }
	    });
	 
  // 선택시 이벤트 발생(가로줄)
  $("input:checkbox").on('click', function() { 
      if ( $(this).prop('checked') ) { 
        $(this).parent().parent().parent().addClass("checked"); 
        } else { 
          $(this).parent().parent().parent().removeClass("checked"); 
          } 
      });
  });
  
 
</script>
</head>

<input id='ck_all' type='checkbox' name='checkboxAll' class='check-all'> <label>모두선택</label>
<br>

<c:forEach  items="${findAll}" var="item">
<tr>
  <td>
    <input type='checkbox' value='${item.no}'>
  </td>
  <td align=center>${item.memo}</td>
  <td align=center>${item.createDate}</td>
  <td><a href= 'toDoListUpdateForm?toDoListNo=${item.no}'>수정</a></td>
  <td><a href= 'toDoListDelete?toDoListNo=${item.no}'>삭제</a></td>
</tr>
  <br>
 </c:forEach>
 <br>


<!--  
<form action='toDoListAddForm' method='post'>
      <input name='memberNo' type='hidden' value='${member.no}'>
      <button>등록하기</button>
</form>


   <table border='1'>
      <tr> 
        <th style="text-align:ceter">번호</th>
        <th style="text-align:ceter">메모</th>
        <th style="text-align:ceter">날짜</th>
        <th style="text-align:ceter">수정</th>
        <th style="text-align:ceter">삭제</th>
      </tr>
      
   <c:forEach items="${findAll}" var="item">
      <tr>
        <td align=center><input type="checkbox" name="toDoList">${item.no}</td>
        <td align=center>${item.memo}</td>
        <td align=center>${item.createDate}</td>
        
        <th ><a href= 'toDoListUpdateForm?toDoListNo=${item.no}'>수정</a></th>
        <th ><a href= 'toDoListDelete?toDoListNo=${item.no}'>삭제</a></th>
      </tr>
  </c:forEach>
      
</table>

</body>
-->
