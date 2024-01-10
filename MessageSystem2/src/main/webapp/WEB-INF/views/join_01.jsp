<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul class="actions vertical">
    <!-- Q1. 회원가입 기능 만들기 -->
    <li>
        <h5>회원가입</h5>
    </li>
    <form action="memberInsert">
        <li>
            <label for="email">이메일:</label>
            <input type="text" name="email" id="email" placeholder="이메일을 입력하세요">
            <select name="email_domain" id="email_domain" onchange="updateEmail()">
                <option value="naver.com">naver.com</option>
                <option value="gmail.com">gmail.com</option>
                <option value="daum.net">daum.net</option>
                <option value="hanmail.net">hanmail.net</option>
                <option value="nate.com">nate.com</option>
                <option value="custom">직접입력</option>
            </select>
            <input type="text" name="custom_email" id="custom_email" style="display: none;" placeholder="직접입력">
        </li>

        <li><input type="button" value="중복체크" onclick="checkE()"></li>
        <li><span id="resultCheck"></span></li>

        <li><input type="password" placeholder="PW를 입력하세요" name="pw"></li>

        <li><input type="text" placeholder="집주소를 입력하세요" name="address"></li>
        <li><input type="text" placeholder="이름을 입력하세요" name="name"></li>
        <li><input type="text" placeholder="휴대폰 번호를 입력하세요(숫자만)" name="phone"></li>
        <li><input type="date" name="birth" id="birth"></li>
        <li>남<input type="radio" name="gender" value="male"></li>
        <li>여<input type="radio" name="gender" value="female"></li> 
        <li><input type="submit" value="JoinUs" class="button fit"></li>
    </form>
</ul>
<script>
function updateEmail() {
    var emailDomain = document.getElementById("email_domain");
    var emailInput = document.getElementById("email");
    var customEmailInput = document.getElementById("custom_email");

    if (emailDomain.value === "custom") {
        customEmailInput.style.display = "block";
        emailInput.value = ""; // 사용자가 직접 입력하는 경우, 이메일 입력란 비우기
    } else {
        customEmailInput.style.display = "none";
        emailInput.value = emailDomain.value;
    }
}


// 생년월일 현재 시간이후로는 설정 불가
var currentDate = new Date().toISOString().split('T')[0];
document.getElementById('birth').setAttribute('max', currentDate);
</script>

</body>
</html>