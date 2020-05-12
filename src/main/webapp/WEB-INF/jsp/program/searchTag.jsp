 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"/>
<style>
.innerCont { overflow:hidden;}
.leftArea { float:left; width:354px;}
.leftArea .inner { padding:18px; border-radius:20px; box-sizing:border-box; background:#CFDDF3;}
.leftArea .inner .searchInp { overflow:hidden; position:relative; border-radius:15px; height:65px; background:#fff; }
.leftArea .inner .searchInp input { padding:0 80px 0 18px; width:100%; height:100%; border:none; background:#fff;}
.leftArea .inner .searchInp button { position:absolute; top:50%; right:10px; transform:translateY(-50%); width:65px; height:30px; border:none; border-radius:20px; border:1px solid #A5A5A4; background:#fff; }
.leftArea .inner .box { padding:9px 16px; margin-top:20px; border-radius:20px; background:#fff;}
.leftArea .inner .box > strong { display:block; padding-bottom:12px; font-size:20px; font-weight:normal; border-bottom:1px solid #E0E0DF}
.leftArea .inner .box .tag { overflow:hidden; }
.leftArea .inner .box .tag .check {
overflow:hidden;d isplay:inline-block;
position:relative; height:26px; box-sizing:border-box;
cursor:pointer; float:left; margin:7px 0 0 7px; padding:0 5px; min-width:65px; height:30px;
 line-height:30px; font-size:14px; border-radius:30px; 
 border:1px solid #CFDDF3; background:#fff; }
.leftArea .inner .box .tag .check input {overflow:hidden;display:none;width:0px;height:0px;border:0 none;font-size:0;line-height:0;clip:rect(0 0 0 0);opacity:0;}
.leftArea .inner .box .tag .check input .txt {display:inline-block;padding-left:36px;font-size:16px;color:#CFDDF3; }
/*.leftArea .inner .box .tag button { 
float:right; margin:8px 0 0 7px; padding:0 5px; min-width:65px; height:30px; 
line-height:30px; font-size:14px; border-radius:30px; border:1px solid #A5A5A4; background:#fff;}*/
.leftArea .inner .box .tag #keywordBtn { float:right; margin:8px 0 0 7px; padding:0 5px; min-width:65px; height:30px; line-height:30px; font-size:14px; border-radius:30px; border:1px solid #A5A5A4; background:#fff;}
.leftArea .inner .box .detailBtn { margin-top:15px; width:100%; height:40px; line-height:40px; border-radius:20px; border:1px solid #A5A5A4; background:#fff;}
.leftArea .inner .box .tit { margin:15px 0; font-size:17px; font-weight:500;}
.rightArea  { float:right; width:760px;}
.rightArea .cochingList {padding:40px; margin-bottom:10px; border:1px solid #A5A5A4;}
.rightArea .cochingList .cont {  position:relative; padding:15px 30px; }
.rightArea .cochingList .cont .img { overflow:hidden; position:absolute; left:20px; top:10px; width:140px; height:140px; border-radius:50%; background:#eee;}
.rightArea .cochingList .cont .img img { width:100%; height:100%;}
.rightArea .cochingList .cont .txt { padding-left:250px;}
.rightArea .paginationWrap { margin-top:20px; text-align:center;}
.rightArea .paginationWrap > ul { overflow:hidden; display:inline-block;}
.rightArea .paginationWrap > ul li { float:left; border:1px solid #ddd; border-radius:5px;}
.rightArea .paginationWrap > ul li + li { margin-left:8px;}
.rightArea .paginationWrap > ul li a { padding:8px; font-size:18px; color:#000;}
</style>

<div class="innerCont">
<div class="leftArea">
<div class="inner">
<form action='searchKeyword' method='get' class="searchInp">
<input name='keyword' type='text' placeholder="코치 또는 프로그램 검색">
<button>검색</button>
</form>
<div class="box">
<strong>키워드</strong>
<form name='keyword' action='searchTag' method='post' class="tag" >
<label class="check" id='chk1'>
<input id='ckh_1' type="checkbox" name="tags" value="1" ><span class="txt">하체튼튼</span></label>
<label class="check" id='chk2'>
<input id='ckh_2' type="checkbox" name="tags" value="2" ><span class="txt">상체튼튼</span></label>
<label class="check" id='chk3'>
<input id='ckh_3' type="checkbox" name="tags" value="3" ><span class="txt">근육위주</span></label>
<label class="check" id='chk4'>
<input id='ckh_4' type="checkbox" name="tags" value="4" ><span class="txt">대회위주</span></label>
<label class="check" id='chk5'>
<input id='ckh_5' type="checkbox" name="tags" value="5" ><span class="txt">체력위주</span></label>
<label class="check" id='chk6'>
<input id='ckh_6' type="checkbox" name="tags" value="6" ><span class="txt">체중감량</span></label>
<label class="check" id='chk7'>
<input id='ckh_7' type="checkbox" name="tags" value="7"><span class="txt">재활위주</span></label>
<label class="check" id='chk8'>
<input id='ckh_8' type="checkbox" name="tags" value="8" ><span class="txt">생활개선</span></label>
<input id="keywordBtn" type='button' value='검색' onclick='chk_keyword()'>
</form>
</div>
<div class="box">
<strong>상세조건</strong>
<p class="tit">코치성별</p>
<form action='searchDetail' method='get'>
<input name='gender' type='radio' value='2' checked>무관
<input name='gender' type='radio' value='0'>여자
<input name='gender' type='radio' value='1'>남자
<p class="tit">코치장소</p>
<input name='coachingType' type='radio' value='온라인' checked>온라인<br>
<input name='coachingType' type='radio' value='오프라인'>오프라인<br>
<input name='coachingType' type='radio' value='오프라인+온라인'>오프라인 + 온라인<br>
<button class="detailBtn">상세조건 검색</button>
</form>
</div>
</div>
</div>

<div class="rightArea">
<form action="selectOption" >
<select name="option" onchange="this.form.submit()">
  <option value="none">=== 선택 ===</option>
  <option value="review">후기 많은 순</option>
  <option value="star">별점 높은 순</option>
</select>
</form>


<c:forEach items="${searchProgram}" var="list">
<div class="cochingList" style='border:1px solid gray; padding:10px; margin:5px'>
<label>${list.no}</label>
<div class="cont">
<div class="img">
<img src='${pageContext.servletContext.contextPath}/upload/coach/${list.coach.photo}'>
</div>
<div class="txt">
<a href='detail?programNo=${list.no}&no=${list.coachNo}'><label>${list.coach.name} 코치님</label></a><br> 
<label>${list.name}</label><br> 
<label>${list.introduce}</label><br> 
<label>${list.fee}원 </label><br> 
</div>
</div>
</div>
</c:forEach>

<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
"use strict"

function chk_keyword() {
  var chk_kwd = document.getElementsByName('tags');
    var chk_kwd = document.getElementsByName('tags');
    var chk_cnt = 0; 
    for(var i=0; i<chk_kwd.length; i++) {
        if(chk_kwd[i].checked == true) {
          
        } 
    }
    
       if (chk_cnt > 3){
           alert("최대 3개까지 선택가능합니다.");
          return;
        }


    document.keyword.submit();
}

$(document).ready(function(){
    $("#ckh_1").change(function(){
        if($("#ckh_1").is(":checked")){
          $("#chk1").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_2").change(function(){
        if($("#ckh_2").is(":checked")){
          $("#chk2").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_3").change(function(){
        if($("#ckh_3").is(":checked")){
          $("#chk3").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_4").change(function(){
        if($("#ckh_4").is(":checked")){
          $("#chk4").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_5").change(function(){
        if($("#ckh_5").is(":checked")){
          $("#chk5").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_6").change(function(){
        if($("#ckh_6").is(":checked")){
          $("#chk6").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_7").change(function(){
        if($("#ckh_7").is(":checked")){
          $("#chk7").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});
$(document).ready(function(){
    $("#ckh_8").change(function(){
        if($("#ckh_8").is(":checked")){
          $("#chk8").css("background", "#CFDDF3")
        }else{
            $(".check").css("background", "#fff")
        }
    });
});



</script>

<jsp:include page="../footer.jsp"/>
