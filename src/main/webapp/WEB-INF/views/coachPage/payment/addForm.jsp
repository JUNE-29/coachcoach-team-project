<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<form action='add' method='post'>
<h1>계좌관리</h1>
<input type="hidden" name="no" value="${coach.no}">
<p>${coach.name}님의 등록된 계좌</p>
<table>
  <tr>
    <th>은행</th>
    <th>계좌번호</th>
  </tr>
  <tr>
    <td>
      ${coach.bank} <br>
      <select id="bank" name="bank">
			  <option value="기업">기업</option>
			  <option value="농협">농협</option>
			  <option value="국민">국민</option>
			  <option value="하나">하나</option>
			</select>
		</td>
    <td>${coach.account} <br>
      <input type="text" name="account">
    </td>
  </tr>
</table>
<button type="button" onclick="location.href='#'">계좌 인증</button>
<br>

<button type="submit">수정하기</button>
</form>

<button type="button" onclick="location.href='list'">확인</button>
