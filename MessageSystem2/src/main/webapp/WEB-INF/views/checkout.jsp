<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@page import="kr.smhrd.entity.Product"%>
  <%@page import="kr.smhrd.entity.Member"%>
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

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">


<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css">


<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<style>
  .checkout_row{
    margin-bottom: 10px;
  }
  .form-control-plaintext{
    border-width: 0px;
    padding: 5px;
  }
</style>

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
                  <option >전체상품</option>
                  <option >농산물</option>
                  <option >수산물</option>
                  <option >가공식품</option>
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
 %>
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
                      <a href="searchno?value=농산물" class="nav-link">농산물</a>
                    </li>
                    <li class="nav-item">
                      <a href="searchno?value=수산물" class="nav-link">수산물</a>
                    </li>
                    <li class="nav-item">
                      <a href="searchno?value=가공식품" class="nav-link">가공식품</a>
                    </li>
                   
                    <a href="godiary" class="nav-link btn-coupon-code">
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
<!-- 헤더 끝 -->
           <div class="myOrder_parent" >
        <div class="myOrder ">






          <div class="checkout_info" style="padding: 0px 200px;">
          <h2 align="center" style="font-weight: bold; margin-bottom: 30px;">주문/결제</h2>

          <form action="">


            <div>
              <h4 style="font-weight: bold;">구매자정보</h4>
              <hr>
              <div class="row checkout_row">
                <div class="col-3" align="right" style="padding: 5px;">이름</div>
                <div class="col-9"><input type="text" class="form-control-plaintext" value="구매자이름" readonly></div>
              </div>
              <div class="row checkout_row">
                <div class="col-3" align="right" style="padding: 5px;">이메일</div>
                <div class="col-9"><input type="text" class="form-control-plaintext" value="구매자이메일" readonly></div>
              </div>
              <div class="row checkout_row" style="margin-bottom: 0px;">
                <div class="col-3" align="right" style="padding: 5px;">휴대폰번호</div>
                <div class="col-9"><input type="text" class="form-control" placeholder="구매자휴대폰번호"></div>
              </div>
            </div>
            <hr>


            <div style="margin-top: 50px;">
              <h4 style="font-weight: bold;">받는사람정보</h4>
              <hr>
              <div class="row checkout_row">
                <div class="col-3" align="right" style="padding: 5px;">이름</div>
                <div class="col-9"><input type="text" class="form-control" placeholder="받는사람이름"></div>
              </div>
              <div class="row checkout_row">
                <div class="col-3" align="right" style="padding: 5px;">배송주소</div>
                <div class="col-9"><input type="text" class="form-control" placeholder="구매자휴대폰번호"></div>
              </div>
              <div class="row checkout_row">
                <div class="col-3" align="right" style="padding: 5px;">연락처</div>
                <div class="col-9"><input type="text" class="form-control" placeholder="구매자휴대폰번호"></div>
              </div>
              <div class="row checkout_row">
                <div class="col-3" align="right" style="padding: 5px;">배송요청사항</div>
                <div class="col-9"><input type="text" class="form-control" placeholder="요청사항을 입력해주세요"></div>
              </div>
            </div>
            <hr>


            <div style="margin-top: 50px;">
              <h4 style="font-weight: bold;">결제정보</h4>
              <hr>
              <div class="row checkout_row">
                <div class="col-3" align="right" style="padding: 5px;">총상품가격</div>
                <div class="col-9"><input type="text" class="form-control-plaintext" value="총상품가격" readonly></div>
              </div>
              <div class="row checkout_row">
                <div class="col-3" align="right" style="padding: 5px;">총결제금액</div>
                <div class="col-9"><input type="text" class="form-control-plaintext" value="총상품가격+배송비합" readonly></div>
              </div>
              <div class="row checkout_row">
                <div class="col-3" align="right" style="padding: 5px;">결제방법</div>
                <div class="col-9" style="padding-top: 5px;">
                  <div class="form-check form-check-inline" >
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="카드결제">
					<label class="form-check-label" for="inlineRadio1">카드결제</label>
                   </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="카카오페이">
					<label class="form-check-label" for="inlineRadio2">카카오페이</label>
                </div></div>
              </div>
            </div>
            <hr>
            <div align="center">
              <a href="goMain" style="text-decoration: none;">
                <button type="button" class="btn btn-lg btn-outline-success">취소</button>
              </a>
              <button type="button" class="btn btn-lg btn-success" onclick="handlePayment()">결제하기</button>
              </div>




          </form>



        </div>
      
      









            </div>          
            </div>          

          
              <!-- 푸터 시작 -->
              <footer class="py-5">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                      <div class="footer-menu">
                        <img src="./resources/images/harugreen.png" alt="logo">

                      </div>
                    </div>
          
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
                            <a href="#" class="nav-link">가공식품</a>
                          </li>
                          <li class="menu-item">
                            <a href="godiary" class="nav-link">영농일지</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <p>©그린허브 핵심프로젝트.</p>
                  </div>
                </div>
                
        
              </footer>

      <script src="js/jquery-1.11.0.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
      <script src="js/plugins.js"></script>
      <script src="js/script.js"></script>
      <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
      
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
  

   // 라디오 버튼 선택 여부 확인 및 동적 처리
   function handlePayment() {
     var radioOptions = document.getElementsByName("inlineRadioOptions");
     var selectedValue = "";

     for (var i = 0; i < radioOptions.length; i++) {
       if (radioOptions[i].checked) {
         selectedValue = radioOptions[i].value;
         break;
       }
     }

     // 선택된 값이 "카카오페이"인 경우에만 함수 호출
     if (selectedValue === "카카오페이") {
     	var pg = "kakaopay"
     	iamport(pg);
     }else if(selectedValue === "카드결제"){
     	var pg = "html5_inicis"
     	iamport(pg);
     }
   }
	// 결제 코드
	   function iamport(pg) {
		    // 가맹점 식별코드
		    IMP.init('imp44183336'); // 가맹점 식별코드로 Iamport 초기화
		    IMP.request_pay({ // 결제 요청
		        pg: pg,   // PG사 설정
		        pay_method : "card", // 결제 방법
		        merchant_uid : "20231101ABDE", // 주문 번호
		        name : "하루그린", // 상품 이름
		        amount: 3000, // 결제 가격
		        buyer_name : "홍길동", // 구매자 이름
		        buyer_tel : "010-5555-1111", // 구매자 연락처
		        buyer_postcode : 52030, // 구매자 우편번호
		        buyer_addr : "경기도 판교" // 구매자 주소
		    }, function(res) {
		        if (res.success) {
		            axios({
		                method: "post",
		                url: "http://localhost:8081/controller/payByImport"
		            })
		        } else {
		            console.error(response.error_msg);
		        }
		    });

		 }
 
  
   
</script>
</body>
</html>