 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
  </head>
  <body>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
var no = "<c:out value='${item.mcp.no}'/>"
var prog_name = "<c:out value='${item.name}'/>"
var fee = "<c:out value='${item.fee}'/>"
var email = "<c:out value='${member.email}'/>"
var name = "<c:out value='${member.name}'/>"
var tel = "<c:out value='${member.tel}'/>"


var IMP = window.IMP;
IMP.init('imp42729957');
IMP.request_pay({
    pg : 'html5_inicis',
    pay_method : 'vbank',
    merchant_uid : no,
    name : '주문명:' + prog_name,
    amount :  fee, //판매 가격
    buyer_email : email,
    buyer_name : name,
    buyer_tel : tel
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
        location.href='<%=request.getContextPath()%>/app/myCoach/order/paySuccess?msg='+msg;
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        location.href="<%=request.getContextPath()%>/app/myCoach/order/payFail";
        alert(msg);
    }

});
</script>
  </body>
</html>