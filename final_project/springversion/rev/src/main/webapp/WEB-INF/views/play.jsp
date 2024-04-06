<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
<link href="${cpath }/resources/css/styleplay.css" rel="stylesheet">

<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Money For Travel - 여행 목적을 결정하시 분</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>


<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="{{ url_for('static', filename='style.css') }}">
</head>

<body>
	<script src="js/scripts.js"></script>
	<!-- Header-->
	<header class="bg-dark py-5">
		<div class="container px-5">
			<div class="row gx-5 justify-content-center">
				<div class="col-lg-6">
					<div class="text-center my-5">
						<h1 class="display-5 fw-bolder text-white mb-2">여행목적을 결정하신 분!</h1>
						<p class="lead text-white-50 mb-4">
							당신의 여행 목적은 무엇인가요? <br> 우리나라에서 즐길 수 있는 여행 목적을 골라보세요!
						</p>
						<div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
							<a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Let's
								GO!</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Features section-->
	<section class="py-5 border-bottom" id="features">
		<div class="container px-5 my-5">
			<div class="row gx-5">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<div
						class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
						<button class="scroll-button btn btn-primary"
							onclick="scrollToFeature()">
							<span class="material-symbols-outlined">sports_golf</span>
						</button>

					</div>
					<h2 class="h4 fw-bolder" id="golf">골프</h2>
					<p>
						골프를 위한 여행을 떠나고 싶으신 분!<br> 이 카테고리를 선택해 주세요
					</p>
				</div>

				<div class="col-lg-4 mb-5 mb-lg-0">
					<div
						class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
						<button class="scroll-button btn btn-primary"
							onclick="scrollToFeature()">
							<span class="material-symbols-outlined">downhill_skiing</span>
						</button>
					</div>
					<h2 class="h4 fw-bolder" id="ski">스키</h2>
					<p>
						스키를 위한 여행을 떠나고 싶으신 분!<br> 이 카테고리를 선택해 주세요<br>실내 스키장도 있어
						계절 상관없이<br> 즐길 수 있는 지역도 있습니다.
					</p>

				</div>

				<div class="col-lg-4 mb-5 mb-lg-0">
					<div
						class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
						<button class="scroll-button btn btn-primary"
							onclick="scrollToFeature()">
							<span class="material-symbols-outlined">attractions</span>
						</button>
					</div>
					<h2 class="h4 fw-bolder" id="park">관광유원</h2>
					<p>
						관광유원을 위한 여행을 떠나고 싶으신 분!<br> 이 카테고리를 선택해주세요<br>원하시는 지역의
						다양한 테마파크를 즐겨보세요!
					</p>

				</div>

				<div class="col-lg-4 mb-5 mb-lg-0">
					<div
						class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
						<button class="scroll-button btn btn-primary"
							onclick="scrollToFeature()">
							<span class="material-symbols-outlined">skateboarding</span>
						</button>
					</div>
					<h2 class="h4 fw-bolder" id="leisure">기타레저</h2>
					<p>
						골프, 스키, 관광유원 이외에<br> 다른 레저를 즐기시고 싶으신 분!<br> 이 카테고리를
						선택해주세요
					</p>

				</div>
			</div>
		</div>
	</section>

	<!-- Pricing section-->
	<section class="features-icons bg-light text-center" id="feature">
		<div class="container">
			<div class="col-lg-4">
				<div class="col-lg-4">
					<i class="fa-solid fa-location-dot" style="color: #005eff;"></i>
				</div>
				<h3>지역 선택</h3>
				<p class="lead mb-0">
					여행을 가고자 하는 지역을 선택해주세요!<br>
				</p>
				<select style="font-size: 20px">
					<option>어디 지역에 여행을 갈지 선택해주세요</option>
					<option id="areagangwon">강원도</option>
					<option id="areagyeonggi">경기도</option>
					<option id="areagyeongnam">경상남도</option>
					<option id="areagyeongbuk">경상북도</option>
					<option id="areagwangju">광주광역시</option>
					<option id="areadaegu">대구광역시</option>
					<option id="areadaejeon">대전광역시</option>
					<option id="areabusan">부산광역시</option>
					<option id="areaseoul">서울특별시</option>
					<option id="areaulsan">울산광역시</option>
					<option id="areaincheon">인천광역시</option>
					<option id="areajeunnam">전라남도</option>
					<option id="areajeunbuk">전라북도</option>
					<option id="areajeju">제주특별자치도</option>
					<option id="areachungnam">충청남도</option>
					<option id="areachungbuk">충청북도</option>
				</select>
			</div>
			<div class="row">
				<div class="col-lg-7">
					<div class="col-lg-7">
						<i class="fa-solid fa-calendar-days" style="color: #0d6efd;"></i>
					</div>

					<h3>여행 월</h3>
					<p class="lead mb-0">
						여행을 가고자 하는 월을 선택해주세요!<br>(1월~12월)
					</p>
					<select style="font-size: 20px">
						<option>몇월달에 여행을 가실지 선택해주세요</option>
						<option id="jan">1월</option>
						<option id="feb">2월</option>
						<option id="mar">3월</option>
						<option id="apr">4월</option>
						<option id="may">5월</option>
						<option id="jun">6월</option>
						<option id="jul">7월</option>
						<option id="jan">8월</option>
						<option id="sep">9월</option>
						<option id="oct">10월</option>
						<option id="nov">11월</option>
						<option id="dec">12월</option>
					</select>
				</div>
			</div>

			<div class="col-lg-7">
				<div class="col-lg-7">
					<i class="fa-solid fa-bed" style="color: #0d6efd;"></i>
				</div>
				<h3>숙박 여부</h3>
				<p class="lead mb-0">
					숙박 선택 가능일은 0일에서 <br>최대 5일까지 입니다!
				</p>
				<select style="font-size: 20px">
					<option>숙박일을 선택해 주세요
					<option id="nonight">미정</option>
					<option id="zeronight">0일</option>
					<option id="onenight">1일</option>
					<option id="twonight">2일</option>
					<option id="threenight">3일</option>
					<option id="fournight">4일</option>
					<option id="fivenight">5일</option>
				</select>
			</div>
		</div>
		<div class="col-lg-7">
			<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
				<div class="col-lg-7">
					<i class="fa-solid fa-bowl-food" style="color: #0d6efd;"></i>
				</div>
				<h3>식음료 여부</h3>
				<p class="lead mb-0">식사를 몇 끼 하실지 선택해 주세요!</p>
				<select style="font-size: 20px">
					<option>식사를 몇 끼 하실지 선택해 주세요
					<option>미정
					<option>0끼
					<option>1끼
					<option>2끼
					<option>3끼
					<option>4끼
					<option>5끼
					<option>6끼
					<option>7끼
					<option>8끼
					<option>9끼
					<option>10끼
					<option>11끼
					<option>12끼
					<option>13끼
					<option>14끼
					<option>15끼</option>
					</option>
					</option>
				</select>
			</div>
		</div>

		<div class="col-lg-7">
			<div class="features-icons-item mx-auto mb-0 mb-lg-3">
				<div class="col-lg-7">
					<i class="fa-solid fa-cart-shopping" style="color: #005eff;"></i>
				</div>
				<h3>쇼핑 여부</h3>
				<p class="lead mb-0">쇼핑 여부를 선택해 주세요!</p>
				<form id="choicesForm" style="font-size: 20px; margin-top: 3px;">
					<label><input type="checkbox" name="choices" value="미정">
						미정</label> <label><input type="checkbox" name="choices"
						value="면세점"> 면세점</label> <label><input type="checkbox"
						name="choices" value="레저용품 쇼핑"> 레저용품 쇼핑</label> <label><input
						type="checkbox" name="choices" value="대형쇼핑몰"> 대형쇼핑몰</label> <label><input
						type="checkbox" name="choices" value="문화서비스"> 문화서비스</label>
				</form>
			</div>
			<div class="dis" style="font-size: 20px; margin-top: 23px;">
				<a class="btn btn-primary btn-lg px-4 me-sm-3" href="#show">최종
					제출</a>
			</div>
		</div>



		<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>