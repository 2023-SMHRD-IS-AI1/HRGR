<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상품 등록</h1>
	<form action="prodRegist">
	<ul>
	<li><input type="text" placeholder="상품명을 입력해주세요" name="prod_name"></li>
	<li><input type="text" placeholder="상품의 가격을 입력해주세요" name="prod_price"></li>
	<li><input type="text" placeholder="상품의 타입을 입력해주세요(농산물/수산물/축산물 등)" name="prod_type"></li>
	<li><input type="text" placeholder="상품의 재고를 입력해주세요(숫자만)" name="prod_stock"></li>
	<li><input type="text" placeholder="상품의 설명을 입력해주세요" name="prod_desc"></li>
	<li><!-- <input type="" value="취소하기" > -->
		<span>  </span>
		<input type="submit" value="등록하기">
	</li>
	</ul>
	</form>
</body>
</html>