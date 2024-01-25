<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>판매자 등록</h1>
	<form action="insertSeller">
	<ul>
	<li><input type="text" placeholder="사업자번호를 입력해주세요" name="company_bno"></li>
	<li><input type="text" placeholder="판매자 이름을 입력해주세요" name="company_name"></li>
	<li><input type="text" placeholder="사업지 주소를 입력해주세요" name="company_addr"></li>
	<li><input type="text" placeholder="판매하실 상품의 종류를 입력해주세요" name="business_type"></li>
	<li>
	<span>  </span>
	<input type="submit" value="등록하기">
	</li>
	</ul>
	</form>
	
</body>
</html>