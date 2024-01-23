
<%@page import="java.util.List"%>
<%@page import="kr.smhrd.entity.Member"%>
<%@page import="kr.smhrd.entity.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.text.NumberFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <link rel="stylesheet" type="text/css" href="css/vendor.css">
    <link rel="stylesheet" type="text/css" href="stylejm.css">
  <link rel="stylesheet" type="text/css" href="./resources/assets/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="./resources/assets/css/stylejm.css">
    <link rel="stylesheet" href="./resources/assets/css/login_01.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:500,800" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'><link rel="stylesheet" href="./css/login_01.css">

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>
<body>
<%
	Member Memberlogin = (Member) session.getAttribute("loginMember");

    List<Product> prodList = (List<Product>)request.getAttribute("prodList");
    System.out.println("dasff:   "+prodList);
    List<Product> reviewList = (List<Product>)request.getAttribute("reviewList");
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

<!-- 헤더 끝 -->
      <div class="prodDetail_parent" >
        <div class="prodDetail ">
          <!--  브레드크럼?? 해보면 어떨까?? -->
          <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#" style="text-decoration: none; color: green; font-weight: bold;">전체목록</a></li>
              <li class="breadcrumb-item active" aria-current="page">농산물</li>
            </ol>
          </nav>
          <!-- 브레드크럼 성공함 -->
              <div class="prodDetail_content"> 
                <!-- 메뉴바 위 박스 -->
               
               <div class="row">
                <div class="col-6">
                  <img src="./resources/upload/${prodList.get(0).getImg_name() }" alt="당귀사진임" style="max-width: 100%; padding: 10px;" onerror="this.onerror=null;this.src='./resources/images/imgonerror.jpg';">
                </div>
                <div class="col-6 d-flex flex-column justify-content-around">
                  <div>
                    <h3 style="font-weight: bold;"><%= prodList.get(0).getProd_name() %></h3>
                  </div>
                   <% String prodPriceStr = String.valueOf(prodList.get(0).getProd_price());
                   NumberFormat numberFormat = NumberFormat.getInstance();
                   String formattedPrice = numberFormat.format(Integer.parseInt(prodPriceStr)); %>
                  <div>
                    <span style="font-size: 20px; font-weight: bold;"><%= prodList.get(0).getCompany_name() %>
                    <%if(prodList.get(0).getCertified_yn().equals("Y")){ %>
                    	<i class="fa fa-check-circle" style="color: green;"></i>
                    <%}else{ %>
                    
                    <%} %>
                    </span>
                  </div>
                  <hr style="color: rgb(156, 156, 156);">
                  <div style="color: grey; font-size: 12px;"> 최근 시세보다 500원↓ (최근시세 5,000원)</div>
                  <div style="color: rgb(0, 141, 30); font-size: 30px; font-weight: bold;">
  <%= formattedPrice %>원
</div>
                  <hr style="color: rgb(156, 156, 156);">
                  <div style="font-size: 12px;">
                    배송비 3,000원
                    <br>토요일 1/13 도착예정
                  </div>
                  <hr style="color: rgb(156, 156, 156);">
                  <div style="display: flex; justify-content: space-around;">
                    <input type="number"  min="1" style="width: 60px;" id="quantity" name="quantity${loopStatus.index}"
																class="form-control input-number" value="1">
                    <%if (Memberlogin != null) {%>
                    	<button type="button" class="btn btn-lg btn-outline-success" onclick="addToWishlist(event, '${prodList.get(0).getProd_name()}',${prodList.get(0).getProd_stock()}, ${prodList.get(0).getProd_price()}, ${prodList.get(0).getProd_ratings()},${prodList.get(0).getProd_idx()})">찜</button>
                    <%}else {%>
                    	<a href="goLogin"><button type="button" class="btn btn-lg btn-outline-success">찜</button></a>
                    <%} %>
                      <%if (Memberlogin != null) {%>
                    	<button type="button" class="btn btn-lg btn-outline-success" onclick="addToCart(event,${prodList.get(0).getProd_idx()}, ${prodList.get(0).getProd_price()}, 'quantity${loopStatus.index}')">장바구니담기</button>
                    <%}else {%>
                    	<a href="goLogin"><button type="button" class="btn btn-lg btn-outline-success">장바구니</button></a>
                    <%} %>
                    
                   <a href="goPay?prod_idx=${prodList.get(0).getProd_idx()}&prod_price=${prodList.get(0).getProd_price()}"><button type="button" class="btn btn-lg btn-success">바로구매</button></a>
                  </div>
                </div>
               </div>
<!-- 메뉴바 시작 -->
<div style="margin-top: 20px;">
<nav>
  <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">

    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">상품상세</button>
    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">상품후기</button>
    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">상품문의</button>
    
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">

  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
        <!-- 상세페이지시작 -->
        <div style="padding: 40px;" align="center">
          <p>당귀 : 당신은 귀한사람 이라는 뜻</p>
          <p><img src="http://image1.coupangcdn.com/image/vendor_inventory/711c/682ded3a9f94e1a3ad549c8bd6078340ec5802355642600dc1b74d4e439e.jpg" alt="" style="max-width: 100%;"></p>
        <h1>감사합니다</h1>
        <img src="https://mblogthumb-phinf.pstatic.net/MjAyMDA0MDRfMjc0/MDAxNTg1OTU0MjM2NTM0.jLZAJNXp1-tE6giGmzSWazbQ-7izSKMM_0WV6lhcynQg.WUhkJnuYQErxqKnrSRqrIoCqxwB2tG4zP9Oiy47lnO8g.GIF.bluenight_525/1585954235722.gif?type=w800" alt="">
        </div>
        <!-- 상세페이지끝~ -->
  </div>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">
        <!-- 후기페이지시작 -->
        <div>
          <div class="myReview_box">
            <h2 style="padding-top: 10px; margin-top: 20px; margin-left: 20px;">상품후기</h2>
          <c:forEach var="reviewList" items="${reviewList }" varStatus="i">
			<c:if test="${i.index < 10}">
                <hr style="color: rgb(156, 156, 156);">
<div style="padding: 20px 40px;">
  <div class="row d-flex justify-content-between">
    <div class="col-3 review-img-wrapper">
      
     <img src="./resources/upload/${reviewList.img_name}" alt="리뷰사진인데용" style="max-width: 100%;" onerror="this.onerror=null;this.src='./resources/images/imgonerror.jpg';">
                
    </div>
    <div class="col-9 d-flex flex-column justify-content-between">
        <div>${reviewList.cust_nick }<br>
          ★${reviewList.prod_ratings }</div>
        <hr style="color: rgb(156, 156, 156); margin: 0px;">
        <div>${reviewList.review_content }</div>
       
          <div style="font-size: 13px; color: rgb(145, 145, 145);">
                <fmt:formatDate value="${reviewList.reviewed_at}" pattern="yyyy-MM-dd" />
            </div>
    </div>
  </div>
</div>
</c:if>
		</c:forEach>


    </div>
    </div>
    <!-- 후기페이지끝~ -->
</div>
        <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab" tabindex="0">
          <!-- 문의페이지시작 -->
          <div>
            <!-- 문의 하나 -->
            <div class="prodReview_box" style="padding: 20px 20px 0px 20px;">
                <div style="display: flex; justify-content: space-between;">
                    <h2 style="padding-top: 10px;">상품문의</h2>
                    <%if(Memberlogin != null) {%>
                    <a href="goQna?prod_idx=<%=prodList.get(0).getProd_idx() %>">
                        <button type="button" class="btn btn-lg btn-success">문의하기</button>
                    </a>
                    <%}else {%>
                    	<a href="goLogin">
                        <button type="button" class="btn btn-lg btn-success">문의하기</button>
                    </a>
                    <%} %>
                </div>
                
                <c:forEach var="qnaList" items="${qnaList }" varStatus="i">
                <c:if test="${i.index < 10}">
              <hr style="color: rgb(156, 156, 156);">
              <div style="padding: 10px 20px;">
               <div style="font-weight: bold; margin-bottom: 10px;">문의내용</div> 
               <div> ${qnaList.question }</div>
               <div style="font-size: 13px; color: rgb(145, 145, 145);">
                <fmt:formatDate value="${qnaList.questioned_at}" pattern="yyyy-MM-dd" />
            </div>
              </div>
              <hr style="color: rgb(156, 156, 156);">
              <div style="padding: 10px 50px;">
                <div style="font-weight: bold; margin-bottom: 10px;">
                  <svg width="16" height="16" focusable="false" viewBox="0 0 20 20" aria-hidden="true" role="presentation" style="fill: rgb(136, 136, 136);"><g fill="none" fill-rule="evenodd"><path d="M0 0H20V20H0z"></path><path stroke="#888888" d="M5 3.333L5 13.333 15 13.333"></path></g></svg>
                  ${qnaList.seller_company_name }
                </div> 
                   <div style="margin-left: 20px;"> ${qnaList.answer }
                     <div style="font-size: 13px; color: rgb(145, 145, 145);">
                    <fmt:formatDate value="${qnaList.answered_at}" pattern="yyyy-MM-dd" />
                </div>
                    
                  </div>
               </div>
            </c:if>
         </c:forEach>

            </div>
            <!-- 문의 하나 끝 -->
            
            <!-- 문의 하나 끝 -->
          </div>
            <!-- 문의페이지끝~ -->
          </div>
  </div>
  <!--메뉴바로변경되는영역 끝 -->
  <hr style="color: rgb(156, 156, 156);">
  <div style="padding: 15px;">
      <div class="d-flex justify-content-between" style="margin-bottom: 20px;">
  <span style="font-size: 20px;"><%= prodList.get(0).getCompany_name() %>
  					<%if(prodList.get(0).getCertified_yn().equals("Y")){ %>
                    		<i class="fa fa-check-circle" style="color: green;"></i>
                    <%}else{ %>
                    
                    <%} %>의 영농일기</span>
                    
                    <a href="goSellerDiary?cust_id=<%=prodList.get(0).getCust_id() %>" style="text-decoration: none; color: green;" >더보기 ></a>
  </div>
  <div style="display: flex; justify-content: space-between;">
    <c:forEach var="sellerimg" items="${sellerimg}"
										varStatus="i">
										<c:if test="${i.index < 3}">
    <div class="img-wrapper"><a href="#"><img src="./resources/upload/${sellerimg.img_name }" alt="" onerror="this.onerror=null;this.src='./resources/images/imgonerror.jpg';"></a></div>
   </c:if>
   </c:forEach>
  </div>
  </div>
    <hr style="color: rgb(156, 156, 156);">
    <div style="padding: 15px;">
      <div class="d-flex justify-content-between" style="margin-bottom: 20px;">
    <span style="font-size: 20px;"><%= prodList.get(0).getCompany_name() %>
  					<%if(prodList.get(0).getCertified_yn().equals("Y")){ %>
                    		<i class="fa fa-check-circle" style="color: green;"></i>
                    <%}else{ %>
                    
                    <%} %>의 상품보기</span><a href="#" style="text-decoration: none; color: green;">더보기 ></a>
    </div>
    <div style="display: flex; justify-content: space-between;">
      <div class="img-wrapper"><a href="#"><img src="https://cdn.aflnews.co.kr/news/photo/201612/125752_8499_3111.jpg" alt="" style="width: 200px; height: 200px;"></a></div>
      <div class="img-wrapper"><a href="#"><img src="https://media.istockphoto.com/id/184276818/ko/%EC%82%AC%EC%A7%84/%EB%A0%88%EB%93%9C-%EC%82%AC%EA%B3%BC%EB%82%98%EB%AC%B4.jpg?s=612x612&w=0&k=20&c=qe0XwDHYbQFgVaqM2unXZWVqI7kV2SSfXrCYaHsdmWM=" alt="" style="width: 200px; height: 200px;"></div></a>
      <div class="img-wrapper"><a href="#"><img src="https://src.hidoc.co.kr/image/lib/2021/9/3/1630652987056_0.jpg" alt="" style="width: 200px; height: 200px;"></a></div>
      <div class="img-wrapper"><a href="#"><img src="data:image/jpeg;base64,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" alt="" style="width: 200px; height: 200px;"></a></div>
    </div>
</div>

</div>
                </div>
                </div>
                </div>

            
              <!-- 푸터 시작 -->

              <div class="sticky-bottom"></div>

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

      <script src="js/jquery-1.11.0.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
      <script src="js/plugins.js"></script>
      <script src="js/script.js"></script>
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
<script>
	function addToWishlist(event, prodName, prodStock, prodPrice, prodRatings, prod_idx) {
		
	    var wishlistItem = {
	        prodName: prodName,
	        prodStock: prodStock,
	        prodPrice: prodPrice,
	        prodRatings: prodRatings,
	        prod_idx: prod_idx,
	        
	    };
		console.log(wishlistItem)
		
	    // AJAX를 사용하여 서버로 데이터 전송
	    $.ajax({
	        type: 'POST',
	        url: 'searchLike',
	        data: wishlistItem,
	        success: function(response) {
	            console.log('Server response:',response);
	            // TODO: 서버 응답에 따른 동작 수행
	            alert('찜 완료')
	        },
	        error: function(error) {
	            console.error('Error:', error);
	        }
	    });
	// 기본 동작 막기
	    event.preventDefault();
	   };
	</script>
	<script >
	function addToCart(event, prod_idx, prod_price, name) {

		var quantityElement = document.getElementsByName(name)[0];
		var quantityValue = quantityElement.value;
	    
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
	    		            /* location.reload(); */
	    		            // TODO: 서버 응답에 따른 동작 수행
	    		            alert('장바구니 담기 성공')
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