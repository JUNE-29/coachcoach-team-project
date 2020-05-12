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

 <input type="checkbox" name="toDoList" class="check-all"> <label>모두선택</label><br>
 <script>
 function seclctDelete(){
	 var selectDeleteUrl = "<c:out value='toDoListTestDelete'/>";

	 var check_count = document.getElementsByName("toDoList1").length;
	 var list = new Array();
	 var sentCnt = 0;
	 var str = "";
	 var check = 0;
	 //12 13
     for (var i=0; i<check_count; i++) {
         if (document.getElementsByName("toDoList1")[i].checked == true) {
        	 str += document.getElementsByName("toDoList1")[i].value;
        	 str += ";";
        	 check = 1;
        	 /*
        	  list[sentCnt] = document.getElementsByName("toDoList1")[i].value;
        	  sentCnt++;*/
         } 
     }
	 if(check < 1) {
		 alert("1개 이상 선택해주세요");
	}
     location.href= 'toDoListTestDelete?str='+str;
 }
 
/*
 function deleteStart(list){
	 alert(list.length);
	 var a = "";
	 var s = ",";
	  for (var i=0; i<list.length; i++) {
		  a = list[i];
		  alert(a);
		  a = a + s ;
	      alert(a);
	  }
 }
 */
 
 </script>
 <input type="button" name="toDoListDelete" class="deleteToDoList" value='선택삭제' onclick="seclctDelete();" /> <br>
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


