<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="detailProfile">
  <h1><span class="highlight">프로필<span></h1>
  <div class="row">
  <div class="photo">
  <img src='${pageContext.servletContext.contextPath}/upload/coach/${coach.photo}' class="img-thumbnail"><br>
  </div>
  
  <div class="content_box">
  <section class="name">
    <div class="col1">이름</div>
    <div class="value">${coach.name}</div>
  </section>
  <section class="area">
    <div class="col1">수업가능지역</div>
    <div class="value">${coach.area}</div>
  </section>
  <section class="career">
    <div class="col1">경력사항</div>
    <div class="value">${coach.career}</div>
  </section>
  <section class="certification">
    <div class="col1">보유자격증</div>
    <div class="value">${coach.certification}</div>
  </section>
  <section class="introduce">
    <div class="col1">강사소개</div>
    <div class="value">${coach.introduce}</div>
  </section>
  <section class="button1">
	  <button type="button" class="btn" data-toggle="modal" data-target="#updateCoachProfile">내 프로필 수정</button>
	 </section>
  </div>
  
  </div>

</div>

<div class="modal fade" id="updateCoachProfile" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">프로필 수정</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

				<form class="updateForm" action='update' method='POST' enctype='multipart/form-data'>
				  <input type='hidden' name='no' value='${coach.no}'><br>
				  <img src='${pageContext.servletContext.contextPath}/upload/coach/${coach.photo}' height='70'><br>
				  <input type='file' name='photoFile' value='${pageContext.servletContext.contextPath}/upload/coach/${coach.photo}'><br>
				  
				  <table>
				  
				  <tr><td>이름</td> <td><input name='name' readonly type='text' value='${coach2.name}'></td></tr>
				  <tr><td>수업가능지역</td> <td><textarea name='area' rows='5' cols='60'>${coach2.area}</textarea></td></tr>
				  <tr><td>경력사항</td> <td><textarea name='career' rows='5' cols='60'>${coach2.career}</textarea></td></tr>
				  <tr><td>보유자격증</td> <td><textarea name='certification' rows='5' cols='60'>${coach2.certification}</textarea></td></tr>
				  <tr><td>강사소개</td> <td><textarea name='introduce' rows='5' cols='60'>${coach2.introduce}</textarea></td></tr>
				  
				  </table>
				</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary" id="updateCoachProfileSubmit">수정하기</button>
      </div>
    </div>
  </div>
</div>
