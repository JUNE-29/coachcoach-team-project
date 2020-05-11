<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action='toDoListAddForm' method='post'>
      <input name='memberNo' type='hidden' value='${member.no}'>
      <button>등록하기</button>
</form>

<head>
<style>.selected{text-decoration:line-through;font-weight:700;color:red}</style>

<title>ToDoList</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
    // 모두선택
      $( document ).ready( function() {
        $( '.check-all' ).click( function() {
          $( '.ab' ).prop( 'checked', this.checked );
          
        } );
      } );
    </script>

</head>

<body>

 <input type="checkbox" name="toDoList" class="check-all"> <label>모두선택</label><br></input>
 <input type="button" name="toDoListDelete" class="deleteToDoList" value='선택삭제'/> <br>
 <c:forEach items="${findAll}" var="item">
  <tr>
    <p> 
         <td align=center><input type="checkbox" name="toDoList" class="ab" value="${item.no}"> </td>
         <td align=center>${item.memo}</td>
         <td align=center>${item.createDate}</td> 
    </p>
        
      <th ><a href= 'toDoListUpdateForm?toDoListNo=${item.no}'>수정</a></th>
      <th ><a href= 'toDoListDelete?toDoListNo=${item.no}'>삭제</a></th>
   </tr>
  
   <script>
  
// 체크시 이벤트 발생
   $(document).ready(function() { 
     $('.ab').on('click', function() { 
       if ( $(this).prop('checked') ) { 
         $(this).parent().addClass('selected'); 
         } else { 
           $(this).parent().removeClass('selected'); 
           } console.log(this);
       }); 
     });
   </script>
   
   <br>
 </c:forEach>
</body>


