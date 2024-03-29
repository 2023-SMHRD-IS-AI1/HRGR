<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- PortOne SDK -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
	var IMP = window.IMP;
	IMP.init("imp44183336");

	function requestPay() {
		IMP.request_pay({
			pg : "kcp.{AO09C}",
			pay_method : "card",
			merchant_uid : "57008833-33004",
			name : "당근 10kg",
			amount : 1004,
			buyer_email : "Iamport@chai.finance",
			buyer_name : "포트원 기술지원팀",
			buyer_tel : "010-1234-5678",
			buyer_addr : "서울특별시 강남구 삼성동",
			buyer_postcode : "123-456",
		}, function(rsp) {
			// callback
			if (rsp.success) {
				// 결제 성공 시
				jQuery.ajax({
					url : "{서버의 결제 정보를 받는 가맹점 endpoint}",
					method : "POST",
					headers : {
						"Content-Type" : "application/json"
					},
					data : {
						imp_uid : rsp.imp_uid, // 결제 고유번호
						merchant_uid : rsp.merchant_uid
					// 주문번호
					}
				}).done(function(data) {
					// 가맹점 서버 결제 API 성공시 로직
				})
			} else {
				alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
			}
		});
	}
</script>
<meta charset="UTF-8" />
<title>Sample Payment</title>
</head>
<body>
	<button onclick="requestPay()">결제하기</button>
	<!-- 결제하기 버튼 생성 -->
</body>
</html>