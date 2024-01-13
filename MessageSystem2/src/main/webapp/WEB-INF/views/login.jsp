<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
    <form action="memberlogin" method="post">
        <h1>로그인</h1>
        핸드폰번호 : <input type="text" name="cust_phone" id="cust_phone" ><br>
        비밀번호 :  <input type="password" name="cust_pw" id="cust_pw" >
        <input type="submit" value="로그인">
        <a href="goJoin">회원가입</a>
       
    </form>

 <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js"
  integrity="sha384-6MFdIr0zOira1CHQkedUqJVql0YtcZA1P0nbPrQYJXVJZUkTk/oX4U9GhUIs3/z8" crossorigin="anonymous"></script>
<script>
  Kakao.init('2f5e21c8e3960c92cbdd998a39f43cc8'); // 사용하려는 앱의 JavaScript 키 입력
</script>

<a id="kakao-login-btn" href="javascript:loginWithKakao()">
  <img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222"
    alt="카카오 로그인 버튼" />
</a>
<p id="token-result"></p>

<script>
  function loginWithKakao() {
    Kakao.Auth.authorize({
      redirectUri: 'http://localhost:8082/controller/test',
    });
  }

  // 아래는 데모를 위한 UI 코드입니다.
  displayToken()
  function displayToken() {
    var token = getCookie('authorize-access-token');

    if(token) {
      Kakao.Auth.setAccessToken(token);
      Kakao.Auth.getStatusInfo()
        .then(function(res) {
          if (res.status === 'connected') {
            document.getElementById('token-result').innerText
              = 'login success, token: ' + Kakao.Auth.getAccessToken();
          }
        })
        .catch(function(err) {
          Kakao.Auth.setAccessToken(null);
        });
    }
  }

  function getCookie(name) {
    var parts = document.cookie.split(name + '=');
    if (parts.length === 2) { return parts[1].split(';')[0]; }
  }
  window.Kakao.init('2f5e21c8e3960c92cbdd998a39f43cc8'); // 나의 애플리케이션 앱키

  function kakaoLogin() {
      window.Kakao.Auth.login({
          scope: 'account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
          success: function(response) {
              console.log(response) // 로그인 성공하면 받아오는 데이터
              window.Kakao.API.request({ // 사용자 정보 가져오기 
                  url: '/v2/user/me',
                  success: (res) => {
                      //const kakao_account = res.kakao_account;
                      //console.log(kakao_account);

                      kakaologin.k_id.value = res.id;
                      kakaologin.k_email.value = res.kakao_account.email;
                      kakaologin.submit();
                      
                  }
              });
              // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
          },
          fail: function(error) {
              console.log(error);
          }
      });
  }
</script>

</body>
</html>