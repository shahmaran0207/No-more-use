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

	<form method="POST">
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

		<section class="features-icons bg-light text-center" id="fu">
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<i class="fa-solid fa-location-dot" style="color: #005eff;"></i>
					</div>
					<h3>지역 선택</h3>
					<p id="areafont">
						(강원도, 경기도, 경상남도, 경상북도, 광주광역시, 대구광역시, 부산광역시, 서울특별시, <br>울산광역시,
						인천광역시, 전라남도, 전라북도, 제주특별자치도, 충청남도, 충청북도 중)
					</p>
					<p>
						<input id="playarea" name="area" placeholder="여행지를 입력해주세요"
							required>
					</p>
				</div>
			</div>
			<!-- Icons Grid-->
			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<i class="fa-solid fa-calendar-days" style="color: #0d6efd;"></i>
					</div>
					<h3>여행 월</h3>
					<p id="areafont">
						여행을 가고자 하는 월을 선택해주세요!<br>(1월~12월)
					</p>
					<input id="playmonth" name="month"
						placeholder="여행갈 월을 입력해주세요(1~12월)" required>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<i class="fa-solid fa-bed" style="color: #0d6efd;"></i>
					</div>
					<h3>숙박 여부</h3>
					<p id="areafont">
						숙박 선택 가능일은 0일에서 <br>최대 5일까지 입니다!
					</p>
					<input id="playnight" name="night"
						placeholder="몇일동안 숙박하실지 정해주세요(0~5일)" required>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<i class="fa-solid fa-bed" style="color: #0d6efd;"></i>
					</div>
					<h3>숙박 장소</h3>
					<p id="areafont">
						숙박하실 장소를 입력헤주세요<br>(호텔, 콘도, 캠핑장, 기타숙박)
					</p>
					<input id="playnightplace" name="nightplace"
						placeholder="숙박하실 장소를 입력헤주세요" required>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-lg-7">
						<i class="fa-solid fa-bowl-food" style="color: #0d6efd;"></i>
					</div>
					<h3>식음료 장소</h3>
					<p id="areafont">
						식사를 몇 끼 하실지 입력해 주세요!<br>(0~15끼)
					</p>
					<input id="playfood" name="food" placeholder="식사를 몇 끼 하실지 입력해 주세요"
						required>
				</div>
			</div>
			
			<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<i class="fa-solid fa-map-location-dot" style="color: #0d6efd;"></i>
				</div>
				<h3>쇼핑 여부</h3>
				<p id="areafont">
					쇼핑여부를 입력해 주세요!<br>(미정, 면세점, 레저용품 쇼핑, 대형쇼핑몰, 관광유원시설, 스키장, 골프장,
					기타레저, 문화서비스)
				</p>
				<input id="playgoal" name="goal" placeholder="여행목적을 입력해주세요" required>
			</div>
			<div class="dis" style="font-size: 20px; margin-top: 23px;">
				<a class="btn btn-primary btn-lg px-4 me-sm-3" href="#show">최종
					제출</a>
			</div>
	</form>


	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>