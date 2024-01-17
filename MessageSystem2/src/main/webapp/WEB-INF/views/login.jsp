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
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
<button class="api-btn" onclick="requestUserInfo()" style="visibility:hidden">사용자 정보 가져오기</button>

<script>
  function loginWithKakao() {
    Kakao.Auth.authorize({
      redirectUri: 'http://localhost:8082/controller/Main',
      scope:'cust_name',
      state: 'userme',
    });
  }

  function requestUserInfo() {
    Kakao.API.request({
      url: '/v2/user/me',
    })
      .then(function(res) {
        alert(JSON.stringify(res));
      })
      .catch(function(err) {
        alert(
          'failed to request user information: ' + JSON.stringify(err)
        );
      });
  }

  // 아래는 데모를 위한 UI 코드입니다.
  displayToken()
  function displayToken() {
    var token = getCookie('authorize-access-token');

    if(token) {
      Kakao.Auth.setAccessToken(token);
      document.querySelector('#token-result').innerText = 'login success, ready to request API';
      document.querySelector('button.api-btn').style.visibility = 'visible';
    }
  }

  function getCookie(name) {
    var parts = document.cookie.split(name + '=');
    if (parts.length === 2) { return parts[1].split(';')[0]; }
  }
  function getInfo() {
      Kakao.API.request({
          url: '/v2/user/me',
          success: function (res) {
              console.log(res);
              // 이메일, 성별, 닉네임, 프로필이미지
              var email = res.kakao_account.email;
              var gender = res.kakao_account.gender;
              var profile_nickname = res.kakao_account.profile.nickname;
              var profile_image = res.kakao_account.profile.thumbnail_image_url;
              var birthday = res.kakao_account.birthday;

              console.log(email, gender, profile_nickname, profile_image, birthday);
          },
          fail: function (error) {
              alert('카카오 로그인에 실패했습니다. 관리자에게 문의하세요.' + JSON.stringify(error));
          }
      });
  }
</script>

  


</body>
</html>