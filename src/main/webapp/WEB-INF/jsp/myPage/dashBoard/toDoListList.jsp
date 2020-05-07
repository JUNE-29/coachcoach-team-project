<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>ToDoList</h1>
<!--  
<form action='toDoListAddForm' method='post'>
      <input name='memberNo' type='hidden' value='${member.no}'>
      <button>등록하기</button>
</form>

<form action='toDoListUpdateForm >
<input type='button' value='수정'>
<script>
    function value_check() {
        var check_count = document.getElementsByName("toDoList").length;
 
        for (var i=0; i<check_count; i++) {
            if (document.getElementsByName("toDoList")[i].checked == true) {
                alert(document.getElementsByName("toDoList")[i].value);
            }
        }
    }
</script>
</form>


<table border='1'>
<c:forEach items="${findAll}" var="item">
<label for="toDoList">
      <tr>
        <td align=center><input type="checkbox" name="toDoList">${item.no}</td>
        <td align=center>${item.memo}</td>
        <td align=center>${item.createDate}</td>
        
      <th><a href= 'toDoListUpdateForm?toDoListNo=${item.no}'>수정</a></th>
        <th><a href= 'toDoListDelete?toDoListNo=${item.no}'>삭제</a></th>
      </tr>
</label>
  </c:forEach>
  
</table>

-->





<!-- 스타일은 CSS에 추가해주는 것을 권장합니다. 
<style>.selected{text-decoration:line-through;font-weight:700;color:black}</style> 

<script> $(document).ready(function() { 
  $("input:checkbox").on('click', function() { 
    if ( $(this).prop('checked') ) { 
      $(this).parent().addClass("selected"); 
    } else { 
      $(this).parent().removeClass("selected"); 
      } 
    }); 
  }); 
  </script> 
  --> 





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

