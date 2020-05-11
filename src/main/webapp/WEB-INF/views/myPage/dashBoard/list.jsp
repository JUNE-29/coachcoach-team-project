<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


목표<br>
체중감량!!<br>
<br>
ToDoList<br>
<jsp:include page='../dashBoard/toDoListList.jsp'/>
<br>
이번 주 운동종목 그래프
<a href='../detailData/list'>더보기</a><br>
<jsp:include page='../detailData/workoutGraph.jsp'/>
<br><br>
이번 주 몸무게 그래프
<a href='../detailData/list'>더보기</a><br>
<jsp:include page='../detailData/weightGraph.jsp'/>
<br><br>
<br>
공지사항 
<a href='../coaching/list'>더보기</a>
<br><br>
코치와 채팅하기
