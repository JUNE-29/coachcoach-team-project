<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Basic Bootstrap Template</title>
    <!-- Bootstrap CSS file -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

  <h1>고객센터</h1>
  <a href='form'>새 공지사항 </a> <br>

  <table class="table table-striped" border='1' width="500" height="100">
  <tr>
    <th>번호</th>
    <th>제목</th>
    <th>등록일</th>
    <th>조회수</th>
  </tr>
  
  <c:forEach items="${list}" var="item">
  <tr>
    <td>${item.no}</td> 
    <td><a href='detail?no=${item.no}'>=> ${item.title}</a></td> 
    <td>${item.date}</td>
    <td>${item.viewCount}</td>
  </tr>
</c:forEach>
  
  </table>
  
      <!-- pagination{s} -->

  <div id="paginationBox">

    <ul class="pagination">

      <c:if test="${pagination.prev}">

        <li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>

      </c:if>
        

      <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">

        <li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a></li>

      </c:forEach>
        

      <c:if test="${pagination.next}">

        <li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}', 

'${pagination.range}', '${pagination.rangeSize}')" >Next</a></li>

      </c:if>

    </ul>

  </div>

  <!-- pagination{e} -->
  
 <!-- JS files: jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
      <script>
//이전 버튼 이벤트
function fn_prev(page, range, rangeSize) {
    var page = ((range - 2) * rangeSize) + 1;
    var range = range - 1;
    var url = "${pageContext.request.contextPath}/coachcoach-team-project/app/serviceCenter/noticeBoard/list";
    url = url + "?page=" + page;
    url = url + "&range=" + range;

    location.href = url;
  }

  //페이지 번호 클릭
  function fn_pagination(page, range, rangeSize, searchType, keyword) {
    var url = "${pageContext.request.contextPath}/coachcoach-team-project/app/serviceCenter/noticeBoard/list";
    url = url + "?page=" + page;
    url = url + "&range=" + range;

    location.href = url;  
  }

  //다음 버튼 이벤트
  function fn_next(page, range, rangeSize) {
    var page = parseInt((range * rangeSize)) + 1;
    var range = parseInt(range) + 1;
    var url = "${pageContext.request.contextPath}/coachcoach-team-project/app/serviceCenter/noticeBoard/list";
    url = url + "?page=" + page;
    url = url + "&range=" + range;
    
    location.href = url;
  }
</script>