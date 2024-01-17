<%@page import="kr.smhrd.entity.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- Q19. 게시글 세부내용 조회 기능 -->	
			<div id = "Product">
				<table id="list">
					
					<ui>
						
						<c:forEach var="product" items="${Product}">
        					<li>제품명 : ${product.prod_name}</li>
        					<li>제품 평점 : ${product.prod_ratings}</li>
        					<li>상품 가격: ${} }</li>
        					<li>상품 설명 : ${product.prod_desc }</li>
        					<li>판매자 : ${product.prod_cust_id }</li><br><br><br>
        				
    					</c:forEach>
					</ui>
					
					
				</table>
			</div>
</body>
</html>