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

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">

</head>
<body>
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
                <a href="index.html">
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
                  <form id="search-form" class="text-center" action="index.html" method="post">
                    <input type="text" class="form-control border-0 bg-transparent" placeholder="검색어를 입력해주세요!" />
                  </form>
                </div>
                <div class="col-1">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M21.71 20.29L18 16.61A9 9 0 1 0 16.61 18l3.68 3.68a1 1 0 0 0 1.42 0a1 1 0 0 0 0-1.39ZM11 18a7 7 0 1 1 7-7a7 7 0 0 1-7 7Z"/></svg>
                </div>
              </div>
            </div>
            
            <div class="col-sm-8 col-lg-4 d-flex justify-content-end gap-5 align-items-center mt-4 mt-sm-0 justify-content-center justify-content-sm-end">
              <div class="support-box text-end d-none d-xl-block">
                <span class="fs-6 text-muted"></span>
                <h5 class="mb-0"></h5>
              </div>
  
              <ul class="d-flex justify-content-end list-unstyled m-0">
                <li>
                  <a href="#" class="rounded-circle bg-light p-2 mx-1" style="color: green;">
                    <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#user"></use></svg>
                  </a>
                </li>
                <li>
                  <a href="#" class="rounded-circle bg-light p-2 mx-1" style="color: green;">
                    <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#heart"></use></svg>
                  </a>
                </li>
                <li class="d-lg-none">
                  <a href="#" class="rounded-circle bg-light p-2 mx-1" style="color: green;" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart" aria-controls="offcanvasCart">
                    <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#cart"></use></svg>
                  </a>
                </li>
                <li class="d-lg-none">
                  <a href="#" class="rounded-circle bg-light p-2 mx-1" style="color: green;" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSearch" aria-controls="offcanvasSearch">
                    <svg width="24" height="24" viewBox="0 0 24 24"><use xlink:href="#search"></use></svg>
                  </a>
                </li>
              </ul>
  
              <div class="cart text-end d-none d-lg-block dropdown">
                <button class="border-0 bg-transparent d-flex flex-column gap-2 lh-1" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart" aria-controls="offcanvasCart">
                  <span class="fs-6 text-muted dropdown-toggle">장바구니</span>
                  <span class="cart-total fs-5 fw-bold">현재가격</span>
                </button>
              </div>
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
                
              </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
            
              <div class="tab-pane fade show active" id="nav-myOder" role="tabpanel" aria-labelledby="nav-myOder-tab" tabindex="0">
                          
              <!-- 메뉴바1내용 주문내역 -->
              <!-- 주문내역 시작 -->
              <div class="myOrder_content">
                <h2 style="font-weight: bold; margin-bottom: 14px;">주문내역</h2>
                  <!-- 주문내역 아래 큰틀 -->
                  <div class="myOrder_box border rounded row" style="margin-top: 0px;">
                    <div class="col-10" style="font-size: 20px; font-weight: bold; margin-bottom: 5px; padding: 0px;">
                      2024. 1. 12 주문
                    </div>
                    <div class="col-2 showDetail" style="font-size: 10px;">
                      <a href="#" style="text-decoration-line: none; color: rgb(0, 180, 39);">주문 상세보기 ></a>
                      
                    </div>
                  <div class="myOrder_box_box row border rounded ">
                    <div class="col-lg-2" style="padding: 0px;"> <img src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" ></div>
                    <div class="col-lg-7 d-grid gap-3 align-content-center" style="padding-left: 25px;">
                      <div>배송중 | 내일 도착 예상</div>
                      <div><p style="font-size: 20px; font-weight: bold;">상품명 당근당근</p></div>
                      <div>3,000원 | 1kg</div>
                    </div>
                    <div class="col-lg-3 d-grid gap-2 my-auto">
                      <button type="button" class="btn btn-outline-success">배송조회</button>
                      <button type="button" class="btn btn-outline-secondary">후기 작성하기</button>
                    </div>
                  </div>
                </div>
                <!-- 주문내역 한박스 끝 -->
                  <!-- 주문내역 아래 큰틀 -->
                  <div class="myOrder_box border rounded row">
                    <div class="col-10" style="font-size: 20px; font-weight: bold; margin-bottom: 5px; padding: 0px;">
                      2024. 1. 12 주문
                    </div>
                    <div class="col-2 showDetail" style="font-size: 10px;">
                      <a href="#" style="text-decoration: none; color: rgb(0, 180, 39);">주문 상세보기 ></a>
                      
                    </div>
                  <div class="myOrder_box_box row border rounded ">
                    <div class="col-lg-2" style="padding: 0px;"> <img src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" ></div>
                    <div class="col-lg-7 d-grid gap-3 align-content-center" style="padding-left: 25px;">
                      <div>배송중 | 내일 도착 예상</div>
                      <div><p style="font-size: 20px; font-weight: bold;">상품명 당근당근</p></div>
                      <div>3,000원 | 1kg</div>
                    </div>
                    <div class="col-lg-3 d-grid gap-2 my-auto">
                      <button type="button" class="btn btn-outline-success">배송조회</button>
                      <button type="button" class="btn btn-outline-secondary">후기 작성하기</button>
                    </div>
                  </div>
                </div>
                <!-- 주문내역 한박스 끝 -->
                  <!-- 주문내역 아래 큰틀 -->
                  <div class="myOrder_box border rounded row">
                    <div class="col-10" style="font-size: 20px; font-weight: bold; margin-bottom: 5px; padding: 0px;">
                      2024. 1. 12 주문
                    </div>
                    <div class="col-2 showDetail" style="font-size: 10px;">
                      <a href="#" style="text-decoration-line: none; color: rgb(0, 180, 39);">주문 상세보기 ></a>
                      
                    </div>
                  <div class="myOrder_box_box row border rounded ">
                    <div class="col-lg-2" style="padding: 0px;"> <img src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" ></div>
                    <div class="col-lg-7 d-grid gap-3 align-content-center" style="padding-left: 25px;">
                      <div>배송중 | 내일 도착 예상</div>
                      <div><p style="font-size: 20px; font-weight: bold;">상품명 당근당근</p></div>
                      <div>3,000원 | 1kg</div>
                    </div>
                    <div class="col-lg-3 d-grid gap-2 my-auto">
                      <button type="button" class="btn btn-outline-success">배송조회</button>
                      <button type="button" class="btn btn-outline-secondary">후기 작성하기</button>
                    </div>
                  </div>
                </div>
                <!-- 주문내역 한박스 끝 -->
                  <!-- 주문내역 아래 큰틀 -->
                  <div class="myOrder_box border rounded row">
                    <div class="col-10" style="font-size: 20px; font-weight: bold; margin-bottom: 5px; padding: 0px;">
                      2024. 1. 12 주문
                    </div>
                    <div class="col-2 showDetail" style="font-size: 10px;">
                      <a href="#" style="text-decoration-line: none; color: rgb(0, 180, 39);">주문 상세보기 ></a>
                      
                    </div>
                  <div class="myOrder_box_box row border rounded ">
                    <div class="col-lg-2" style="padding: 0px;"> <img src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" ></div>
                    <div class="col-lg-7 d-grid gap-3 align-content-center" style="padding-left: 25px;">
                      <div>배송중 | 내일 도착 예상</div>
                      <div><p style="font-size: 20px; font-weight: bold;">상품명 당근당근</p></div>
                      <div>3,000원 | 1kg</div>
                    </div>
                    <div class="col-lg-3 d-grid gap-2 my-auto">
                      <button type="button" class="btn btn-outline-success">배송조회</button>
                      <button type="button" class="btn btn-outline-secondary">후기 작성하기</button>
                    </div>
                  </div>
                </div>
                <!-- 주문내역 한박스 끝 -->
                  <!-- 주문내역 아래 큰틀 -->
                  <div class="myOrder_box border rounded row">
                    <div class="col-10" style="font-size: 20px; font-weight: bold; margin-bottom: 5px; padding: 0px;">
                      2024. 1. 12 주문
                    </div>
                    <div class="col-2 showDetail" style="font-size: 10px;">
                      <a href="#" style="text-decoration-line: none; color: rgb(0, 180, 39);">주문 상세보기 ></a>
                      
                    </div>
                  <div class="myOrder_box_box row border rounded ">
                    <div class="col-lg-2" style="padding: 0px;"> <img src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" ></div>
                    <div class="col-lg-7 d-grid gap-3 align-content-center" style="padding-left: 25px;">
                      <div>배송중 | 내일 도착 예상</div>
                      <div><p style="font-size: 20px; font-weight: bold;">상품명 당근당근</p></div>
                      <div>3,000원 | 1kg</div>
                    </div>
                    <div class="col-lg-3 d-grid gap-2 my-auto">
                      <button type="button" class="btn btn-outline-success">배송조회</button>
                      <button type="button" class="btn btn-outline-secondary">후기 작성하기</button>
                    </div>
                  </div>
                </div>
                <!-- 주문내역 한박스 끝 -->
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
              <!-- 찜목록 아래 큰틀 -->
              <div class="prodLike_allCheck border-bottom border-top border-success" style="background: rgb(246, 246, 246);">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                  전체선택
                </label>
                <button type="button" class="btn btn-outline-success btn-sm">선택삭제</button>
              </div>
              <!-- 상품ㄱㄱ -->
              <div class="prodLike_pordLine">
                <div class="border-bottom border-success row">
                <div class="col-lg-3">
                  <div class="row">

                    <div class="col-1">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    </div>
                    <div class="col-11">
                      <img class="prodLike_img-wrapper" src="./resources/images/thumb-tuna.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="col-lg-7 d-grid gap-2 my-auto">
                  <div>
                통조림 맛있는 통조림
                  </div>
                  <div>
               1,500원
                  </div>
                </div>
                <div class="col-lg-2 d-grid gap-2 my-auto">
                  <button type="button" class="btn btn-outline-success">장바구니담기</button>
                  <button type="button" class="btn btn-outline-secondary">삭제</button>
                </div>
              </div>
              </div>
              <!-- 상품 끝 -->               
              <!-- 상품ㄱㄱ -->
              <div class="prodLike_pordLine">
                <div class="border-bottom border-success row">
                <div class="col-lg-3">
                  <div class="row">

                    <div class="col-1">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    </div>
                    <div class="col-11">
                      <img class="prodLike_img" src="./resources/images/thumb-tuna.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="col-lg-7 d-grid gap-2 my-auto">
                  <div>
                통조림 맛있는 통조림
                  </div>
                  <div>
               1,500원
                  </div>
                </div>
                <div class="col-lg-2 d-grid gap-2 my-auto">
                  <button type="button" class="btn btn-outline-success">장바구니담기</button>
                  <button type="button" class="btn btn-outline-secondary">삭제</button>
                </div>
              </div>
              </div>
              <!-- 상품 끝 -->               
              <!-- 상품ㄱㄱ -->
              <div class="prodLike_pordLine">
                <div class="border-bottom border-success row">
                <div class="col-lg-3">
                  <div class="row">

                    <div class="col-1">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    </div>
                    <div class="col-11">
                      <img class="prodLike_img" src="./resources/images/thumb-tuna.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="col-lg-7 d-grid gap-2 my-auto">
                  <div>
                통조림 맛있는 통조림
                  </div>
                  <div>
               1,500원
                  </div>
                </div>
                <div class="col-lg-2 d-grid gap-2 my-auto">
                  <button type="button" class="btn btn-outline-success">장바구니담기</button>
                  <button type="button" class="btn btn-outline-secondary">삭제</button>
                </div>
              </div>
              </div>
              <!-- 상품 끝 -->               
              <!-- 상품ㄱㄱ -->
              <div class="prodLike_pordLine">
                <div class="border-bottom border-success row">
                <div class="col-lg-3">
                  <div class="row">

                    <div class="col-1">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    </div>
                    <div class="col-11">
                      <img class="prodLike_img" src="./resources/images/thumb-tuna.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="col-lg-7 d-grid gap-2 my-auto">
                  <div>
                통조림 맛있는 통조림
                  </div>
                  <div>
               1,500원
                  </div>
                </div>
                <div class="col-lg-2 d-grid gap-2 my-auto">
                  <button type="button" class="btn btn-outline-success">장바구니담기</button>
                  <button type="button" class="btn btn-outline-secondary">삭제</button>
                </div>
              </div>
              </div>
              <!-- 상품 끝 -->               
              <!-- 상품ㄱㄱ -->
              <div class="prodLike_pordLine">
                <div class="border-bottom border-success row">
                <div class="col-lg-3">
                  <div class="row">

                    <div class="col-1">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    </div>
                    <div class="col-11">
                      <img class="prodLike_img" src="./resources/images/thumb-tuna.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="col-lg-7 d-grid gap-2 my-auto">
                  <div>
                통조림 맛있는 통조림
                  </div>
                  <div>
               1,500원
                  </div>
                </div>
                <div class="col-lg-2 d-grid gap-2 my-auto">
                  <button type="button" class="btn btn-outline-success">장바구니담기</button>
                  <button type="button" class="btn btn-outline-secondary">삭제</button>
                </div>
              </div>
              </div>
              <!-- 상품 끝 -->               
              <!-- 상품ㄱㄱ -->
              <div class="prodLike_pordLine">
                <div class="border-bottom border-success row">
                <div class="col-lg-3">
                  <div class="row">

                    <div class="col-1">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    </div>
                    <div class="col-11">
                      <img class="prodLike_img" src="./resources/images/thumb-tuna.jpg" alt="">
                    </div>
                  </div>
                </div>
                <div class="col-lg-7 d-grid gap-2 my-auto">
                  <div>
                통조림 맛있는 통조림
                  </div>
                  <div>
               1,500원
                  </div>
                </div>
                <div class="col-lg-2 d-grid gap-2 my-auto">
                  <button type="button" class="btn btn-outline-success">장바구니담기</button>
                  <button type="button" class="btn btn-outline-secondary">삭제</button>
                </div>
              </div>
              </div>
              <!-- 상품 끝 -->               
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

            <div class="myReview_box border-bottom border-top border-success">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-1">
                  <img class="rounded" src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" >
                </div>
                <div class="col-10">하루그린 방울토마토 당근당근</div>
                  <div class="col-1"><a href="#" style="text-decoration: none; color: green;">삭제</a></div>
               
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 20px 20px;">
                <div>
                 <span>★★★★☆</span>
                <span>2024. 01. 15</span>
                </div>
                <div align="center" style="margin: 10px 0px">
                  <img src="https://cdn.nongupin.co.kr/news/photo/202304/98428_56733_2050.jpg" alt="리뷰사진인데용" style="max-width: 100%;">
                </div>
                <div>
                  사장님이 신선하고 토마토가 친절해요<br>근데 저 토마토 안좋아해요
                </div>
              </div>
            </div>
            <!-- 하나 끝 -->
            <div class="myReview_box border-bottom border-success">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-1">
                  <img class="rounded" src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" >
                </div>
                <div class="col-10">하루그린 방울토마토 당근당근</div>
                  <div class="col-1"><a href="#" style="text-decoration: none; color: green;">삭제</a></div>
               
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 20px 20px;">
                <div>
                 <span>★★★★☆</span>
                <span>2024. 01. 15</span>
                </div>
                <div align="center" style="margin: 10px 0px">
                  <img src="https://cdn.nongupin.co.kr/news/photo/202304/98428_56733_2050.jpg" alt="리뷰사진인데용" style="max-width: 100%;">
                </div>
                <div>
                  토마토맛토마토맛토<br>우우우욱
                </div>
              </div>
            </div>
<!-- 하나 끝 -->
            <div class="myReview_box border-bottom border-success">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-1">
                  <img class="rounded" src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" >
                </div>
                <div class="col-10">하루그린 방울토마토 당근당근</div>
                  <div class="col-1"><a href="#" style="text-decoration: none; color: green;">삭제</a></div>
               
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 20px 20px;">
                <div>
                 <span>★★★★☆</span>
                <span>2024. 01. 15</span>
                </div>
                <div align="center" style="margin: 10px 0px">
                  <img src="https://cdn.nongupin.co.kr/news/photo/202304/98428_56733_2050.jpg" alt="리뷰사진인데용" style="max-width: 100%;">
                </div>
                <div>
                  바니바니바니바니당근당근<br>저는 당근 좋아해요
                </div>
              </div>
            </div>
<!-- 하나 끝 -->
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
            <!-- 제목 아래 큰틀 -->

            <div class="myReview_box border-bottom border-top border-success">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-1">
                  <img class="rounded" src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" >
                </div>
                <div class="col-10">하루그린 방울토마토 당근당근</div>
                  <div class="col-1"><a href="#" style="text-decoration: none; color: green;">삭제</a></div>
               
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 10px 20px;">
               <div style="font-weight: bold; margin-bottom: 10px;">문의내용</div> 
               <div> 저 반정도 먹었는데 반품할수있나요? 저 사실 토마토 안좋아하거든용</div>
               <div style="font-size: 13px; color: rgb(145, 145, 145);">2024. 01. 14</div>
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 10px 50px;">
                <div style="font-weight: bold; margin-bottom: 10px;">
                  <svg width="16" height="16" focusable="false" viewBox="0 0 20 20" aria-hidden="true" role="presentation" style="fill: rgb(136, 136, 136);"><g fill="none" fill-rule="evenodd"><path d="M0 0H20V20H0z"></path><path stroke="#888888" d="M5 3.333L5 13.333 15 13.333"></path></g></svg>
                  김연성농원
                </div> 
                   <div style="margin-left: 20px;"> 죄송하지만 상품에 문제가 없다면 반품은 불가합니다.
                    <div style="font-size: 13px; color: rgb(145, 145, 145);">2024. 01. 14</div>
                  </div>
               </div>
            </div>
            <!-- 하나 끝 -->
            <!-- 제목 아래 큰틀 -->

            <div class="myReview_box border-bottom border-success">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-1">
                  <img class="rounded" src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" >
                </div>
                <div class="col-10">하루그린 방울토마토 당근당근</div>
                  <div class="col-1"><a href="#" style="text-decoration: none; color: green;">삭제</a></div>
               
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 10px 20px;">
               <div style="font-weight: bold; margin-bottom: 10px;">문의내용</div> 
               <div> 저 반정도 먹었는데 반품할수있나요? 저 사실 토마토 안좋아하거든용</div>
               <div style="font-size: 13px; color: rgb(145, 145, 145);">2024. 01. 14</div>
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 10px 50px;">
                <div style="font-weight: bold; margin-bottom: 10px;">
                  <svg width="16" height="16" focusable="false" viewBox="0 0 20 20" aria-hidden="true" role="presentation" style="fill: rgb(136, 136, 136);"><g fill="none" fill-rule="evenodd"><path d="M0 0H20V20H0z"></path><path stroke="#888888" d="M5 3.333L5 13.333 15 13.333"></path></g></svg>
                  김연성농원
                </div> 
                   <div style="margin-left: 20px;"> 죄송하지만 상품에 문제가 없다면 반품은 불가합니다.
                    <div style="font-size: 13px; color: rgb(145, 145, 145);">2024. 01. 14</div>
                  </div>
               </div>
            </div>
            <!-- 하나 끝 -->
            <!-- 제목 아래 큰틀 -->

            <div class="myReview_box border-bottom border-success">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-1">
                  <img class="rounded" src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" >
                </div>
                <div class="col-10">하루그린 방울토마토 당근당근</div>
                  <div class="col-1"><a href="#" style="text-decoration: none; color: green;">삭제</a></div>
               
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 10px 20px;">
               <div style="font-weight: bold; margin-bottom: 10px;">문의내용</div> 
               <div> 저 반정도 먹었는데 반품할수있나요? 저 사실 토마토 안좋아하거든용</div>
               <div style="font-size: 13px; color: rgb(145, 145, 145);">2024. 01. 14</div>
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 10px 50px;">
                <div style="font-weight: bold; margin-bottom: 10px;">
                  <svg width="16" height="16" focusable="false" viewBox="0 0 20 20" aria-hidden="true" role="presentation" style="fill: rgb(136, 136, 136);"><g fill="none" fill-rule="evenodd"><path d="M0 0H20V20H0z"></path><path stroke="#888888" d="M5 3.333L5 13.333 15 13.333"></path></g></svg>
                  김연성농원
                </div> 
                   <div style="margin-left: 20px;"> 죄송하지만 상품에 문제가 없다면 반품은 불가합니다.
                    <div style="font-size: 13px; color: rgb(145, 145, 145);">2024. 01. 14</div>
                  </div>
               </div>
            </div>
            <!-- 하나 끝 -->
            <!-- 제목 아래 큰틀 -->

            <div class="myReview_box border-bottom border-success">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-1">
                  <img class="rounded" src="//thumbnail7.coupangcdn.com/thumbnails/remote/300x300ex/image/vendor_inventory/3347/38dbf382340fbf1c4f44405591e08a5175b383431326b32be42d8dfa68ad.jpg" alt="" style="max-width: 100%;" >
                </div>
                <div class="col-10">하루그린 방울토마토 당근당근</div>
                  <div class="col-1"><a href="#" style="text-decoration: none; color: green;">삭제</a></div>
               
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 10px 20px;">
               <div style="font-weight: bold; margin-bottom: 10px;">문의내용</div> 
               <div> 저 반정도 먹었는데 반품할수있나요? 저 사실 토마토 안좋아하거든용</div>
               <div style="font-size: 13px; color: rgb(145, 145, 145);">2024. 01. 14</div>
              </div>
              <hr style="margin: 0px;">
              <div style="padding: 10px 50px;">
                <div style="font-weight: bold; margin-bottom: 10px;">
                  <svg width="16" height="16" focusable="false" viewBox="0 0 20 20" aria-hidden="true" role="presentation" style="fill: rgb(136, 136, 136);"><g fill="none" fill-rule="evenodd"><path d="M0 0H20V20H0z"></path><path stroke="#888888" d="M5 3.333L5 13.333 15 13.333"></path></g></svg>
                  김연성농원
                </div> 
                   <div style="margin-left: 20px;"> 죄송하지만 상품에 문제가 없다면 반품은 불가합니다.
                    <div style="font-size: 13px; color: rgb(145, 145, 145);">2024. 01. 14</div>
                  </div>
               </div>
            </div>
            <!-- 하나 끝 -->

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
            <form action="">  

              <div class="edit_box border-bottom border-top border-success">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-2 border-end" align="right">아이디</div>
<div class="col-10"><input type="text" value="harugreen" class="form-control-plaintext" style="width: 250px;" readonly></div>              
              </div>
              <hr style="margin: 0px; color: rgb(188, 188, 188);">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-2 border-end" align="right">비밀번호</div>
                <div class="col-10"><input type="password" placeholder="수정할 비밀번호를 입력하세요" class="form-control" style="width: 250px;"></div>                
              </div>
              <hr style="margin: 0px; color: rgb(188, 188, 188);">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-2 border-end" align="right">비밀번호 확인</div>
                <div class="col-10"><input type="password" placeholder="비밀번호를 확인하세요" class="form-control" style="width: 250px;"></div>                
              </div>
              <hr style="margin: 0px; color: rgb(188, 188, 188);">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-2 border-end" align="right">이름</div>
                <div class="col-10"><input type="text" value="하루그린" class="form-control-plaintext" style="width: 250px;" readonly></div>
              </div>
              <hr style="margin: 0px; color: rgb(188, 188, 188);">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-2 border-end" align="right">닉네임</div>
                <div class="col-10"><input type="text" placeholder="수정할 닉네임을 입력하세요" class="form-control" style="width: 250px;"></div>              </div>
              <hr style="margin: 0px; color: rgb(188, 188, 188);">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-2 border-end" align="right">이메일</div>
                <div class="col-10"><input type="email" class="form-control" placeholder="name@example.com"  style="width: 250px;"></div>                
              </div>
              <hr style="margin: 0px; color: rgb(188, 188, 188);">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-2 border-end" align="right">연락처</div>
                <div class="col-10"><input type="text" placeholder="숫자만 입력해주세요" class="form-control" style="width: 250px;" ></div>
              </div>
              <hr style="margin: 0px; color: rgb(188, 188, 188);">
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-2 border-end" align="right">생년월일</div>
                <div class="col-10"><input type="date" class="form-control" style="width: 250px;"></div>
              </div>
              <hr style="margin: 0px; color: rgb(188, 188, 188);">
              <!-- <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-2 border-end" align="right">성별</div>
                <div class="col-10"><input type="text" value="남" class="form-control-plaintext" style="width: 250px;" readonly></div>
              </div>
              <hr style="margin: 0px; color: rgb(188, 188, 188);"> -->
              <div class="row" style="padding: 10px 20px; display: flex; align-items: center;" >
                <div class="col-2 border-end" align="right">주소</div>
                <div class="col-10">
                  <input type="text" placeholder="광주광역시 어쩌구 저쩌구" class="form-control" style="width: 400px; margin-bottom: 5px;" >
                  <input type="text" placeholder="상세주소" class="form-control" style="width: 400px;">
                </div>
              </div>           
                  </div>
               </div>
              </form>
              <div class="myReview_box" align="center">
                              <!-- 페이지네이션 -->
                              <button type="button" class="btn btn-outline-secondary">취소하기</button>
                              <button type="button" class="btn btn-success">수정하기</button>
                              <!-- 페이지네이션 끝 -->
              </div>
            
              </div>
            
            </div>
            </div>          
            </div>          
            </div>          
          <!-- 메뉴바 끝 -->
          
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
                
        
              </footer>
          
      <script src="js/jquery-1.11.0.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
      <script src="js/plugins.js"></script>
      <script src="js/script.js"></script>
</body>
</html>