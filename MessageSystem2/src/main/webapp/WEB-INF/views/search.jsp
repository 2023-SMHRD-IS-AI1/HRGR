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
					<tr>
						<td>제목</td>
						<c:forEach var="product" items="${Product}">
        					<td>${product.prod_name}</td>
        					<td>${product.prod_ratings}</td>
    					</c:forEach>
					</tr>
					
				</table>
			</div>
</body>
</html>