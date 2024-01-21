<%@page import="kr.smhrd.entity.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>하루그린</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./resources/assets/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="./resources/assets/css/stylejm.css">
    <link rel="stylesheet" href="./resources/assets/css/login_01.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,800" rel="stylesheet">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
<%
	Member Memberlogin = (Member) session.getAttribute("loginMember");
	%>
  <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <defs>
      <symbol xmlns="http://www.w3.org/2000/svg" id="link" viewBox="0 0 24 24">
        <path fill="currentColor" d="M12 19a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0-4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm-5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm7-12h-1V2a1 1 0 0 0-2 0v1H8V2a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v14a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V6a3 3 0 0 0-3-3Zm1 17a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-9h16Zm0-11H4V6a1 1 0 0 1 1-1h1v1a1 1 0 0 0 2 0V5h8v1a1 1 0 0 0 2 0V5h1a1 1 0 0 1 1 1ZM7 15a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0 4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-right" viewBox="0 0 24 24">
        <path fill="currentColor" d="M17.92 11.62a1 1 0 0 0-.21-.33l-5-5a1 1 0 0 0-1.42 1.42l3.3 3.29H7a1 1 0 0 0 0 2h7.59l-3.3 3.29a1 1 0 0 0 0 1.42a1 1 0 0 0 1.42 0l5-5a1 1 0 0 0 .21-.33a1 1 0 0 0 0-.76Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="category" viewBox="0 0 24 24">
        <path fill="currentColor" d="M19 5.5h-6.28l-.32-1a3 3 0 0 0-2.84-2H5a3 3 0 0 0-3 3v13a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3v-10a3 3 0 0 0-3-3Zm1 13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-13a1 1 0 0 1 1-1h4.56a1 1 0 0 1 .95.68l.54 1.64a1 1 0 0 0 .95.68h7a1 1 0 0 1 1 1Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="calendar" viewBox="0 0 24 24">
        <path fill="currentColor" d="M19 4h-2V3a1 1 0 0 0-2 0v1H9V3a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v12a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V7a3 3 0 0 0-3-3Zm1 15a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-7h16Zm0-9H4V7a1 1 0 0 1 1-1h2v1a1 1 0 0 0 2 0V6h6v1a1 1 0 0 0 2 0V6h2a1 1 0 0 1 1 1Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="heart" viewBox="0 0 24 24">
        <path fill="currentColor" d="M20.16 4.61A6.27 6.27 0 0 0 12 4a6.27 6.27 0 0 0-8.16 9.48l7.45 7.45a1 1 0 0 0 1.42 0l7.45-7.45a6.27 6.27 0 0 0 0-8.87Zm-1.41 7.46L12 18.81l-6.75-6.74a4.28 4.28 0 0 1 3-7.3a4.25 4.25 0 0 1 3 1.25a1 1 0 0 0 1.42 0a4.27 4.27 0 0 1 6 6.05Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="plus" viewBox="0 0 24 24">
        <path fill="currentColor" d="M19 11h-6V5a1 1 0 0 0-2 0v6H5a1 1 0 0 0 0 2h6v6a1 1 0 0 0 2 0v-6h6a1 1 0 0 0 0-2Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="minus" viewBox="0 0 24 24">
        <path fill="currentColor" d="M19 11H5a1 1 0 0 0 0 2h14a1 1 0 0 0 0-2Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="cart" viewBox="0 0 24 24">
        <path fill="currentColor" d="M8.5 19a1.5 1.5 0 1 0 1.5 1.5A1.5 1.5 0 0 0 8.5 19ZM19 16H7a1 1 0 0 1 0-2h8.491a3.013 3.013 0 0 0 2.885-2.176l1.585-5.55A1 1 0 0 0 19 5H6.74a3.007 3.007 0 0 0-2.82-2H3a1 1 0 0 0 0 2h.921a1.005 1.005 0 0 1 .962.725l.155.545v.005l1.641 5.742A3 3 0 0 0 7 18h12a1 1 0 0 0 0-2Zm-1.326-9l-1.22 4.274a1.005 1.005 0 0 1-.963.726H8.754l-.255-.892L7.326 7ZM16.5 19a1.5 1.5 0 1 0 1.5 1.5a1.5 1.5 0 0 0-1.5-1.5Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="check" viewBox="0 0 24 24">
        <path fill="currentColor" d="M18.71 7.21a1 1 0 0 0-1.42 0l-7.45 7.46l-3.13-3.14A1 1 0 1 0 5.29 13l3.84 3.84a1 1 0 0 0 1.42 0l8.16-8.16a1 1 0 0 0 0-1.47Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="trash" viewBox="0 0 24 24">
        <path fill="currentColor" d="M10 18a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1ZM20 6h-4V5a3 3 0 0 0-3-3h-2a3 3 0 0 0-3 3v1H4a1 1 0 0 0 0 2h1v11a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3V8h1a1 1 0 0 0 0-2ZM10 5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v1h-4Zm7 14a1 1 0 0 1-1 1H8a1 1 0 0 1-1-1V8h10Zm-3-1a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="star-outline" viewBox="0 0 15 15">
        <path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" d="M7.5 9.804L5.337 11l.413-2.533L4 6.674l2.418-.37L7.5 4l1.082 2.304l2.418.37l-1.75 1.793L9.663 11L7.5 9.804Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="star-solid" viewBox="0 0 15 15">
        <path fill="currentColor" d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="search" viewBox="0 0 24 24">
        <path fill="currentColor" d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="user" viewBox="0 0 24 24">
        <path fill="currentColor" d="M15.71 12.71a6 6 0 1 0-7.42 0a10 10 0 0 0-6.22 8.18a1 1 0 0 0 2 .22a8 8 0 0 1 15.9 0a1 1 0 0 0 1 .89h.11a1 1 0 0 0 .88-1.1a10 10 0 0 0-6.25-8.19ZM12 12a4 4 0 1 1 4-4a4 4 0 0 1-4 4Z"/>
      </symbol>
      <symbol xmlns="http://www.w3.org/2000/svg" id="close" viewBox="0 0 15 15">
        <path fill="currentColor" d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z"/>
      </symbol>
    </defs>
  </svg>

  <header>
      <div class="container-fluid">
        <div class="row py-3 border-bottom">
          
          <div class="col-sm-4 col-lg-3 text-center text-sm-start">
            <div class="main-logo">
              <a href="goMain">
                <img src="./resources/images/harugreen.png" alt="logo" class="img-fluid" style="max-width: 60%;">
              </a>
            </div>
          </div>
          
          <div class="col-sm-6 offset-sm-2 offset-md-0 col-lg-5 d-none d-lg-block">
            <div class="search-bar row bg-light p-2 my-2 rounded-4">
              <div class="col-md-4 d-none d-md-block">
                <select class="form-select border-0 bg-transparent">
                  <option>전체상품</option>
                  <option>농산물</option>
                  <option>수산물</option>
                  <option>가공식품</option>
                </select>
              </div>
              <div class="col-11 col-md-7">
                <form id="search-form" class="text-center" action="gosearch" method="post">
                  <input type="text" class="form-control border-0 bg-transparent" name="searchInput" id="searchInput" placeholder="검색어를 입력해주세요!"/>
                </form>
              </div>
              <div class="col-1">
                <div id="svg-container">
                
                 <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path fill="currentColor" d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z"/>
                 </svg>
              
            </div>
              </div>
            </div>
          </div>
          
          <div class="col-sm-8 col-lg-4 d-flex justify-content-end gap-5 align-items-center mt-4 mt-sm-0 justify-content-center justify-content-sm-end">
            <div class="support-box text-end d-none d-xl-block">
                              <h5 class="mb-0"></h5>
               </div>
            <ul class="d-flex justify-content-end list-unstyled m-0">
              <li><%
                if (Memberlogin == null) {
                %>
                <a href="goLogin" style="font-size: 20px; color: green; font-weight: bold;"><i class="fa fa-sign-in" aria-hidden="true"> 로그인</i></a>
                <%
                } else {
                %>
                <a href="goLogout" style="font-size: 20px; color: green; font-weight: bold;"><i class="fa fa-sign-out" aria-hidden="true"> 로그아웃</i></a>
                <%}%>
              </li>
              <li>
                <%
                     if (Memberlogin == null) {
                     %> <a href="goLogin" class="rounded-circle bg-light p-2 mx-1" style="color: green;">
                        <svg width="24" height="24" viewBox="0 0 24 24">
                    <use xlink:href="#user"></use>
                  </svg>
                  </a> <%
 } else {
 %> <!-- Q7. 개인정보수정 기능 만들기 --> <!-- Q8. 로그아웃 기능 만들기 --> <!-- Q9. 관리자 계정(admin)일 때는 회원정보관리 탭 만들기 -->
                     <a href="gomyPage" class="rounded-circle bg-light p-2 mx-1" style="color: green;"> <svg
                           width="24" height="24" viewBox="0 0 24 24">
                    <use xlink:href="#user"></use>
                  </svg></a> <%
 }
 %>
              </li>
              <li>
                <%
                if (Memberlogin == null) {
                %><a href="goLogin" class="rounded-circle bg-light p-2 mx-1" style="color: green;">
                  <svg width="24" height="24" viewBox="0 0 24 24">
                <use xlink:href="#cart"></use>
              </svg>
              </a> <%
   } else {%>
            <a href="goMyCart" class="rounded-circle bg-light p-2 mx-1" style="color: green;"> <svg
              width="24" height="24" viewBox="0 0 24 24">
              <use xlink:href="#cart"></use>
              </svg></a> 
              <%}%>
              </li>
            </ul>

           
          </div>
          

        </div>
      </div>
      <div class="container-fluid">
        <div class="row py-3">
          <div class="d-flex  justify-content-center justify-content-sm-between align-items-center">
            <nav class="main-menu d-flex navbar navbar-expand-lg">

              <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
                aria-controls="offcanvasNavbar">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">

                <div class="offcanvas-header justify-content-center">
                  <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>

                <div class="offcanvas-body">
              
               
              
                  <ul class="navbar-nav justify-content-end menu-list list-unstyled d-flex gap-md-3 mb-0">
                    <li class="nav-item active">
                      <a href="#" class="nav-link">전체</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a href="#" class="nav-link">농산물</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">수산물</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">가공식품</a>
                    </li>
                   
                    <a href="godiary"  class="nav-link btn-coupon-code">
                <img src="./resources/images/book-half.svg" alt="gift icon">
                <strong class="ms-2 text-dark">영농일지 보러가기</strong>
              </a>
                  </ul>
                
                </div>

              </div>

            </nav>
            <div class="d-none d-lg-block">
             
            </div>
          </div>
        </div>
      </div>
    </header>
      <!-- 여기에 본문 내용 채우면 됩니다~ -->
      <!-- 여기에 본문 내용 채우면 됩니다~ -->
      <div class="container">
        <!-- Heading -->
        <h1>회원가입</h1>
        
        <!-- Links -->
        <ul class="links">
          <li>
            <a href="goLogin" id="signup">회원가입</a>
          </li>
          <li>
            <a href="goJoin" id="signin">로그인</a>
          </li>
          <li>
            <a href="#" id="reset">초기화</a>
          </li>
        </ul>
        
        <!-- Form -->
        <form  action="memberInsert" onsubmit="return Check()">


          <!-- 새로 -->
          <div class="form-floating join_form">
            <input type="tel" class="form-control" name="cust_phone" id="cust_phone">
            <label for="floatingInput">전화번호(숫자만 입력해주세요)</label>
            <h4 id="resultCheck"></h4>
            <input type="button" onclick="checkE()" value="중복체크" class="form-control">
          </div>
          <div class="form-floating join_form">
            <input type="password" class="form-control" id="cust_pw" name="cust_pw">
            <label for="floatingPassword">비밀번호</label>
          </div>
          <div class="form-floating join_form">
            <input type="password" class="form-control" id="pwCheck" name="pwCheck">
            <label for="floatingPassword">비밀번호 확인</label>
            <h4 id="passwordMessage"></h4>
            <input type="button" value="비밀번호 확인" onclick="checkPasswordMatch()" class="form-control">
          </div>
          <div class="form-floating join_form">
            <input type="text" class="form-control"  id="cust_nick" name= "cust_nick">
            <label for="floatingPassword">닉네임</label>
          </div>
          <div class="form-floating join_form">
            <input type="text" class="form-control" name="cust_name" id="cust_name">
            <label for="floatingPassword">이름</label>
          </div>
          <div class="join_form" style="display: flex; justify-content: space-between; height: 58px;">
            <div class="form-floating">
              <input type="text" class="form-control" name="cust_email" id="cust_email" style="width: 300px;">
              <label for="floatingPassword">이메일</label>
            </div>
            <select class="form-select" name="email_domain" id="email_domain" onchange="updateEmail()" style="width :250px;">
                <option value="naver.com">@naver.com</option>
                <option value="gmail.com">@gmail.com</option>
                <option value="daum.net">@daum.net</option>
                <option value="hanmail.net">@hanmail.net</option>
                <option value="nate.com">@nate.com</option>
                <option value="custom">직접입력</option>
            </select>
          </div>
          <div class="form-floating join_form">
            <input type="text" class="form-control" name="cust_addr" id="cust_addr">
            <label for="floatingPassword">주소</label>
          </div>
          <div class="form-floating join_form">
            <input type="date" class="form-control" name="cust_birthdate" id="cust_birthdate">
            <label for="floatingPassword">생년월일</label>
          </div>
          <div class="join_form row" style="height: 58px; display: flex; justify-content: space-around; align-items: center;" >
            <div class="col-4">성별</div>
            <div class="form-check col-4">
                  <input class="form-check-input" type="radio" name="cust_gender" id="inlineRadio1" value="M">남성
                </div>
                <div class="form-check col-4">
                  <input class="form-check-input" type="radio" name="cust_gender" id="inlineRadio2" value="F">여성
            </div>

          </div>
          
          <!-- 새로 -->
          
          <!-- sign in button -->
          <button class="signin__btn" type="submit" id="joinUsButton" value="JoinUs" >
            회원가입
          </button>
        </form>
        <!-- separator -->
        <div class="separator">
          <p>또는</p>
        </div>
        <!-- google button -->
        <button class="github__btn">
          <i class="fa fa- fa-comment"></i>
          카카오톡으로 가입
        </button>
      </div>
      
      
      <!-- partial -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
        <script  src="./js/login_01.js"></script>
      



      <footer class="py-5">
        <div class="container-fluid">
          <div class="row">
  
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="footer-menu">
                <img src="./resources/images/harugreen.png" alt="logo">
                <div class="social-links mt-5">
                  <ul class="d-flex list-unstyled gap-2">
                    <li>
                      <a href="#" class="btn btn-outline-light">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M15.12 5.32H17V2.14A26.11 26.11 0 0 0 14.26 2c-2.72 0-4.58 1.66-4.58 4.7v2.62H6.61v3.56h3.07V22h3.68v-9.12h3.06l.46-3.56h-3.52V7.05c0-1.05.28-1.73 1.76-1.73Z"/></svg>
                      </a>
                    </li>
                    <li>
                      <a href="#" class="btn btn-outline-light">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M22.991 3.95a1 1 0 0 0-1.51-.86a7.48 7.48 0 0 1-1.874.794a5.152 5.152 0 0 0-3.374-1.242a5.232 5.232 0 0 0-5.223 5.063a11.032 11.032 0 0 1-6.814-3.924a1.012 1.012 0 0 0-.857-.365a.999.999 0 0 0-.785.5a5.276 5.276 0 0 0-.242 4.769l-.002.001a1.041 1.041 0 0 0-.496.89a3.042 3.042 0 0 0 .027.439a5.185 5.185 0 0 0 1.568 3.312a.998.998 0 0 0-.066.77a5.204 5.204 0 0 0 2.362 2.922a7.465 7.465 0 0 1-3.59.448A1 1 0 0 0 1.45 19.3a12.942 12.942 0 0 0 7.01 2.061a12.788 12.788 0 0 0 12.465-9.363a12.822 12.822 0 0 0 .535-3.646l-.001-.2a5.77 5.77 0 0 0 1.532-4.202Zm-3.306 3.212a.995.995 0 0 0-.234.702c.01.165.009.331.009.488a10.824 10.824 0 0 1-.454 3.08a10.685 10.685 0 0 1-10.546 7.93a10.938 10.938 0 0 1-2.55-.301a9.48 9.48 0 0 0 2.942-1.564a1 1 0 0 0-.602-1.786a3.208 3.208 0 0 1-2.214-.935q.224-.042.445-.105a1 1 0 0 0-.08-1.943a3.198 3.198 0 0 1-2.25-1.726a5.3 5.3 0 0 0 .545.046a1.02 1.02 0 0 0 .984-.696a1 1 0 0 0-.4-1.137a3.196 3.196 0 0 1-1.425-2.673c0-.066.002-.133.006-.198a13.014 13.014 0 0 0 8.21 3.48a1.02 1.02 0 0 0 .817-.36a1 1 0 0 0 .206-.867a3.157 3.157 0 0 1-.087-.729a3.23 3.23 0 0 1 3.226-3.226a3.184 3.184 0 0 1 2.345 1.02a.993.993 0 0 0 .921.298a9.27 9.27 0 0 0 1.212-.322a6.681 6.681 0 0 1-1.026 1.524Z"/></svg>
                      </a>
                    </li>
                    <li>
                      <a href="#" class="btn btn-outline-light">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M23 9.71a8.5 8.5 0 0 0-.91-4.13a2.92 2.92 0 0 0-1.72-1A78.36 78.36 0 0 0 12 4.27a78.45 78.45 0 0 0-8.34.3a2.87 2.87 0 0 0-1.46.74c-.9.83-1 2.25-1.1 3.45a48.29 48.29 0 0 0 0 6.48a9.55 9.55 0 0 0 .3 2a3.14 3.14 0 0 0 .71 1.36a2.86 2.86 0 0 0 1.49.78a45.18 45.18 0 0 0 6.5.33c3.5.05 6.57 0 10.2-.28a2.88 2.88 0 0 0 1.53-.78a2.49 2.49 0 0 0 .61-1a10.58 10.58 0 0 0 .52-3.4c.04-.56.04-3.94.04-4.54ZM9.74 14.85V8.66l5.92 3.11c-1.66.92-3.85 1.96-5.92 3.08Z"/></svg>
                      </a>
                    </li>
                    <li>
                      <a href="#" class="btn btn-outline-light">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M17.34 5.46a1.2 1.2 0 1 0 1.2 1.2a1.2 1.2 0 0 0-1.2-1.2Zm4.6 2.42a7.59 7.59 0 0 0-.46-2.43a4.94 4.94 0 0 0-1.16-1.77a4.7 4.7 0 0 0-1.77-1.15a7.3 7.3 0 0 0-2.43-.47C15.06 2 14.72 2 12 2s-3.06 0-4.12.06a7.3 7.3 0 0 0-2.43.47a4.78 4.78 0 0 0-1.77 1.15a4.7 4.7 0 0 0-1.15 1.77a7.3 7.3 0 0 0-.47 2.43C2 8.94 2 9.28 2 12s0 3.06.06 4.12a7.3 7.3 0 0 0 .47 2.43a4.7 4.7 0 0 0 1.15 1.77a4.78 4.78 0 0 0 1.77 1.15a7.3 7.3 0 0 0 2.43.47C8.94 22 9.28 22 12 22s3.06 0 4.12-.06a7.3 7.3 0 0 0 2.43-.47a4.7 4.7 0 0 0 1.77-1.15a4.85 4.85 0 0 0 1.16-1.77a7.59 7.59 0 0 0 .46-2.43c0-1.06.06-1.4.06-4.12s0-3.06-.06-4.12ZM20.14 16a5.61 5.61 0 0 1-.34 1.86a3.06 3.06 0 0 1-.75 1.15a3.19 3.19 0 0 1-1.15.75a5.61 5.61 0 0 1-1.86.34c-1 .05-1.37.06-4 .06s-3 0-4-.06a5.73 5.73 0 0 1-1.94-.3a3.27 3.27 0 0 1-1.1-.75a3 3 0 0 1-.74-1.15a5.54 5.54 0 0 1-.4-1.9c0-1-.06-1.37-.06-4s0-3 .06-4a5.54 5.54 0 0 1 .35-1.9A3 3 0 0 1 5 5a3.14 3.14 0 0 1 1.1-.8A5.73 5.73 0 0 1 8 3.86c1 0 1.37-.06 4-.06s3 0 4 .06a5.61 5.61 0 0 1 1.86.34a3.06 3.06 0 0 1 1.19.8a3.06 3.06 0 0 1 .75 1.1a5.61 5.61 0 0 1 .34 1.9c.05 1 .06 1.37.06 4s-.01 3-.06 4ZM12 6.87A5.13 5.13 0 1 0 17.14 12A5.12 5.12 0 0 0 12 6.87Zm0 8.46A3.33 3.33 0 1 1 15.33 12A3.33 3.33 0 0 1 12 15.33Z"/></svg>
                      </a>
                    </li>
                    <li>
                      <a href="#" class="btn btn-outline-light">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M1.04 17.52q.1-.16.32-.02a21.308 21.308 0 0 0 10.88 2.9a21.524 21.524 0 0 0 7.74-1.46q.1-.04.29-.12t.27-.12a.356.356 0 0 1 .47.12q.17.24-.11.44q-.36.26-.92.6a14.99 14.99 0 0 1-3.84 1.58A16.175 16.175 0 0 1 12 22a16.017 16.017 0 0 1-5.9-1.09a16.246 16.246 0 0 1-4.98-3.07a.273.273 0 0 1-.12-.2a.215.215 0 0 1 .04-.12Zm6.02-5.7a4.036 4.036 0 0 1 .68-2.36A4.197 4.197 0 0 1 9.6 7.98a10.063 10.063 0 0 1 2.66-.66q.54-.06 1.76-.16v-.34a3.562 3.562 0 0 0-.28-1.72a1.5 1.5 0 0 0-1.32-.6h-.16a2.189 2.189 0 0 0-1.14.42a1.64 1.64 0 0 0-.62 1a.508.508 0 0 1-.4.46L7.8 6.1q-.34-.08-.34-.36a.587.587 0 0 1 .02-.14a3.834 3.834 0 0 1 1.67-2.64A6.268 6.268 0 0 1 12.26 2h.5a5.054 5.054 0 0 1 3.56 1.18a3.81 3.81 0 0 1 .37.43a3.875 3.875 0 0 1 .27.41a2.098 2.098 0 0 1 .18.52q.08.34.12.47a2.856 2.856 0 0 1 .06.56q.02.43.02.51v4.84a2.868 2.868 0 0 0 .15.95a2.475 2.475 0 0 0 .29.62q.14.19.46.61a.599.599 0 0 1 .12.32a.346.346 0 0 1-.16.28q-1.66 1.44-1.8 1.56a.557.557 0 0 1-.58.04q-.28-.24-.49-.46t-.3-.32a4.466 4.466 0 0 1-.29-.39q-.2-.29-.28-.39a4.91 4.91 0 0 1-2.2 1.52a6.038 6.038 0 0 1-1.68.2a3.505 3.505 0 0 1-2.53-.95a3.553 3.553 0 0 1-.99-2.69Zm3.44-.4a1.895 1.895 0 0 0 .39 1.25a1.294 1.294 0 0 0 1.05.47a1.022 1.022 0 0 0 .17-.02a1.022 1.022 0 0 1 .15-.02a2.033 2.033 0 0 0 1.3-1.08a3.13 3.13 0 0 0 .33-.83a3.8 3.8 0 0 0 .12-.73q.01-.28.01-.92v-.5a7.287 7.287 0 0 0-1.76.16a2.144 2.144 0 0 0-1.76 2.22Zm8.4 6.44a.626.626 0 0 1 .12-.16a3.14 3.14 0 0 1 .96-.46a6.52 6.52 0 0 1 1.48-.22a1.195 1.195 0 0 1 .38.02q.9.08 1.08.3a.655.655 0 0 1 .08.36v.14a4.56 4.56 0 0 1-.38 1.65a3.84 3.84 0 0 1-1.06 1.53a.302.302 0 0 1-.18.08a.177.177 0 0 1-.08-.02q-.12-.06-.06-.22a7.632 7.632 0 0 0 .74-2.42a.513.513 0 0 0-.08-.32q-.2-.24-1.12-.24q-.34 0-.8.04q-.5.06-.92.12a.232.232 0 0 1-.16-.04a.065.065 0 0 1-.02-.08a.153.153 0 0 1 .02-.06Z"/></svg>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
  
              <div class="footer-menu">
                <h5 class="widget-title">Customer Service</h5>
                <ul class="menu-list list-unstyled">
                  <li class="menu-item">
                    <a href="#" class="nav-link">FAQ</a>
                  </li>
                  <li class="menu-item">
                    <a href="#" class="nav-link">Contact</a>
                  </li>
                  <li class="menu-item">
                    <a href="#" class="nav-link">Privacy Policy</a>
                  </li>
                  <li class="menu-item">
                    <a href="#" class="nav-link">Returns & Refunds</a>
                  </li>
                  <li class="menu-item">
                    <a href="#" class="nav-link">Cookie Guidelines</a>
                  </li>
                  <li class="menu-item">
                    <a href="#" class="nav-link">Delivery Information</a>
                  </li>
                </ul>
              </div>
            </div> -->
            <div class="col-md-2 col-sm-6">
              <div class="footer-menu">
                <h5 class="widget-title">서비스맵</h5>
                <ul class="menu-list list-unstyled">
                  <li class="menu-item">
                    <a href="#" class="nav-link">전체식품</a>
                  </li>
                  <li class="menu-item">
                    <a href="#" class="nav-link">농산물</a>
                  </li>
                  <li class="menu-item">
                    <a href="#" class="nav-link">수산물</a>
                  </li>
                  <li class="menu-item">
                    <a href="#" class="nav-link">축산물</a>
                  </li>
                  <li class="menu-item">
                    <a href="#" class="nav-link">가공식품</a>
                  </li>
                  <li class="menu-item">
                    <a href="#" class="nav-link">영농일지</a>
                  </li>
                </ul>
              </div>
            </div>
                        
          </div>
        </div>
      </footer>
      <div id="footer-bottom">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6 copyright">
              <p>©그린허브 핵심프로젝트.</p>
            </div>
            
          </div>
        </div>
      </div>
      
      <script src="./resources/assets/js/jquery-1.11.0.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
      <script src="./resources/assets/js/plugins.js"></script>
      <script src="./resources/assets/js/script.js"></script>
      <script>
    document.getElementById("userIcon").addEventListener("click", function() {
       window.location.href = "goLogin";
  });
    
    </script>
    <script>
  // 검색창 눌렀을때 페이지 이동
   document.getElementById('svg-container').addEventListener('click', function() {
    // 현재 검색어 입력란의 값을 가져옴
    var inputValue = document.getElementById('searchInput').value;
    // 현재 페이지 URL에 검색어를 추가하여 페이지 이동
    window.location.href = 'gosearch?searchInput=' + encodeURIComponent(inputValue);
  });
</script>
<script >
// 생년월일 현재 시간이후로는 설정 불가
var currentDate = new Date().toISOString().split('T')[0];
document.getElementById('cust_birthdate').setAttribute('max', currentDate);

// 비밀번호 확인
var passwordChecked = false; // 비밀번호 확인 여부를 저장하는 변수 추가

function checkPasswordMatch() {
    var pw = document.getElementById('cust_pw').value;
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
function checkAll() {
    // 필수 입력 필드 배열
    var requiredFields = ['cust_email', 'cust_pw', 'pwCheck', 'cust_addr', 'cust_name', 'cust_phone', 'cust_birthdate'];

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
</script>
<script type="text/javascript">
			
				function checkE(){ /* $ : jQuery */
					
					var inputE = $('#cust_phone').val()
					console.log(inputE)
					
					 $.ajax({ // json 형식-> {key : value, key : value}
						// 어디로 요청할 것인지(요청 url)
						url : 'phoneCheck',
						// 요청 데이터
						
						data : { 'cust_phone' : inputE },
						// 요청방식
						type : 'get',
						// 요청-응답 성공
						success : function(data){
							// 불가능 : 0, 가능 : 1
							// alert(data)
							if(data == 0){
								$('#resultCheck').text('사용 불가능한 핸드폰번호')
							}else{
								$('#resultCheck').text('사용 가능한 핸드폰번호')
							}
						},
						// 요청-응답 실패
						error : function(){
							alert("통신실패")
						}
					}) 
					
					
					
				}
			
			
			</script>
</body>
</html>