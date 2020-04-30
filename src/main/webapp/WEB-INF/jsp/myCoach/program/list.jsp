 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>
<div>
<img src='/upload/member/' height='80'><br> 
 이름<a href='coachDetail'>엄진영 코치님</a><br> 
진행중인 프로그램<a href='programDetail'>엄진영과 함께하는 발레교실</a><br> 
연락처 : 010-0000-0000
</div>
<div>
  <h3>완료된 프로그램 내역</h3>
  <table class="table">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">담당코치</th>
      <th scope="col">프로그램명</th>
      <th scope="col">기간</th>
      <th scope="col">후기</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>후기완료</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td><form action='reviewForm' method='get'>
    <button>후기작성</button>
    </form></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td><form action='reviewForm' method='get'>
    <button>후기작성</button>
    </form></td>
    </tr>
  </tbody>
</table>
</div>


<jsp:include page="../footer.jsp"/>
