<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <script>
        var IMP = window.IMP; 
        IMP.init("store-e3fd8c94-f70d-4f4f-b9e5-4eb1fbe2df6c"); 
        
        function requestPay() {
        	IMP.request_pay({
        	    pg : "{kakaopay}.{상점ID}",
        	    pay_method : 'trans',
        	    merchant_uid: "order_no_0001", //상점에서 생성한 고유 주문번호
        	    name : '주문명:결제테스트',
        	    amount : 14000,
        	    buyer_email : 'iamport@siot.do',
        	    buyer_name : '구매자이름',
        	    buyer_tel : '010-1234-5678',
        	    buyer_addr : '서울특별시 강남구 삼성동',
        	    buyer_postcode : '123-456',
        	    m_redirect_url : 'Main' // 예: https://www.my-service.com/payments/complete
        	}, function(rsp) {
        	    if ( !rsp.success ) {
        	    	//결제 시작 페이지로 리디렉션되기 전에 오류가 난 경우
        	        var msg = '오류로 인하여 결제가 시작되지 못하였습니다.';
        	        msg += '에러내용 : ' + rsp.error_msg;

        	        alert(msg);
        	    }
        	});
        }
    </script>
    <meta charset="UTF-8">
    <title>Sample Payment</title>
</head>
<body>
    <button onclick="requestPay()">결제하기</button> <!-- 결제하기 버튼 생성 -->
</body>
</html>