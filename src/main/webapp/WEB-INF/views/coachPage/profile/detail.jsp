<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="detailProfile">
  <h1><span class="highlight">프로필</span></h1>
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

<div class='detailProfileUpdate'>
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
				  <input class='coach-no' type='hidden' name='no' value='${coach.no}'>
				  <div class="photo" style="padding-left:7px;">
				  <img src='${pageContext.servletContext.contextPath}/upload/coach/${coach.photo}' class="img-thumbnail" style='width:300px'>
				  </div>
		      <input type='file' style="padding:10px" name='photoFile' value='${pageContext.servletContext.contextPath}/upload/coach/${coach.photo}'>
				  
					<section class="name">
				    <div class="col1">이름</div>
				    <div class="value">${coach.name}</div>
				      <input name='name' readonly type='hidden' value='${coach2.name}'>
				  </section>
				  
				  <section class="area">
				    <div class="col1">수업가능지역</div>
				    <div class="value" contenteditable="true">${coach2.area}</div>
				      <textarea name='area' rows='5' cols='60' hidden></textarea>
				  </section>
				  
				  <section class="career">
				    <div class="col1">경력사항</div>
				    <div class="value" contenteditable="true">${coach2.career}</div>
				      <textarea name='career' rows='5' cols='60' hidden></textarea>
				  </section>
				  
				  <section class="certification">
				    <div class="col1">보유자격증</div>
				    <div class="value" contenteditable="true">${coach2.certification}</div>
				      <textarea name='certification' rows='5' cols='60' hidden></textarea>
				  </section>
				  
				  <section class="introduce">
				    <div class="col1">강사소개</div>
				    <div class="value" contenteditable="true">${coach2.introduce}</div>
				      <textarea name='introduce' rows='5' cols='60' hidden></textarea>
				  </section>
				</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button type="button" class="btn orange-button-detail" id="updateCoachProfileSubmit">수정하기</button>
      </div>
    </div>
  </div>
</div>
</div>
