<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/checkPhoneNumber" method="post">
    <label for="phoneNumber">Enter your phone number:</label>
    <input type="tel" id="phoneNumber" name="phoneNumber" required>
    <button type="submit">Check Phone Number</button>
</form>
</body>
</html>