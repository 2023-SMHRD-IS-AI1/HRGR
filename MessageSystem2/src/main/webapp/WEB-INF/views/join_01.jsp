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
    <form action="memberInsert" onsubmit="return validateForm()">
        <li><input type="text" placeholder="숫자만 입력해주세요" name="phone" id="phone"></li>
        
        <li><input type="password" placeholder="PW를 입력하세요" id="pw" name="pw"></li>
        <li><input type="password" placeholder="PW확인" id="pwCheck" name="pwCheck"><h4 id="passwordMessage"></h4></li>
        
        <li><input type="button" value="비밀번호 확인" onclick="checkPasswordMatch()"></li>
        <li><input type="text" id="nick" name= "nick" placeholder="닉네임을 입력해주세요"></li>
        <li><input type="text" placeholder="이름을 입력하세요" name="name" id="name"></li>
       
        <li>
            <label for="email">이메일:</label>
            <input type="text" name="email" id="email" placeholder="이메일을 입력하세요">
            <input type="text" name="custom_email" id="custom_email" style="display: none;" placeholder="직접입력">
            <select name="email_domain" id="email_domain" onchange="updateEmail()">
                <option value="naver.com">naver.com</option>
                <option value="gmail.com">gmail.com</option>
                <option value="daum.net">daum.net</option>
                <option value="hanmail.net">hanmail.net</option>
                <option value="nate.com">nate.com</option>
                <option value="custom">직접입력</option>
            </select>
        </li>
        
        <li>남<input type="radio" name="gender" value="M"></li>
        <li>여<input type="radio" name="gender" value="F"></li>
        
        <li><input type="text" placeholder="집주소를 입력하세요" name="address" id="address"></li>
        
        <li><input type="date" name="birth" id="birth"></li>
        
        <li><input type="submit" id="joinUsButton" value="JoinUs" class="button fit" disabled></li>
    </form>
</ul>
<script>
function updatePhone() {
    // 전화번호 select 태그에서 선택한 값을 가져와서 phone1에 설정
    var phone1Value = document.getElementById("phone1").value;
    document.getElementById("phone1").value = phone1Value;
}
	
    function updateEmail() {
        var emailDomain = document.getElementById("email_domain");
        var emailInput = document.getElementById("email");
        var customEmailInput = document.getElementById("custom_email");

        if (emailDomain.value === "custom") {
            customEmailInput.style.display = "block";
            emailInput.value = ""; // 사용자가 직접 입력하는 경우, 이메일 입력란 비우기
        } else {
            customEmailInput.style.display = "none";
            
        }
    }

    // 생년월일 현재 시간이후로는 설정 불가
    var currentDate = new Date().toISOString().split('T')[0];
    document.getElementById('birth').setAttribute('max', currentDate);

    // 비밀번호 확인
    var passwordChecked = false; // 비밀번호 확인 여부를 저장하는 변수 추가

    function checkPasswordMatch() {
        var pw = document.getElementById('pw').value;
        var pwCheck = document.getElementById('pwCheck').value;
        var passwordMessage = document.getElementById('passwordMessage');
        var joinUsButton = document.getElementById('joinUsButton');

        if (pw === pwCheck) {
            passwordMessage.innerHTML = '비밀번호가 일치합니다.';
            passwordChecked = true; // 비밀번호 확인됨
        } else {
            passwordMessage.innerHTML = '비밀번호가 일치하지 않습니다.';
            passwordChecked = false; // 비밀번호 불일치
        }

        joinUsButton.disabled = !passwordChecked; // 버튼 활성화 여부 설정
    }

    function checkAllFieldsFilled() {
        // 필수 입력 필드 배열
        var requiredFields = ['email', 'pw', 'pwCheck', 'address', 'name', 'phone', 'birth','gender'];

        // 배열을 순회하면서 각 필드가 비어있는지 확인
        for (var i = 0; i < requiredFields.length; i++) {
            // 필드의 값을 가져오고 양 끝의 공백을 제거하여 비어있는지 확인
            var fieldValue = document.getElementById(requiredFields[i]).value.trim();

            // 만약 필드가 비어있다면 false를 반환하고 함수 종료
            if (fieldValue === '') {
                return false;
            }
        }

        // 모든 필드가 비어있지 않다면 true 반환
        return true;
    }

    function validateForm() {
        if (!passwordChecked) {
            alert('비밀번호를 확인해주세요.');
            return false;
        }

        if (!checkAllFieldsFilled()) {
            alert('빈 칸을 입력해주세요.');
            return false;
        }

        return true;
    }
</script>
</body>
</html>