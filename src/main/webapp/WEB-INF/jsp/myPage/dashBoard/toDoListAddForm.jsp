<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page='../../header.jsp'/>

<h3>toDoList</h3>

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







<jsp:include page='../../footer.jsp'/>