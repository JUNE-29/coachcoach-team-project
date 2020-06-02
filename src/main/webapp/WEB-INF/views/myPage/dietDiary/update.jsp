<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" >

  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>수정했습니다.</p>
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
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" ></script>