<%@page import="kr.smhrd.entity.Product"%>
<%@page import="java.util.List"%>
<%@page import="kr.smhrd.entity.Member"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="./resources/assets/css/vendor.css">
<link rel="stylesheet" type="text/css"
	href="./resources/assets/css/style.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<linkhref="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/vendor.css">
    <link rel="stylesheet" type="text/css" href="stylejm.css">
  <link rel="stylesheet" type="text/css" href="./resources/assets/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="./resources/assets/css/stylejm.css">
    <link rel="stylesheet" href="./resources/assets/css/login_01.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,800" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'><link rel="stylesheet" href="./css/login_01.css">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/assets/css/font-awesome.min.css">

</head>
<body>
	<%
	Member Memberlogin = (Member) session.getAttribute("loginMember");
	%>
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <defs>
        <symbol xmlns="http://www.w3.org/2000/svg" id="link"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M12 19a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0-4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm-5 0a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm7-12h-1V2a1 1 0 0 0-2 0v1H8V2a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v14a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V6a3 3 0 0 0-3-3Zm1 17a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-9h16Zm0-11H4V6a1 1 0 0 1 1-1h1v1a1 1 0 0 0 2 0V5h8v1a1 1 0 0 0 2 0V5h1a1 1 0 0 1 1 1ZM7 15a1 1 0 1 0-1-1a1 1 0 0 0 1 1Zm0 4a1 1 0 1 0-1-1a1 1 0 0 0 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="arrow-right"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M17.92 11.62a1 1 0 0 0-.21-.33l-5-5a1 1 0 0 0-1.42 1.42l3.3 3.29H7a1 1 0 0 0 0 2h7.59l-3.3 3.29a1 1 0 0 0 0 1.42a1 1 0 0 0 1.42 0l5-5a1 1 0 0 0 .21-.33a1 1 0 0 0 0-.76Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="category"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M19 5.5h-6.28l-.32-1a3 3 0 0 0-2.84-2H5a3 3 0 0 0-3 3v13a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3v-10a3 3 0 0 0-3-3Zm1 13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-13a1 1 0 0 1 1-1h4.56a1 1 0 0 1 .95.68l.54 1.64a1 1 0 0 0 .95.68h7a1 1 0 0 1 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="calendar"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M19 4h-2V3a1 1 0 0 0-2 0v1H9V3a1 1 0 0 0-2 0v1H5a3 3 0 0 0-3 3v12a3 3 0 0 0 3 3h14a3 3 0 0 0 3-3V7a3 3 0 0 0-3-3Zm1 15a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-7h16Zm0-9H4V7a1 1 0 0 1 1-1h2v1a1 1 0 0 0 2 0V6h6v1a1 1 0 0 0 2 0V6h2a1 1 0 0 1 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="heart"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M20.16 4.61A6.27 6.27 0 0 0 12 4a6.27 6.27 0 0 0-8.16 9.48l7.45 7.45a1 1 0 0 0 1.42 0l7.45-7.45a6.27 6.27 0 0 0 0-8.87Zm-1.41 7.46L12 18.81l-6.75-6.74a4.28 4.28 0 0 1 3-7.3a4.25 4.25 0 0 1 3 1.25a1 1 0 0 0 1.42 0a4.27 4.27 0 0 1 6 6.05Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="plus"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M19 11h-6V5a1 1 0 0 0-2 0v6H5a1 1 0 0 0 0 2h6v6a1 1 0 0 0 2 0v-6h6a1 1 0 0 0 0-2Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="minus"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M19 11H5a1 1 0 0 0 0 2h14a1 1 0 0 0 0-2Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="cart"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M8.5 19a1.5 1.5 0 1 0 1.5 1.5A1.5 1.5 0 0 0 8.5 19ZM19 16H7a1 1 0 0 1 0-2h8.491a3.013 3.013 0 0 0 2.885-2.176l1.585-5.55A1 1 0 0 0 19 5H6.74a3.007 3.007 0 0 0-2.82-2H3a1 1 0 0 0 0 2h.921a1.005 1.005 0 0 1 .962.725l.155.545v.005l1.641 5.742A3 3 0 0 0 7 18h12a1 1 0 0 0 0-2Zm-1.326-9l-1.22 4.274a1.005 1.005 0 0 1-.963.726H8.754l-.255-.892L7.326 7ZM16.5 19a1.5 1.5 0 1 0 1.5 1.5a1.5 1.5 0 0 0-1.5-1.5Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="check"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M18.71 7.21a1 1 0 0 0-1.42 0l-7.45 7.46l-3.13-3.14A1 1 0 1 0 5.29 13l3.84 3.84a1 1 0 0 0 1.42 0l8.16-8.16a1 1 0 0 0 0-1.47Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="trash"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M10 18a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1ZM20 6h-4V5a3 3 0 0 0-3-3h-2a3 3 0 0 0-3 3v1H4a1 1 0 0 0 0 2h1v11a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3V8h1a1 1 0 0 0 0-2ZM10 5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v1h-4Zm7 14a1 1 0 0 1-1 1H8a1 1 0 0 1-1-1V8h10Zm-3-1a1 1 0 0 0 1-1v-6a1 1 0 0 0-2 0v6a1 1 0 0 0 1 1Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="star-outline"
			viewBox="0 0 15 15">
          <path fill="none" stroke="currentColor" stroke-linecap="round"
			stroke-linejoin="round"
			d="M7.5 9.804L5.337 11l.413-2.533L4 6.674l2.418-.37L7.5 4l1.082 2.304l2.418.37l-1.75 1.793L9.663 11L7.5 9.804Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="star-solid"
			viewBox="0 0 15 15">
          <path fill="currentColor"
			d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="search"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="user"
			viewBox="0 0 24 24">
          <path fill="currentColor"
			d="M15.71 12.71a6 6 0 1 0-7.42 0a10 10 0 0 0-6.22 8.18a1 1 0 0 0 2 .22a8 8 0 0 1 15.9 0a1 1 0 0 0 1 .89h.11a1 1 0 0 0 .88-1.1a10 10 0 0 0-6.25-8.19ZM12 12a4 4 0 1 1 4-4a4 4 0 0 1-4 4Z" />
        </symbol>
        <symbol xmlns="http://www.w3.org/2000/svg" id="close"
			viewBox="0 0 15 15">
          <path fill="currentColor"
			d="M7.953 3.788a.5.5 0 0 0-.906 0L6.08 5.85l-2.154.33a.5.5 0 0 0-.283.843l1.574 1.613l-.373 2.284a.5.5 0 0 0 .736.518l1.92-1.063l1.921 1.063a.5.5 0 0 0 .736-.519l-.373-2.283l1.574-1.613a.5.5 0 0 0-.283-.844L8.921 5.85l-.968-2.062Z" />
        </symbol>
      </defs>
    </svg>

	<div class="preloader-wrapper">
		<div class="preloader"></div>
	</div>


	<div class="offcanvas offcanvas-end" data-bs-scroll="true"
		tabindex="-1" id="offcanvasSearch" aria-labelledby="Search">
		<div class="offcanvas-header justify-content-center">
			<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
				aria-label="Close"></button>
		</div>
		<div class="offcanvas-body">
			<div class="order-md-last">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<span class="text-primary">Search</span>
				</h4>
				<form role="search" action="index.html" method="get"
					class="d-flex mt-3 gap-0">
					<input class="form-control rounded-start rounded-0 bg-light"
						type="email" placeholder="What are you looking for?"
						aria-label="What are you looking for?">
					<button class="btn btn-dark rounded-end rounded-0" type="submit">Search</button>
				</form>
			</div>
		</div>
	</div>

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
                      <a href="searchAll" class="nav-link">전체</a>
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


	<section class="py-3"
		style="background-image: url('./resources/images/background-pattern.jpg'); background-repeat: no-repeat; background-size: cover; font-family: 'Noto Sans KR',sans-serif; font-weight: bold;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">

					<div class="banner-blocks" style="color: black;">

						<div class="banner-ad large bg-info block-1" style=" background-image: url('./resources/images/background.png'); background-position: center center">

							<div class="swiper main-swiper">
								<div class="swiper-wrapper">

									<div class="swiper-slide">								
							
											<div class="banner-content" style="padding: 20px 48px; width: 100%;">
											<div style="margin-bottom :20px; font-size:17px; padding: 0px 16px;">오늘의 농수산물 순위를 확인해보세요!</div>
					                        <div class="row justify-content-between" style="width: 100%; margin: 0px;">
					                          <div class="col-3" style="font-size: 22px;">
					                            <div><h2 style="font-weight: bold;">농산물<i class="fa fa-pagelines" aria-hidden="true" style="color: green;"></i></h2></div>
					                            <hr>
					                            <c:forEach var="data" items="${dataList}">
					                            <div>${data.datalabAgri}</div>
					                            </c:forEach>
					                          </div>
					                          <div class="col-3" style="font-size: 22px;">
					                            <div><h2 style="font-weight: bold;">수산물<i class="fa fa-ship" aria-hidden="true" style="color: cornflowerblue;"></i></h2></div>
					                            <hr>
					                            <c:forEach var="data" items="${dataList}">
					                            <div>${data.datalabAqua}</div>	
					                            </c:forEach>				                            
					                          </div>
					                          <div class="col-5" style="font-size: 22px;">
					                            <div><h2 style="font-weight: bold;">판매량 TOP10<i class="fa fa-star" aria-hidden="true" style="color: rgb(255, 225, 0);"></i></h2></div>
					                            <hr>
					                            <c:forEach var="data" items="${dataList}">
					                            <div>${data.rankingIdx} ${data.nongla}</div>
					                            </c:forEach>
					                          </div>
					
					                        </div>
					
					                      </div>

									</div>

				                    <div class="swiper-slide">
				                      <div class="row banner-content p-5">
				                        <div class="content-wrapper col-md-7">
				                          <div class="categories my-3" >영농일지</div>
				                          <h3 class="display-4">판매자가 키운 작물들을 구경하세요!</h3>
				                          <p>김연성 농원, 민경상회, 상권농장 등 많은 판매자들이 있습니다!</p>
				                          <a href="godiary" class="btn btn-outline-dark btn-lg ltext-uppercase fs-6 rounded-1 px-4 py-3 mt-3">보러가기!</a>
				                        </div>
										<div class="img-wrapper col-md-5">
											
										</div>
				                      </div>
				                    </div>

									<div class="swiper-slide">
										<div class="row banner-content p-5">
											<div class="content-wrapper col-md-7">
												<div class="categories mb-3 pb-3">100% natural</div>
												<h3 class="banner-title">Heinz Tomato Ketchup</h3>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Dignissim massa diam elementum.</p>
												<a href="#"
													class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">Shop
													Collection</a>
											</div>
											<div class="img-wrapper col-md-5">
												 
												 
											</div>
										</div>
									</div>
								</div>

								<div class="swiper-pagination"></div>

							</div>
						</div>

						<div class="banner-ad bg-success-subtle block-2"
							style="background: url('./resources/images/fish.png') no-repeat; background-position: right bottom">
							<div class="row banner-content p-5">

								    <div class="content-wrapper col-md-7" style="background-color: rgba(255, 255, 255, 0.508); box-shadow: 0px 0px 15px 15px  rgba(255, 255, 255, 0.508);" >
									<div class="categories sale mb-3 pb-3">할인행사!</div>
									<h3 class="banner-title">신선한 수산물 시세보다 싸게!</h3>
									<a href="#" class="d-flex align-items-center nav-link">모아보기
										<svg width="24" height="24">
											<use xlink:href="#arrow-right"></use></svg>
									</a>
								</div>

							</div>
						</div>

						<div class="banner-ad bg-danger block-3"
							style="background: url('./resources/images/pear.png') no-repeat; background-position: right bottom">
							<div class="row banner-content p-5">
								<div class="content-wrapper col-md-7" style="background-color: rgba(255, 255, 255, 0.508); box-shadow: 0px 0px 15px 15px  rgba(255, 255, 255, 0.508);" >
									<div class="categories sale mb-3 pb-3">겨울배 할인</div>
									<h3 class="item-title">얘! 겨울배가 달아~</h3>
									<a href="#" class="d-flex align-items-center nav-link">모아보기
										<svg width="24" height="24">
											<use xlink:href="#arrow-right"></use></svg>
									</a>
								</div>

							</div>
						</div>

					</div>
					<!-- / Banner Blocks -->

				</div>
			</div>
		</div>
	</section>


	<section class="py-5 overflow-hidden">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">

					<div
						class="section-header d-flex flex-wrap justify-content-between my-5">

						<h2 class="section-title">실시간 구매 TOP5</h2>

						<div class="d-flex align-items-center">
							<a href="#" class="btn-link text-decoration-none">TOP10 모아보기
								→</a>
							<!-- TOP10 페이지 제작? -->
							<div class="swiper-buttons">
								<button
									class="swiper-prev products-carousel-prev btn btn-primary">❮</button>
								<button
									class="swiper-next products-carousel-next btn btn-primary">❯</button>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-md-12">

					<!-- 1. tb_order에 있는 prod_idx 개수 세기 -->
					<!-- 2. 개수 상위 5개 나열하기 -->

					<div class="products-carousel swiper">
						<div class="swiper-wrapper">
							<!-- TOP5 하나 시작 -->
							<%
				List<Product> topBuy = (List<Product>) request.getAttribute("topBuy");
				for (int i = 0; i < topBuy.size() && i < 5; i++) {
					Product Buy = topBuy.get(i);
				%>
							
							<div class="product-item swiper-slide">
								<a href="#" class="btn-wishlist"><svg width="24" height="24">
										<use xlink:href="#heart"></use></svg></a>
								<figure>
									<a href="goprodDetail?prod_idx=<%=Buy.getProd_idx() %>" title="Product Title"> <img
										src="./resources/upload/<%=Buy.getImg_name()%>" class="tab-image" onerror="this.onerror=null;this.src='./resources/images/imgonerror.jpg';" style="width:100%">
									</a>
								</figure>
								<h3><%=Buy.getProd_name() %></h3>
								<span class="rating"><i class="fa fa-star" aria-hidden="true" style="color:rgb(255, 217, 0)"></i><%=Buy.getProd_ratings() %></span> <span class="price"><%=Buy.getProd_price() %>원</span>
								<div class="d-flex align-items-center justify-content-between">
									<div class="input-group product-qty">
										<span class="input-group-btn">
											<button type="button"
												class="quantity-left-minus btn btn-danger btn-number"
												data-type="minus">
												<svg width="16" height="16">
													<use xlink:href="#minus"></use></svg>
											</button>
										</span> <input type="text" id="quantity" name="quantity(2)<%=i %>"
											class="form-control input-number" value="1"> <span
											class="input-group-btn">
											<button type="button"
												class="quantity-right-plus btn btn-success btn-number"
												data-type="plus">
												<svg width="16" height="16">
													<use xlink:href="#plus"></use></svg>
											</button>
										</span>
									</div>
									<a href="goMain" class="nav-link" onclick="addToCart(event,<%=Buy.getProd_idx()%>, <%=Buy.getProd_price()%>, 'quantity(2)<%=i %>')">장바구니
										넣기 <iconify-icon icon="uil:shopping-cart">
									</a>

								</div>
							</div>
							<%} %>
							<!-- TOP5 하나 끝 -->
						</div>

					</div>
					<!-- / products-carousel -->

				</div>
			</div>
		</div>
	</section>


	<section id="latest-blog" class="py-5">
		<div class="container-fluid">
			<div class="row">
				<div
					class="section-header d-flex align-items-center justify-content-between my-5">
					<h2 class="section-title">판매자들의 영농일지</h2>
					<div class="btn-wrap align-right">
						<a href="godiary" class="d-flex align-items-center nav-link">영농일지
							모아보기 <svg width="24" height="24">
								<use xlink:href="#arrow-right"></use></svg>
						</a>
					</div>
					<!-- 영농일지 모아보는 페이지로 이동 -->
				</div>
			</div>


			<div class="row">
				<%
				List<Product> likeDiaries = (List<Product>) request.getAttribute("likeDiaries");
				for (int i = 0; i < likeDiaries.size() && i < 3; i++) {
					Product diary = likeDiaries.get(i);
				%>
				<div class="col-md-4">
					<article class="post-item card border-0 shadow-sm p-3">
						<div class="image-holder zoom-effect">
							<a href="goSellerDiary?cust_id=<%=diary.getCust_id() %>"> <img src="./resources/upload/<%=diary.getImg_name() %>" alt="이미지 준비중"
								class="card-img-top" onerror="this.onerror=null;this.src='./resources/images/imgonerror.jpg';">
							</a>
						</div>
						<div class="card-body">
							<div
								class="post-meta d-flex text-uppercase gap-3 my-2 align-items-center">
								<div class="meta-date">
									<svg width="16" height="16">
										<use xlink:href="#calendar"></use></svg>
									<%=diary.getCreated_at()%>
								</div>
								<div class="meta-categories">
									<svg width="16" height="16">
										<use xlink:href="#category"></use></svg>
									<%=diary.getCompany_name()%>
								</div>
							</div>
							<div class="post-header">
								<h3 class="post-title">
									<a class="text-decoration-none"><%=diary.getDiary_title()%></a>
								</h3>
								<p><%=diary.getDiary_content()%></p>
							</div>
						</div>
					</article>
				</div>
				<%
				}
				%>
			</div>
			</article>
		</div>
		</div>
		</div>
	</section>


	<section class="py-5 overflow-hidden">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">

					<div
						class="section-header d-flex flex-wrap flex-wrap justify-content-between mb-5">

						<h2 class="section-title">에디터가 추천하는 상품</h2>

						<div class="d-flex align-items-center">
							<a href="#" class="btn-link text-decoration-none">넘기며 보기 →</a>
							<div class="swiper-buttons">
								<button class="swiper-prev brand-carousel-prev btn btn-yellow">❮</button>
								<button class="swiper-next brand-carousel-next btn btn-yellow">❯</button>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					
					<div class="brand-carousel swiper">
						<div class="swiper-wrapper">
						
						<%
				List<Product> editorPick = (List<Product>) request.getAttribute("editorPick");
				for (int i = 0; i < editorPick.size() && i < 3; i++) {
					Product editor = editorPick.get(i);
				%>
							<div class="swiper-slide">
								<div class="card mb-3 p-3 rounded-4 shadow border-0">
									<div class="row g-0">
										<div class="col-md-4">
											<a href="goprodDetail?prod_idx=<%=editor.getProd_idx() %>"><img src="./resources/upload/<%=editor.getImg_name() %>"
												class="img-fluid rounded" alt="Card title" onerror="this.onerror=null;this.src='./resources/images/imgonerror.jpg';"></a>
										</div>
										<div class="col-md-8">
											<div class="card-body py-0">
												<p class="text-muted mb-0"><%=editor.getProd_name() %></p>
												<h5 class="card-title"><%=editor.getProd_desc() %></h5>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%} %>
							

						</div>
					</div>

				</div>
			</div>
		</div>
	</section>


	<section class="py-5">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-12">

					<div class="bootstrap-tabs product-tabs">
						<div
							class="tabs-header d-flex justify-content-between border-bottom my-5">
							<h3>모아보기</h3>
						</div>
						<div class="tab-content" id="nav-tabContent">
							<div class="tab-pane fade show active" id="nav-all"
								role="tabpanel" aria-labelledby="nav-all-tab">

								<div
									class="product-grid row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">



									<%
									List<Product> productList = (List<Product>) request.getAttribute("product");
									System.out.println(productList.get(0).toString());
									for (int i = 0; i < productList.size() && i < 10; i++) {
										Product product = productList.get(i);
									%>
									<div class="col">
										<div class="product-item">
											
											<%
													if (Memberlogin == null) {
													%>
													<a href="goLogin" class="btn-wishlist" name="wishlist">
														<svg width="24" height="24">
															<use xlink:href="#heart"></use></svg>
													</a>
													<%
													} else {
													%>
													<!-- Q7. 개인정보수정 기능 만들기 -->
													<!-- Q8. 로그아웃 기능 만들기 -->
													<!-- Q9. 관리자 계정(admin)일 때는 회원정보관리 탭 만들기 -->																																					
													<a href="#" class="btn-wishlist" name="wishlist"
														onclick="addToWishlist(this)" prod_idx="<%=product.getProd_idx() %>">
														<svg width="24" height="24">
        												<use xlink:href="#heart"></use>
    													</svg>
													</a>
													<%
													}
													%>
											<figure>
												<a href="goprodDetail?prod_idx=<%=product.getProd_idx() %>" title="Product Title"> <img
													src="./resources/upload/<%=product.getImg_name() %>"
													class="tab-image" onerror="this.onerror=null;this.src='./resources/images/imgonerror.jpg';" style="max-height: 256px">
												</a>
											</figure>
											<h3><%=product.getProd_name()%></h3>
											<span class="rating"><i class="fa fa-star" aria-hidden="true" style="color:rgb(255, 217, 0)"></i><%=product.getProd_ratings()%></span>
											<span class="price"><%=product.getProd_price()%>원</span>
											<div
												class="d-flex align-items-center justify-content-between">
												<div class="input-group product-qty">
													<span class="input-group-btn">
														<button type="button"
															class="quantity-left-minus btn btn-danger btn-number"
															data-type="minus">
															<svg width="16" height="16">
																<use xlink:href="#minus"></use></svg>
														</button>
													</span> <input type="text" id="quantity" name="quantity<%=i %>"
														class="form-control input-number" value="1"> <span
														class="input-group-btn">
														<button type="button"
															class="quantity-right-plus btn btn-success btn-number"
															data-type="plus">
															<svg width="16" height="16">
																<use xlink:href="#plus"></use></svg>
														</button>
													</span>
												</div>
												<a href="#" class="nav-link" onclick="addToCart(event,<%=product.getProd_idx()%>, <%=product.getProd_price()%>, 'quantity<%=i %>')">장바구니에
													담기 <iconify-icon icon="uil:shopping-cart">
												</a>
											</div>
										</div>
									</div>
									<%
									}
									%>
								</div>
								<!-- / product-grid -->

							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
	</section>



<!-- 	<section class="py-5">
		<div class="container-fluid">
			<div class="row row-cols-1 row-cols-sm-3 row-cols-lg-5">
				<div class="col">
					<div class="card mb-3 border-0">
						<div class="row">
							<div class="col-md-2 text-dark">
								<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
									viewBox="0 0 24 24">
									<path fill="currentColor"
										d="M21.5 15a3 3 0 0 0-1.9-2.78l1.87-7a1 1 0 0 0-.18-.87A1 1 0 0 0 20.5 4H6.8l-.33-1.26A1 1 0 0 0 5.5 2h-2v2h1.23l2.48 9.26a1 1 0 0 0 1 .74H18.5a1 1 0 0 1 0 2h-13a1 1 0 0 0 0 2h1.18a3 3 0 1 0 5.64 0h2.36a3 3 0 1 0 5.82 1a2.94 2.94 0 0 0-.4-1.47A3 3 0 0 0 21.5 15Zm-3.91-3H9L7.34 6H19.2ZM9.5 20a1 1 0 1 1 1-1a1 1 0 0 1-1 1Zm8 0a1 1 0 1 1 1-1a1 1 0 0 1-1 1Z" /></svg>
							</div>
							<div class="col-md-10">
								<div class="card-body p-0">
									<h5>배송비 무료!</h5>
									<p class="card-text">사실 아닌데 일단 쳐봤음 ㄹㅇㅋㅋ</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-3 border-0">
						<div class="row">
							<div class="col-md-2 text-dark">
								<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
									viewBox="0 0 24 24">
									<path fill="currentColor"
										d="M19.63 3.65a1 1 0 0 0-.84-.2a8 8 0 0 1-6.22-1.27a1 1 0 0 0-1.14 0a8 8 0 0 1-6.22 1.27a1 1 0 0 0-.84.2a1 1 0 0 0-.37.78v7.45a9 9 0 0 0 3.77 7.33l3.65 2.6a1 1 0 0 0 1.16 0l3.65-2.6A9 9 0 0 0 20 11.88V4.43a1 1 0 0 0-.37-.78ZM18 11.88a7 7 0 0 1-2.93 5.7L12 19.77l-3.07-2.19A7 7 0 0 1 6 11.88v-6.3a10 10 0 0 0 6-1.39a10 10 0 0 0 6 1.39Zm-4.46-2.29l-2.69 2.7l-.89-.9a1 1 0 0 0-1.42 1.42l1.6 1.6a1 1 0 0 0 1.42 0L15 11a1 1 0 0 0-1.42-1.42Z" /></svg>
							</div>
							<div class="col-md-10">
								<div class="card-body p-0">
									<h5>100% 신뢰가능한 거래</h5>
									<p class="card-text">사실 책임질 수 있을지 없을지 모르겠는데 일단 신뢰하게 해드립니다!</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-3 border-0">
						<div class="row">
							<div class="col-md-2 text-dark">
								<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
									viewBox="0 0 24 24">
									<path fill="currentColor"
										d="M22 5H2a1 1 0 0 0-1 1v4a3 3 0 0 0 2 2.82V22a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1v-9.18A3 3 0 0 0 23 10V6a1 1 0 0 0-1-1Zm-7 2h2v3a1 1 0 0 1-2 0Zm-4 0h2v3a1 1 0 0 1-2 0ZM7 7h2v3a1 1 0 0 1-2 0Zm-3 4a1 1 0 0 1-1-1V7h2v3a1 1 0 0 1-1 1Zm10 10h-4v-2a2 2 0 0 1 4 0Zm5 0h-3v-2a4 4 0 0 0-8 0v2H5v-8.18a3.17 3.17 0 0 0 1-.6a3 3 0 0 0 4 0a3 3 0 0 0 4 0a3 3 0 0 0 4 0a3.17 3.17 0 0 0 1 .6Zm2-11a1 1 0 0 1-2 0V7h2ZM4.3 3H20a1 1 0 0 0 0-2H4.3a1 1 0 0 0 0 2Z" /></svg>
							</div>
							<div class="col-md-10">
								<div class="card-body p-0">
									<h5>품질 보증</h5>
									<p class="card-text">품질 보증 가능? 쌉가능 ㅇㅇ</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-3 border-0">
						<div class="row">
							<div class="col-md-2 text-dark">
								<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
									viewBox="0 0 24 24">
									<path fill="currentColor"
										d="M12 8.35a3.07 3.07 0 0 0-3.54.53a3 3 0 0 0 0 4.24L11.29 16a1 1 0 0 0 1.42 0l2.83-2.83a3 3 0 0 0 0-4.24A3.07 3.07 0 0 0 12 8.35Zm2.12 3.36L12 13.83l-2.12-2.12a1 1 0 0 1 0-1.42a1 1 0 0 1 1.41 0a1 1 0 0 0 1.42 0a1 1 0 0 1 1.41 0a1 1 0 0 1 0 1.42ZM12 2A10 10 0 0 0 2 12a9.89 9.89 0 0 0 2.26 6.33l-2 2a1 1 0 0 0-.21 1.09A1 1 0 0 0 3 22h9a10 10 0 0 0 0-20Zm0 18H5.41l.93-.93a1 1 0 0 0 0-1.41A8 8 0 1 1 12 20Z" /></svg>
							</div>
							<div class="col-md-10">
								<div class="card-body p-0">
									<h5>지갑 사정 고려</h5>
									<p class="card-text">비싼 물가에 싼 물건 살 수 있게 해드립니다~</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card mb-3 border-0">
						<div class="row">
							<div class="col-md-2 text-dark">
								<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
									viewBox="0 0 24 24">
									<path fill="currentColor"
										d="M18 7h-.35A3.45 3.45 0 0 0 18 5.5a3.49 3.49 0 0 0-6-2.44A3.49 3.49 0 0 0 6 5.5A3.45 3.45 0 0 0 6.35 7H6a3 3 0 0 0-3 3v2a1 1 0 0 0 1 1h1v6a3 3 0 0 0 3 3h8a3 3 0 0 0 3-3v-6h1a1 1 0 0 0 1-1v-2a3 3 0 0 0-3-3Zm-7 13H8a1 1 0 0 1-1-1v-6h4Zm0-9H5v-1a1 1 0 0 1 1-1h5Zm0-4H9.5A1.5 1.5 0 1 1 11 5.5Zm2-1.5A1.5 1.5 0 1 1 14.5 7H13ZM17 19a1 1 0 0 1-1 1h-3v-7h4Zm2-8h-6V9h5a1 1 0 0 1 1 1Z" /></svg>
							</div>
							<div class="col-md-10">
								<div class="card-body p-0">
									<h5>Daily offers</h5>
									<p class="card-text">Lorem ipsum dolor sit amet,
										consectetur adipi elit.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->

	<footer class="py-5">
		<div class="container-fluid">
			<div class="row">

				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer-menu">
						<img src="./resources/images/harugreen.png" alt="logo">
						<div class="social-links mt-5">
							<ul class="d-flex list-unstyled gap-2">
								<li><a href="#" class="btn btn-outline-light"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											viewBox="0 0 24 24">
											<path fill="currentColor"
												d="M15.12 5.32H17V2.14A26.11 26.11 0 0 0 14.26 2c-2.72 0-4.58 1.66-4.58 4.7v2.62H6.61v3.56h3.07V22h3.68v-9.12h3.06l.46-3.56h-3.52V7.05c0-1.05.28-1.73 1.76-1.73Z" /></svg>
								</a></li>
								<li><a href="#" class="btn btn-outline-light"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											viewBox="0 0 24 24">
											<path fill="currentColor"
												d="M22.991 3.95a1 1 0 0 0-1.51-.86a7.48 7.48 0 0 1-1.874.794a5.152 5.152 0 0 0-3.374-1.242a5.232 5.232 0 0 0-5.223 5.063a11.032 11.032 0 0 1-6.814-3.924a1.012 1.012 0 0 0-.857-.365a.999.999 0 0 0-.785.5a5.276 5.276 0 0 0-.242 4.769l-.002.001a1.041 1.041 0 0 0-.496.89a3.042 3.042 0 0 0 .027.439a5.185 5.185 0 0 0 1.568 3.312a.998.998 0 0 0-.066.77a5.204 5.204 0 0 0 2.362 2.922a7.465 7.465 0 0 1-3.59.448A1 1 0 0 0 1.45 19.3a12.942 12.942 0 0 0 7.01 2.061a12.788 12.788 0 0 0 12.465-9.363a12.822 12.822 0 0 0 .535-3.646l-.001-.2a5.77 5.77 0 0 0 1.532-4.202Zm-3.306 3.212a.995.995 0 0 0-.234.702c.01.165.009.331.009.488a10.824 10.824 0 0 1-.454 3.08a10.685 10.685 0 0 1-10.546 7.93a10.938 10.938 0 0 1-2.55-.301a9.48 9.48 0 0 0 2.942-1.564a1 1 0 0 0-.602-1.786a3.208 3.208 0 0 1-2.214-.935q.224-.042.445-.105a1 1 0 0 0-.08-1.943a3.198 3.198 0 0 1-2.25-1.726a5.3 5.3 0 0 0 .545.046a1.02 1.02 0 0 0 .984-.696a1 1 0 0 0-.4-1.137a3.196 3.196 0 0 1-1.425-2.673c0-.066.002-.133.006-.198a13.014 13.014 0 0 0 8.21 3.48a1.02 1.02 0 0 0 .817-.36a1 1 0 0 0 .206-.867a3.157 3.157 0 0 1-.087-.729a3.23 3.23 0 0 1 3.226-3.226a3.184 3.184 0 0 1 2.345 1.02a.993.993 0 0 0 .921.298a9.27 9.27 0 0 0 1.212-.322a6.681 6.681 0 0 1-1.026 1.524Z" /></svg>
								</a></li>
								<li><a href="#" class="btn btn-outline-light"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											viewBox="0 0 24 24">
											<path fill="currentColor"
												d="M23 9.71a8.5 8.5 0 0 0-.91-4.13a2.92 2.92 0 0 0-1.72-1A78.36 78.36 0 0 0 12 4.27a78.45 78.45 0 0 0-8.34.3a2.87 2.87 0 0 0-1.46.74c-.9.83-1 2.25-1.1 3.45a48.29 48.29 0 0 0 0 6.48a9.55 9.55 0 0 0 .3 2a3.14 3.14 0 0 0 .71 1.36a2.86 2.86 0 0 0 1.49.78a45.18 45.18 0 0 0 6.5.33c3.5.05 6.57 0 10.2-.28a2.88 2.88 0 0 0 1.53-.78a2.49 2.49 0 0 0 .61-1a10.58 10.58 0 0 0 .52-3.4c.04-.56.04-3.94.04-4.54ZM9.74 14.85V8.66l5.92 3.11c-1.66.92-3.85 1.96-5.92 3.08Z" /></svg>
								</a></li>
								<li><a href="#" class="btn btn-outline-light"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											viewBox="0 0 24 24">
											<path fill="currentColor"
												d="M17.34 5.46a1.2 1.2 0 1 0 1.2 1.2a1.2 1.2 0 0 0-1.2-1.2Zm4.6 2.42a7.59 7.59 0 0 0-.46-2.43a4.94 4.94 0 0 0-1.16-1.77a4.7 4.7 0 0 0-1.77-1.15a7.3 7.3 0 0 0-2.43-.47C15.06 2 14.72 2 12 2s-3.06 0-4.12.06a7.3 7.3 0 0 0-2.43.47a4.78 4.78 0 0 0-1.77 1.15a4.7 4.7 0 0 0-1.15 1.77a7.3 7.3 0 0 0-.47 2.43C2 8.94 2 9.28 2 12s0 3.06.06 4.12a7.3 7.3 0 0 0 .47 2.43a4.7 4.7 0 0 0 1.15 1.77a4.78 4.78 0 0 0 1.77 1.15a7.3 7.3 0 0 0 2.43.47C8.94 22 9.28 22 12 22s3.06 0 4.12-.06a7.3 7.3 0 0 0 2.43-.47a4.7 4.7 0 0 0 1.77-1.15a4.85 4.85 0 0 0 1.16-1.77a7.59 7.59 0 0 0 .46-2.43c0-1.06.06-1.4.06-4.12s0-3.06-.06-4.12ZM20.14 16a5.61 5.61 0 0 1-.34 1.86a3.06 3.06 0 0 1-.75 1.15a3.19 3.19 0 0 1-1.15.75a5.61 5.61 0 0 1-1.86.34c-1 .05-1.37.06-4 .06s-3 0-4-.06a5.73 5.73 0 0 1-1.94-.3a3.27 3.27 0 0 1-1.1-.75a3 3 0 0 1-.74-1.15a5.54 5.54 0 0 1-.4-1.9c0-1-.06-1.37-.06-4s0-3 .06-4a5.54 5.54 0 0 1 .35-1.9A3 3 0 0 1 5 5a3.14 3.14 0 0 1 1.1-.8A5.73 5.73 0 0 1 8 3.86c1 0 1.37-.06 4-.06s3 0 4 .06a5.61 5.61 0 0 1 1.86.34a3.06 3.06 0 0 1 1.19.8a3.06 3.06 0 0 1 .75 1.1a5.61 5.61 0 0 1 .34 1.9c.05 1 .06 1.37.06 4s-.01 3-.06 4ZM12 6.87A5.13 5.13 0 1 0 17.14 12A5.12 5.12 0 0 0 12 6.87Zm0 8.46A3.33 3.33 0 1 1 15.33 12A3.33 3.33 0 0 1 12 15.33Z" /></svg>
								</a></li>
								<li><a href="#" class="btn btn-outline-light"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											viewBox="0 0 24 24">
											<path fill="currentColor"
												d="M1.04 17.52q.1-.16.32-.02a21.308 21.308 0 0 0 10.88 2.9a21.524 21.524 0 0 0 7.74-1.46q.1-.04.29-.12t.27-.12a.356.356 0 0 1 .47.12q.17.24-.11.44q-.36.26-.92.6a14.99 14.99 0 0 1-3.84 1.58A16.175 16.175 0 0 1 12 22a16.017 16.017 0 0 1-5.9-1.09a16.246 16.246 0 0 1-4.98-3.07a.273.273 0 0 1-.12-.2a.215.215 0 0 1 .04-.12Zm6.02-5.7a4.036 4.036 0 0 1 .68-2.36A4.197 4.197 0 0 1 9.6 7.98a10.063 10.063 0 0 1 2.66-.66q.54-.06 1.76-.16v-.34a3.562 3.562 0 0 0-.28-1.72a1.5 1.5 0 0 0-1.32-.6h-.16a2.189 2.189 0 0 0-1.14.42a1.64 1.64 0 0 0-.62 1a.508.508 0 0 1-.4.46L7.8 6.1q-.34-.08-.34-.36a.587.587 0 0 1 .02-.14a3.834 3.834 0 0 1 1.67-2.64A6.268 6.268 0 0 1 12.26 2h.5a5.054 5.054 0 0 1 3.56 1.18a3.81 3.81 0 0 1 .37.43a3.875 3.875 0 0 1 .27.41a2.098 2.098 0 0 1 .18.52q.08.34.12.47a2.856 2.856 0 0 1 .06.56q.02.43.02.51v4.84a2.868 2.868 0 0 0 .15.95a2.475 2.475 0 0 0 .29.62q.14.19.46.61a.599.599 0 0 1 .12.32a.346.346 0 0 1-.16.28q-1.66 1.44-1.8 1.56a.557.557 0 0 1-.58.04q-.28-.24-.49-.46t-.3-.32a4.466 4.466 0 0 1-.29-.39q-.2-.29-.28-.39a4.91 4.91 0 0 1-2.2 1.52a6.038 6.038 0 0 1-1.68.2a3.505 3.505 0 0 1-2.53-.95a3.553 3.553 0 0 1-.99-2.69Zm3.44-.4a1.895 1.895 0 0 0 .39 1.25a1.294 1.294 0 0 0 1.05.47a1.022 1.022 0 0 0 .17-.02a1.022 1.022 0 0 1 .15-.02a2.033 2.033 0 0 0 1.3-1.08a3.13 3.13 0 0 0 .33-.83a3.8 3.8 0 0 0 .12-.73q.01-.28.01-.92v-.5a7.287 7.287 0 0 0-1.76.16a2.144 2.144 0 0 0-1.76 2.22Zm8.4 6.44a.626.626 0 0 1 .12-.16a3.14 3.14 0 0 1 .96-.46a6.52 6.52 0 0 1 1.48-.22a1.195 1.195 0 0 1 .38.02q.9.08 1.08.3a.655.655 0 0 1 .08.36v.14a4.56 4.56 0 0 1-.38 1.65a3.84 3.84 0 0 1-1.06 1.53a.302.302 0 0 1-.18.08a.177.177 0 0 1-.08-.02q-.12-.06-.06-.22a7.632 7.632 0 0 0 .74-2.42a.513.513 0 0 0-.08-.32q-.2-.24-1.12-.24q-.34 0-.8.04q-.5.06-.92.12a.232.232 0 0 1-.16-.04a.065.065 0 0 1-.02-.08a.153.153 0 0 1 .02-.06Z" /></svg>
								</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-2 col-sm-6">
					<div class="footer-menu">
						<h5 class="widget-title">사이트맵</h5>
						<ul class="menu-list list-unstyled">
							<li class="menu-item"><a href="#" class="nav-link">농산물</a></li>
							<li class="menu-item"><a href="#" class="nav-link">수산물</a></li>
							<li class="menu-item"><a href="#" class="nav-link">가공식품</a>
							</li>
							<li class="menu-item"><a href="godiary" class="nav-link">영농일지</a>
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
				<div class="col-md-6 credit-link text-start text-md-end"></div>
			</div>
		</div>
	</div>
	<script src="./resources/assets/js/jquery-1.11.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
	<script src="./resources/assets/js/plugins.js"></script>
	<script src="./resources/assets/js/script.js"></script>
	<script>
		document.getElementById("userIcon").addEventListener("click",
				function() {
					window.location.href = "goLogin";
				});
	</script>
	<script>
		// 검색창 눌렀을때 페이지 이동
		document.getElementById('svg-container').addEventListener('click',
			function() {
							// 현재 검색어 입력란의 값을 가져옴
				var inputValue = document.getElementById('searchInput').value;
							// 현재 페이지 URL에 검색어를 추가하여 페이지 이동
				window.location.href = 'gosearch?searchInput='+ encodeURIComponent(inputValue);
						});
		
		
		function addToCart(event, prod_idx, prod_price, name) {
			
		      var quantityElement = document.getElementsByName(name)[0];
		      var quantityValue = quantityElement.value;
		      var quantityInput = document.getElementById(name);
              var quantity = parseInt(quantityInput.value);
		           var prodInfo = {
		                 prod_idx: prod_idx,
		                 cart_count: parseInt(quantityValue, 10),
		                 prod_price: prod_price
		             };
		                console.log(prodInfo);
		                 // AJAX를 사용하여 서버로 데이터 전송
		                 $.ajax({
		                     type: 'POST',
		                     url: 'http://localhost:8081/controller/insertCart',
		                   
		                     data: JSON.stringify(prodInfo),
		                     contentType: 'application/json',
		                     success: function(response) {
		                         console.log('Server response:',response);
		                         // 왜 안됨?
		                         alert(quantity + "개의 상품이 장바구니에 추가되었습니다.");
		                         /* location.reload(); */
		                         // TODO: 서버 응답에 따른 동작 수행
		                     },
		                     error: function(error) {
		                         console.error('Error:', error);
		                     }
		                });
		       // 기본 동작 막기
		       
		       event.preventDefault();
		      };
	</script>
	
	 <script>
	function addToWishlist(buttonElement) {
	    /* var wishlistItem = {
	        prodName: prodName,
	        prodStock: prodStock,
	        prodPrice: prodPrice,
	        prodRatings: prodRatings,
	        prod_idx: prod_idx,
	        
	    };
		console.log(wishlistItem) */
		
        var prod_idx = buttonElement.getAttribute('prod_idx');
		
       
        console.log('prod_idx:', prod_idx);

		
	    // AJAX를 사용하여 서버로 데이터 전송
	    $.ajax({
	        type: 'POST',
	        url: 'searchLike',
	        data: {'prod_idx':prod_idx},
	        success: function(response) {
	            console.log('Server response:',response);
	            // TODO: 서버 응답에 따른 동작 수행
	            alert('찜완료')
	        },
	        error: function(error) {
	            console.error('Error:', error);
	        }
	    });
	// 기본 동작 막기
	    event.preventDefault();
	   };
	</script>
	

</body>
</html>