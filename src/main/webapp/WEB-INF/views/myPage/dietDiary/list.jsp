<%@page import="com.coachcoach.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >
    </head>
    
<style>
.grid {
      overflow: hidden;
      padding: 0.5em 0 0 0.5em;
      max-width: 76em;
      margin: 0 auto;
    }
    .grid li {
      padding: 0 0.5em 0.5em 0;
    }
    .grid li > div {
      background: #808080;
      padding: 7em 2em;
      text-align: center;
    }
    .grid li a {
      color: #fff;
    }
    
    @media all and (min-width: 27em) {
      .grid li {
        width: 50%;
        float: left;
      }
    }
    
    @media all and (min-width: 40em) {
      .grid li {
        width: 33.3333333%;
      }
      .grid li.wide {
        width: 66.666666%;
      }
    }
    @media all and (min-width: 60em) {
      .grid li {
        width: 25%;
      }
      .grid li.wide {
        width: 50%;
      }
    }
</style>
  
  <!--Pattern HTML-->
  <section id="pattern" class="pattern">
    <ul class="grid">
      <li>
        <div>
          <a href="#">1</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">2</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">3</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">4</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">5</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">6</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">7</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">8</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">9</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">10</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">11</a>
        </div>
      </li>
      <li>
        <div>
          <a href="#">12</a>
        </div>
      </li>
    </ul>
  </section>
  
  <div class="container"> 
    <section class="pattern-description">
    <br>
    <hr>
    <br>
      <h1>오늘의 식단</h1>
      <p>영양소에 맞게 조절하는 습관을 가져요 </p>
    </section>
    <footer role="contentinfo">   
    </footer>
  </div>
  
<body>
<div class="container-fluid">
  <h1 class="text-primary text-center">사진 게시판</h1>

  <div class="card-group">
    <c:forEach items="${list}" var="item">
      <div class="card">
         <a href='detail?no=${item.no}'><img class="card-img-top img-fluid" src='${pageContext.servletContext.contextPath}/upload/foodBoard/${item.photoFilePath}' height='60'></a>
      </div>
    </c:forEach>      
  </div>
  
<% 
  Object loginUser = (Object) request.getSession().getAttribute("loginUser");
  if (loginUser instanceof Member) {
  %>
  
  <br>
    <div >
    <button type="button" onclick="location.href='addForm'" class="btn btn-block btn-primary">+</button>
    </div>
  <br>
  
  <% 
  }
  %>
  
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>
  </body>
</html>