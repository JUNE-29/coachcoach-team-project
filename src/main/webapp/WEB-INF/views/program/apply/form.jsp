 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="innerCont">
<form id="applyfrm" action='list' method='post'>
<h3>프로그램 신청서</h3>
<h5>회원정보</h5>
이름
<input class="form-control form-control-sm" type='text' readonly value='${member.name}'><br>
생년월일
<input class="form-control form-control-sm" type='text' readonly value='${member.birth}'><br>
연락처
<input class="form-control form-control-sm" type='text' readonly value='${member.tel}'><br>

<h5>프로그램</h5>
프로그램명
<input class="form-control form-control-sm" type='text' readonly value='${program.name}'><br>
코칭장소
<input class="form-control form-control-sm" type='text' readonly value='${program.coachingType}'><br>
금액
<input class="form-control form-control-sm" type='text' readonly value='${program.fee}'><br>
운동 시작일
<input id="startDate" name='startDate' class="form-control form-control-sm" type='text' placeholder='예)2021/05/01'><br>
<input id="remark"  name=remark class="form-control form-control-sm" type='text' placeholder='특이사항 또는 코치에게 알려줄 정보를 입력해주세요.'><br>
* 모든 프로그램은 한달 단위로 진행됩니다.<br>
<button id="applyBtn" class="btn btn-primary">신청하기</button>
<input name='programNo' type='hidden' value='${program.no}'>
<input name='memberNo' type='hidden' value='${member.no}'>
</form>
</div>