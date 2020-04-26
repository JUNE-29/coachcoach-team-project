<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="../../header.jsp"/>
목표<br>
체중감량!!<br>
<br>
이번 주 운동종목 그래프
<a href='../detailData/list'>더보기</a><br>
<jsp:include page='../detailData/workoutGraph.jsp'/>
<br><br>
이번 주 몸무게 그래프
<a href='../detailData/list'>더보기</a><br>
<jsp:include page='../detailData/weightGraph.jsp'/>
<br><br>
<!-- 
<h3>To Do List</h3>
    <c:forEach items='${list}' var='item'>
      <input type='checkbox'>${item.memo}<br>
    </c:forEach>
    
 
<form action='add' method='Get'>
   
    <script>function add(){var div = document.createElement('div');
    div.innerHTML = document.getElementById('check').innerHTML;
    document.getElementById('box').appendChild(div);}</script>
    
    <div id='box'>
    <b onclick="add()" style="font-size:2em;color:#999;" onMouseOver="this.style.color='#000'" onMouseOut="this.style.color='#999'">+</b>
    <input type='text' placeholder='입력하시오'><br>
        
    </div>
    
    <div id='check'>
    <input type="checkbox" onclick="if(this.checked) this.setAttribute('checked', 'checked');if(!this.checked) this.removeAttribute('checked');">

    </div>
 
</form>
  
<a href='../dashBoard/toDoListAddForm'>추가하기</a>
 -->
<br>
공지사항 
<a href='../coaching/list'>더보기</a>
<br><br>
코치와 채팅하기
<jsp:include page='../../footer.jsp'/>