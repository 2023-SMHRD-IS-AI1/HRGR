
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.smhrd.entity.Member"%>
<%@page import="kr.smhrd.entity.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
   <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
<% 
     Member Memberlogin = (Member)session.getAttribute("loginMember");
   
List<Member> qnaList = (List<Member>)request.getAttribute("qnaList1");
   
   
         
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
                  <%
                  if (Memberlogin == null) {
                  %>
                  <a class="fs-6 text-muted" href="goLogin">로그인</a>
                  <%
                  } else {
                  %> <a href=goLogout>로그아웃</a>
                  <!-- Q7. 개인정보수정 기능 만들기 -->
                  <!-- Q8. 로그아웃 기능 만들기 -->
                  <!-- Q9. 관리자 계정(admin)일 때는 회원정보관리 탭 만들기 -->
                     <% if (Memberlogin.getCust_role().equals("U")) {%>
                           <a href="goSeller">판매자 등록</a>
                     <%}else {%>   
                           <a href=goSell>상품등록</a>
                     <%}%>

                  <%}%>
                  <h5 class="mb-0"></h5>
               </div>

               <ul class="d-flex justify-content-end list-unstyled m-0">
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
 } else {
 %> <!-- Q7. 개인정보수정 기능 만들기 --> <!-- Q8. 로그아웃 기능 만들기 --> <!-- Q9. 관리자 계정(admin)일 때는 회원정보관리 탭 만들기 -->
                     <a href="goLike" class="rounded-circle bg-light p-2 mx-1" style="color: green;"> <svg
                           width="24" height="24" viewBox="0 0 24 24">
                    <use xlink:href="#cart"></use>
                  </svg></a> <%
 }
 %>
              
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
                   
                    <a href="#" target="_blank" class="nav-link btn-coupon-code">
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
          <!-- 메뉴바 -->
          <div style="margin-top: 20px;">
            <nav>
              <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
            
                <button class="nav-link active" id="nav-myOder-tab" data-bs-toggle="tab" data-bs-target="#nav-myOder" type="button" role="tab" aria-controls="nav-myOder" aria-selected="true">주문내역</button>
                <button class="nav-link" id="nav-prodLike-tab" data-bs-toggle="tab" data-bs-target="#nav-prodLike" type="button" role="tab" aria-controls="nav-prodLike" aria-selected="false">찜목록</button>
                <button class="nav-link" id="nav-myReview-tab" data-bs-toggle="tab" data-bs-target="#nav-myReview" type="button" role="tab" aria-controls="nav-myReview" aria-selected="false">나의 후기</button>
                <button class="nav-link" id="nav-myQnA-tab" data-bs-toggle="tab" data-bs-target="#nav-myQnA" type="button" role="tab" aria-controls="nav-myQnA" aria-selected="false">나의 문의</button>
                <button class="nav-link" id="nav-edit-tab" data-bs-toggle="tab" data-bs-target="#nav-edit" type="button" role="tab" aria-controls="nav-edit" aria-selected="false">회원정보 수정</button>
              <!-- 판매자용시작 -->
                <button class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">판매자 메뉴</button>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" data-bs-toggle="tab" data-bs-target="#nav-prod-seller" type="button" role="tab" aria-controls="nav-prod-seller" aria-selected="false">판매목록</a></li>
                  <li><a class="dropdown-item" data-bs-toggle="tab" data-bs-target="#nav-diary-seller" type="button" role="tab" aria-controls="nav-diary-seller" aria-selected="false">농사일지</a></li>
                  <li><a class="dropdown-item" data-bs-toggle="tab" data-bs-target="#nav-myQnA-seller" type="button" role="tab" aria-controls="nav-myQnA-seller" aria-selected="false">상품문의</a></li>
                </ul>
              <!-- 판매자용끝 -->
              </div>
            </nav>
      <div class="tab-content" id="nav-tabContent">
            
  <div class="tab-pane fade show active" id="nav-myOder" role="tabpanel" aria-labelledby="nav-myOder-tab" tabindex="0">
              
  <!-- 메뉴바1내용 주문내역 -->
  <!-- 주문내역 시작 -->
  <div class="myOrder_content">
    <h2 style="font-weight: bold; margin-bottom: 14px;">주문내역</h2>
    <c:forEach var="prodList" items="${prodList}" varStatus="loopStatus">
             <c:if test="${loopStatus.index < 10}">  
      <!-- 주문내역 반복되는곳 시작 -->
      <div class="myOrder_box border rounded row" style="margin-top: 0px; margin-bottom: 20px;">
        <div class="col-10" style="font-size: 20px; font-weight: bold; margin-bottom: 5px; padding: 0px;">
          ${prodList.ordered_at }
        </div>
        <div class="col-2 showDetail" style="font-size: 10px;">
          <a href="#" style="text-decoration-line: none; color: rgb(0, 180, 39);">주문 상세보기 ></a>
          
        </div>
      <div class="myOrder_box_box row border rounded ">
        <div class="col-lg-2" style="padding: 0px;"> <img src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" ></div>
        <div class="col-lg-7 d-grid gap-3 align-content-center" style="padding-left: 25px;">
          <div>${prodList.order_status }</div>
          <div><p style="font-size: 20px; font-weight: bold;">${prodList.prod_name }</p></div>
          <div>${prodList.paid_amount }</div>
        </div>
        <div class="col-lg-3 d-grid gap-2 my-auto">
          <button type="button" class="btn btn-outline-success">배송조회</button>
          <button type="button" class="btn btn-outline-secondary">후기 작성하기</button>
        </div>
      </div>
    </div>
    <!-- 주문내역 반복되는곳 끝 -->
  </c:if>
</c:forEach>
      


    <!-- 페이지네이션 -->
<div style="margin-top: 30px;">
<nav aria-label="Page navigation example">
<ul class="pagination myOrder justify-content-center" style="height: 0px;">
<li class="page-item">
<a class="page-link" href="#" aria-label="Previous">
  <span aria-hidden="true">&laquo;</span>
</a>
</li>
<li class="page-item"><a class="page-link" href="#">1</a></li>
<li class="page-item"><a class="page-link" href="#">2</a></li>
<li class="page-item"><a class="page-link" href="#">3</a></li>
<li class="page-item"><a class="page-link" href="#">4</a></li>
<li class="page-item"><a class="page-link" href="#">5</a></li>
<li class="page-item">
<a class="page-link" href="#" aria-label="Next">
  <span aria-hidden="true">&raquo;</span>
</a>
</li>
</ul>
</nav>
</div>
<!-- 페이지네이션 끝 -->
    </div>

  </div>
  <div class="tab-pane fade" id="nav-prodLike" role="tabpanel" aria-labelledby="nav-prodLike-tab" tabindex="0">
  
  <!-- 메뉴바2내용 찜목록 시작 -->
            <!-- 찜목록 시작 -->
<div class="prodLike_content">
<h2 style="font-weight: bold; margin-bottom: 14px;">찜목록</h2>
  <!-- 전체선택 줄 -->
  <div class="prodLike_allCheck border-top border-success" style="padding: 0px;">
    <div class="border-bottom border-success" style="background: rgb(246, 246, 246); padding: 10px  15px;" >
      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        전체선택
      </label>
      <button type="button" class="btn btn-outline-success btn-sm">선택삭제</button>
    </div>
    <c:forEach var="likeList" items="${likeList}" varStatus="loopStatus">
      <c:if test="${loopStatus.index < 10}">   
    <!-- 상품 반복 시작 -->
    <div class="prodLike_pordLine border-bottom border-success row" style="margin: 0px;">
      <div class="col-lg-3">
        <div style="display: flex; justify-content: space-between; align-items: center;">
          <input type="hidden" id="prod_idx" name="${likeList.prod_idx }">
          <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
          <img class="prodLike_img-wrapper" src="./resources/upload/${likeList.img_name }" alt="" style="margin: 0px;">
        </div>
      </div>
      <div class="col-lg-7 d-grid gap-2 my-auto">
        <div>
          ${likeList['prod_name']}
        </div>
        <div>
          ${likeList['prod_price']}원
        </div>
      </div>
      <div class="col-lg-2 d-grid gap-2 my-auto">
        <button type="button" class="btn btn-outline-success">장바구니담기</button>
        <button type="button" class="btn btn-outline-secondary" onclick="searchLikeList(${likeList.prod_idx})">삭제</button>
      </div>
    </div>
    <!-- 상품 반복 끝 -->
  </c:if>
</c:forEach>
  </div>
             
              <!-- 페이지네이션 -->
<div style="margin-top: 30px;">
<nav aria-label="Page navigation example">
<ul class="pagination myOrder justify-content-center" style="height: 0px;">
<li class="page-item">
<a class="page-link" href="#" aria-label="Previous">
<span aria-hidden="true">&laquo;</span>
</a>
</li>
<li class="page-item"><a class="page-link" href="#">1</a></li>
<li class="page-item"><a class="page-link" href="#">2</a></li>
<li class="page-item"><a class="page-link" href="#">3</a></li>
<li class="page-item"><a class="page-link" href="#">4</a></li>
<li class="page-item"><a class="page-link" href="#">5</a></li>
<li class="page-item">
<a class="page-link" href="#" aria-label="Next">
<span aria-hidden="true">&raquo;</span>
</a>
</li>
</ul>
</nav>
</div>
<!-- 페이지네이션 끝 -->
</div>
  <!-- 메뉴바2내용 찜목록 끝 -->
  
  </div>
  <div class="tab-pane fade" id="nav-myReview" role="tabpanel" aria-labelledby="nav-myReview-tab" tabindex="0">
    
            <!-- 나의 후기 시작 -->
<div class="myReview_content">
<h2 style="font-weight: bold; margin-bottom: 14px;">나의 후기</h2>
<!-- 제목 아래 큰틀 -->
<!-- 글 하나 반복 시작 -->
<c:forEach var="reviewList" items="${reviewList}" varStatus="i">
    <c:if test="${i.index < 10}"> 
<div class="myReview_box shadow" style="padding: 20px; margin-top: 20px;">

  <div class="row" style="display: flex; align-items: center; margin: 0;" >
    <div class="col-1">
      <img class="rounded" src="./resources/upload/${reviewList.product_img_name }" alt="" style="max-width: 100%;" >
    </div>
    <div class="col-10">${reviewList.prod_name}</div>
      <div class="col-1"><a href="#" style="text-decoration: none; color: green;" onclick="deletereview(${reviewList.prod_idx})">삭제</a></div>
    </div>
    <hr>


  <div class="row" style="margin: 0;">


      <div class="col-6">
        <img src="./resources/upload/${reviewList.review_img_name}" alt="리뷰사진인데용" style="max-width: 100%;">
      </div>
      
      <div class="col-6 position-relative" >
        <p style="font-size: 30px;">
        <i class="fa fa-star" aria-hidden="true" style="font-size: 30px; color: rgb(255, 247, 0);"></i> ${reviewList.prod_ratings}</p>
        <div>
          ${reviewList.review_content}
        </div>
        <div class="position-absolute bottom-0 end-0">${reviewList.reviewed_at}</div>
      </div>

    </div>             

</div>
<!-- 글 하나 반복 끝 -->
</c:if>
</c:forEach> 
<div class="myReview_box" align="center" style="margin-top: 20px;">
              <!-- 페이지네이션 -->
              <div style="margin-top: 30px;">
                <nav aria-label="Page navigation example">
                  <ul class="pagination myOrder justify-content-center" style="height: 0px;">
                    <li class="page-item">
                      <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                      </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item">
                      <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                      </a>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- 페이지네이션 끝 -->
</div>
  </div>

  </div>
  <div class="tab-pane fade" id="nav-myQnA" role="tabpanel" aria-labelledby="nav-myQnA-tab" tabindex="0">
    
<!-- 나의 문의 시작 -->
<div class="myReview_content">
<h2 style="font-weight: bold; margin-bottom: 14px;">나문희 (나의 문의라는 뜻)</h2>
<hr style="margin: 0; color: darkgreen;">
<!-- 제목 아래 큰틀 -->
<c:forEach var="searchQna" items="${searchQna }" varStatus="i">
          <c:if test="${i.index < 10}"> 
<div class="myReview_box">
  <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
    <div class="col-1">
      <img class="rounded" src="./resources/upload/${searchQna.prod_image_name }" alt="" style="max-width: 100%;" >
    </div>
    <div class="col-10">${searchQna.prod_name }</div>
      <div class="col-1"><a href="#" style="text-decoration: none; color: green;" onclick="deleteQna(${searchQna.prod_idx})">삭제</a></div>
   
  </div>
  <hr style="margin: 0; color: darkgreen;">
  <div style="padding: 10px 20px;">
   <div style="font-weight: bold; margin-bottom: 10px;">문의내용</div> 
   <div>${searchQna.question }</div>
   <div style="font-size: 13px; color: rgb(145, 145, 145);">${searchQna.questioned_at }</div>
  </div>
  <hr style="margin: 0; color: darkgreen;">
  <div style="padding: 10px 50px;">
    <div style="font-weight: bold; margin-bottom: 10px;">
      <svg width="16" height="16" focusable="false" viewBox="0 0 20 20" aria-hidden="true" role="presentation" style="fill: rgb(136, 136, 136);"><g fill="none" fill-rule="evenodd"><path d="M0 0H20V20H0z"></path><path stroke="#888888" d="M5 3.333L5 13.333 15 13.333"></path></g></svg>
      ${searchQna.seller_company_name }
    </div> 
       <div style="margin-left: 20px;"> ${searchQna.answer }
        <div style="font-size: 13px; color: rgb(145, 145, 145);">${searchQna.answered_at }</div>
      </div>
   </div>
   <hr style="margin: 0; color: darkgreen;">
</div>
<!-- 하나 끝 -->
</c:if>
</c:forEach> 

<div class="myReview_box" align="center" style="margin-top: 20px;">
              <!-- 페이지네이션 -->
              <div style="margin-top: 30px;">
                <nav aria-label="Page navigation example">
                  <ul class="pagination myOrder justify-content-center" style="height: 0px;">
                    <li class="page-item">
                      <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                      </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                    <li class="page-item">
                      <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                      </a>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- 페이지네이션 끝 -->
</div>
  </div>

  </div>
  <div class="tab-pane fade" id="nav-edit" role="tabpanel" aria-labelledby="nav-edit-tab" tabindex="0">
    








  <!-- 회원정보수정 시작 -->
<div class="edit_content">
<h2 style="font-weight: bold; margin-bottom: 14px;">회원정보 수정</h2>
<!-- 제목 아래 큰틀 -->
<form action="updateMember"  method="post">  
  <input type="hidden" value="<%=Memberlogin.getCust_id() %>" name="cust_id">
  <div class="edit_box border-bottom border-top border-success">
  <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
    <div class="col-2 border-end" align="right">연락처</div>
<div class="col-10"><input type="text" value="harugreen" class="form-control-plaintext" style="width: 250px;"  placeholder="숫자만 입력해주세요" readonly  name="cust_phone"></div>              
  </div>
  <hr style="margin: 0px; color: rgb(188, 188, 188);">
  <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
    <div class="col-2 border-end" align="right">비밀번호</div>
    <div class="col-10"><input type="password" placeholder="수정할 비밀번호를 입력하세요" class="form-control" style="width: 250px;" id="cust_pw" name="cust_pw"></div>                
  </div>
  <hr style="margin: 0px; color: rgb(188, 188, 188);">
  <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
    <div class="col-2 border-end" align="right">비밀번호 확인</div>
    <div class="col-10"><input type="password" placeholder="비밀번호를 확인하세요" class="form-control" style="width: 250px;" id="pwCheck" name="pwCheck"></div>                
    <h4 id="passwordMessage"></h4>
    <input type="button" value="비밀번호 확인" onclick="checkPasswordMatch()" style="background-color: #4CAF50; /* Lighter green color */ color: white; padding: 8px 16px; border: none; border-radius: 5px; cursor: pointer;">
</div>  
  </div>
  <hr style="margin: 0px; color: rgb(188, 188, 188);">
  <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
    <div class="col-2 border-end" align="right">이름</div>
    <div class="col-10"><span><%=Memberlogin.getCust_name() %></span></div>
  </div>
  <hr style="margin: 0px; color: rgb(188, 188, 188);">
  <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
    <div class="col-2 border-end" align="right">닉네임</div>
    <div class="col-10"><input type="text" placeholder="수정할 닉네임을 입력하세요" class="form-control" style="width: 250px;" name="cust_nick"></div>              </div>
  <hr style="margin: 0px; color: rgb(188, 188, 188);">
  <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
    <div class="col-2 border-end" align="right">이메일</div>
    <div class="col-10"><input type="email" class="form-control" placeholder="name@example.com"  style="width: 250px;" name="cust_email"></div>                
  </div>
  
  <hr style="margin: 0px; color: rgb(188, 188, 188);">
  <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
    <div class="col-2 border-end" align="right">생년월일</div>
    <div class="col-10"><input type="date" class="form-control" style="width: 250px;" name="cust_birthdate"></div>
  </div>
  <hr style="margin: 0px; color: rgb(188, 188, 188);">
  <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
    <div class="col-2 border-end" align="right">주소</div>
    <div class="col-10">
        <input type="text" placeholder="도로명주소를 입력해주세요" class="form-control" style="width: 400px; margin-bottom: 5px;" >
        <input type="text" placeholder="상세주소를 입력해주세요" class="form-control" style="width: 400px;">
      </div>
    </div>           
        </div>
     
     <div class="myReview_box" align="center">
       <!-- 페이지네이션 -->
       <button type="button" class="btn btn-outline-secondary">취소하기</button>
       <button type="button" class="btn btn-success">수정하기</button>
       <!-- 페이지네이션 끝 -->
      </div>
    </form>
  
    </div>
    <!-- 판매자용시작 -->
  <div class="tab-pane fade" id="nav-prod-seller" role="tabpanel" aria-labelledby="nav-prod-seller-tab" tabindex="0">
    <div class="edit_content">
      <div style="display: flex; justify-content: space-between;">
      <h2 style="font-weight: bold;">판매목록 모아보기</h2>
      <a href="#"><button type="button" class="btn btn-lg btn-success">상품등록하기</button></a>
    </div>
      <hr>
      <!-- 한줄시작 -->
      <div class="d-flex flex-wrap" style="display: flex; justify-content: space-between;">
        <c:forEach var="sellList" items="${sellList}" varStatus="i">
          <c:if test="${i.index < 30}"> 
        
        <div class="img-wrapper">
          <a href="#"><img src="./resources/upload/${sellList.img_name }" alt="" style="width: 200px; height: 200px;"></a>
          <div>${sellList.prod_name }</div>
          <span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg>  ${sellList.prod_ratings }</span>
          <span class="price">${sellList.prod_price }</span>
        </div>
      </c:if>
    </c:forEach>
      </div>
      <hr style="color: rgb(177, 177, 177);">
      <!-- 한줄끝 -->
      
    </div>
  
  
  </div>
  <div class="tab-pane fade" id="nav-diary-seller" role="tabpanel" aria-labelledby="nav-diary-seller-tab" tabindex="0">
        <!-- 농사일지 내용 -->
        <div class="diary_content">
          <div style="display: flex; justify-content: space-between; margin-bottom: 20px;">
            <h2 style="font-weight: bold;">나의 농사일지</h2>
            <a href="#"><button type="button" class="btn btn-lg btn-success">농사일지작성</button></a>
          </div>
          <!-- 글 하나 시작 반복 -->
          <c:forEach var="diaryList" items="${diaryList }" varStatus="i">
                      <c:if test="${i.index < 10}">
          <div class="shadow" style="margin-bottom: 20px;">
            <div class="diary_img" style="padding: 30px;">
              <img src="./resources/upload/${diaryList.diary_img_name }" alt="이미지에용" style="margin: 0px;">
            </div>
            <div class="diary_farmer row" style="padding: 0px 30px 30px 30px; margin: 0px;">
              <div class="col-10">
                <h3>${diaryList.company_name }</h3>
                <h5>  ${diaryList.diary_content }</h5>
              </div>
              <div class="col-2" align="right"><i class="fa fa-heart red-heart" aria-hidden="true" style="color: red; font-size: 30px;"><span style="color: black;"> ${diaryList.diary_likes }</span></i></div>
            </div>
          </div>
          <!-- 글 하나 끝 -->
        </c:if>
         </c:forEach>                 
        </div>
        <!-- 농사일지 내용 끝 -->
  </div>
  <div class="tab-pane fade" id="nav-myQnA-seller" role="tabpanel" aria-labelledby="nav-myQnA-seller-tab" tabindex="0">
    <!-- 판매자용 문의 모아보기 -->
    <div class="edit_content">
      <h2 style="font-weight: bold;">상품문의 모아보기</h2>
          <hr>
          <form action="">
            <div class="row">
              <div class="col-7">질문</div>
              <div class="col-5">답변</div>
            </div>
            <hr>
          <!-- 상품한줄 시작 for돌리는곳 -->
          <c:forEach var="qnaList" items="${qnaList }" varStatus="i">
                      <c:if test="${i.index < 10}"> 
            <div class="row">
              <div class="col-2">
                <div class="prodLike_img-wrapper" style="position: relative; width: 130px; height: 130px;"><img src="./resources/upload/${qnaList.prod_img_name }" class="rounded" alt="물품사진" style=" position: absolute; top: 0; left: 0; transform: translate(50, 50); width: 100%; height: 100%; object-fit: cover; margin: auto;"></div>
              </div>
              <div class="col-5">
              <p>
                상품 : <span>${qnaList.prod_name }</span>
              </p>
              <p style="font-weight: normal;">
                ${qnaList.question }
                </p>
              </div>
              <div class="col-5" style="display: flex; justify-content: space-between; align-items: center;">
                <textarea name="" id="" class="form-control" rows="4" style="width: 320px;">${qnaList.answer}</textarea>
                <button type="submit" class="btn btn-sm btn-success" style="height: 30px;" onclick="updateAnswer(${qnaList.answer},${qnaList.prod_idx},${qnaList.qna_idx})">확인</button></button>
              </div>
            </div>
            <hr>
          <!-- 상품한줄 끝 -->
        </c:if>
         </c:forEach>



  </form>
  </div>
  </div>
  <!-- 판매자용끝 -->

            </div>          
            </div>          
             </div>
             </div>        
          <!-- 메뉴바 끝 -->
          
              <!-- 푸터 시작 -->
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
                    <p>©그린허브 핵심프로젝트.</p>
                  </div>
                </div>
              </div>  
        
              </footer>

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
    // 찜 상품 삭제 함수
    function searchLikeList(prod_idx) {
        if (confirm('정말로 찜 상품을 삭제하시겠습니까?')) {
            // Ajax를 사용하여 서버에 삭제 요청 전송
            $.ajax({
                type: 'POST',
                url: 'searchLikeList', // 서버에서 처리할 URL (searchLike.jsp 경로에 따라 수정 필요)
                data: { prod_idx: prod_idx },
                success: function (data) {
                    // 삭제에 성공하면 페이지 리로드 또는 화면에서 삭제된 항목 제거 등을 수행
                    location.reload(); // 예시로 페이지를 리로드하는 방법
                },
                error: function (error) {
                    console.error('찜 상품 삭제 실패', error);
                }
            });
        }
    }

    // 선택된 항목 삭제 함수
    function deleteSelected(index) {
        // 여기에 선택된 항목을 삭제하는 로직 추가
        console.log('선택된 항목 삭제 - 인덱스: ' + index);
    }
</script>
<script>
    // 후기 삭제 함수
   function deletereview(prod_idx) {
    if (confirm('정말로 후기를 삭제하시겠습니까?')) {
        // Ajax를 사용하여 서버에 삭제 요청 전송
        $.ajax({
            type: 'POST',
            url: 'reviewDelete',
            data: { prod_idx: prod_idx }, // 'prod_idx'를 데이터로 전송
            success: function (data) {
                // 삭제에 성공하면 페이지 리로드 또는 화면에서 삭제된 항목 제거 등을 수행
                location.reload(); // 예시로 페이지를 리로드하는 방법
            },
            error: function (error) {
                console.error('후기 삭제 실패', error);
            }
        });
    }
}

</script>
<script>
    // qna 삭제 함수
   function deleteQna(prod_idx) {
    if (confirm('정말로 문의를 삭제하시겠습니까?')) {
        // Ajax를 사용하여 서버에 삭제 요청 전송
        $.ajax({
            type: 'POST',
            url: 'qnaDelete',
            data: { prod_idx: prod_idx }, // 'prod_idx'를 데이터로 전송
            success: function (data) {
                // 삭제에 성공하면 페이지 리로드 또는 화면에서 삭제된 항목 제거 등을 수행
                location.reload(); // 예시로 페이지를 리로드하는 방법
            },
            error: function (error) {
                console.error('후기 삭제 실패', error);
            }
        });
    }
}

</script>
<script>
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

</script>
<script >
function updateAnswer(answer,prod_idx,qna_idx) {
    if (confirm('답변을 수정하시겠습니까?')) {
        // Ajax를 사용하여 서버에 삭제 요청 전송
         var Answer = {
               answer: answer,
               prod_idx:prod_idx,
               qna_idx: qna_idx
        };
      console.log(Answer)
        $.ajax({
            type: 'POST',
            url: 'updateAnswer',
            data: Answer, 
            success: function (data) {
                
                location.reload(); // 예시로 페이지를 리로드하는 방법
            },
            error: function (error) {
                console.error('답변 수정 실패', error);
            }
        });
    }
}

</script>

</body>
</html>