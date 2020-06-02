<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title"> 사진 게시판 추가되었습니다. </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>추가했습니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" onclick="location.href='list'" class="btn btn-secondary" data-dismiss="modal">닫기</button>
        <button type="button" onclick="location.href='list'" class="btn btn-primary" >확인</button>
      </div>
    </div>
  </div>

<script type="text/javascript">
$('#myModal').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
  })
  $('#myModal').modal('hide')
</script>
