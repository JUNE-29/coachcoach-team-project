<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


&nbsp내 프로필
<hr style="margin-top: 5px;">
<div class='profile_img'>
<img src='${pageContext.servletContext.contextPath}/upload/member/${member.photo}' height='150px'>
</div>
<div class='update_frm'>
<form action='updateForm' method='post' enctype='multipart/form-data'>
<input name='photoFile' type='file' id="find_file"><br>
<label>아이디&nbsp&nbsp&nbsp${member.id}</label><br>
<label>이메일&nbsp&nbsp&nbsp${member.email}</label><br>
<input name='no' type='hidden' value='${member.no}'><br>
<button class="leftbtn">변경</button>
</form>
</div>
<button class="rightbtn" onclick="location.href='delete?no=${member.no}'" >삭제</button>



    
    
    