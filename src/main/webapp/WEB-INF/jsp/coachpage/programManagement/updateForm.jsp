<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../../header.jsp"/>

<form action='add' method='post'>
<h1>프로그램 수정</h1>
<b>프로그램명:</b> <input name='name' readonly type='text' value='${coach.name}'><br>
<b>프로그램 소개:</b> <textarea name='title' rows='5' cols='60'>${coach.introduce}</textarea><br>
<b>수업효과 키워드:</b> <textarea name='title' rows='5' cols='60'></textarea><br>
<b>프로그램수강료</b> 
<table>
    <tr>
  <td>기간</td>
  <td>
    <select name="items">
      <option value="2주">2주</option>
      <option value="3주">3주</option>
      <option value="4주">4주</option>
    </select>
  </td>
    </tr>
    
    <tr>
      <td>가격</td>
      <td><input name='price' readonly type='text'>원 </td>
    </tr>
</table>




<button>수정</button>


</form>


<jsp:include page="../../footer.jsp"/>