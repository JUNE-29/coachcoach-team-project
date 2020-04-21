<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../../header.jsp"/>

<form action='add' method='post'>
<h1>계좌관리</h1>
이름 <input name='name' readonly type='text' value='${coach.name}'><br>
<table>
    <tr>
  <td>은행</td>
  <td>
    <select name="items">
      <option value="우리은행">우리은행</option>
      <option value="신한은행">신한은행</option>
      <option value="하나은행">하나은행</option>
    </select>
  </td>
	  <td> </td> 
	  <td> </td>
	  <td>가격</td>
	  <td><input name='price' readonly type='text'>원 </td>
   </tr>
</table>


<button>확인</button>


</form>


<jsp:include page="../../footer.jsp"/>