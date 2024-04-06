<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
<link href="${cpath }/resources/css/stylemoney.css" rel="stylesheet">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Money For Travel - 여행 예산을 결정하신 분!</title>
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
<script src="js/scripts.js"></script>
</head>

<body>
	<!-- Masthead-->
	<header class="masthead">
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div class="col-xl-6">
					<div class="text-center text-white">
						<!-- Page heading (페이지 제목) -->
						<h1 class="mb-5">여행 예산을 입력해주세요</h1>
						<!-- Signup form (가입 양식) -->
						<!-- * * * * * * * * * * * * * * *-->
						<!-- * * SB Forms Contact Form * *-->
						<!-- * * * * * * * * * * * * * * *-->
						<!-- 이 양식은 SB Forms와 사전 통합되어 있습니다. -->
						<!-- 이 양식을 활성화하려면 다음 위치에서 가입하세요 -->
						<!-- https://startbootstrap.com/solution/contact-forms -->
						<!-- API 토큰을 받을 수 있습니다! -->
						<form class="form-subscribe" id="contactForm"
							data-sb-form-api-token="API_TOKEN">
							<!-- 여행 예산 입력 필드 -->
							<div class="row">
								<div class="col">
									<input type="text" class="form-control form-control-lg"
										id="emailAddress" placeholder="여행 예산 입력칸"
										oninput="this.value = this.value.replace(/[^0-9]/g, '')"
										data-sb-validations="required" />

								</div>
								<div class="col-auto">
									<!-- 확인 버튼 -->
									<button class="btn btn-primary btn-lg" id="submitButton"
										type="button" onclick="submitForm()">확인</button>
								</div>
							</div>
							<!-- 제출 성공 메시지 -->
							<!---->
							<!-- 이것은 사용자가 양식을 성공적으로 제출한 경우 사용자가 볼 내용입니다. -->
							<div class="d-none" id="submitSuccessMessage">
								<div class="text-center mb-3">
									<div class="fw-bolder">예산이 성공적으로 입력되었습니다.</div>
									<p>아래로 내려가 다음 선택 사항을 선택해주세요.</p>
								</div>
							</div>
							<!-- 제출 오류 메시지 -->
							<!---->
							<!-- 이것은 양식을 제출하는 중에 오류가 발생한 경우 사용자가 볼 내용입니다. -->
							<div class="d-none" id="submitErrorMessage">
								<div class="text-center text-danger mb-3">메시지 전송 중 오류 발생!</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- 추가된 결과 표시 영역 -->
	<div id="result" class="text-center mt-3"></div>

	<!-- Icons Grid-->
	<section class="features-icons bg-light text-center" id="fu">
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

				<div class="col-lg-4">
					<div class="col-lg-4">
						<i class="fa-solid fa-calendar-days" style="color: #0d6efd;"></i>
					</div>
					<h3>여행 월</h3>
					<p class="lead mb-0">
						여행을 가고자 하는 월을 선택해주세요!<br>(1월~12월)
					</p>
					<select style="font-size: 20px">
						<option>몇월달에 여행을 가실지 선택해주세요
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

			<div class="col-lg-4">
				<div class="col-lg-4">
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
		<div class="col-lg-4">
			<div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
				<div class="col-lg-4">
					<i class="fa-solid fa-bowl-food" style="color: #0d6efd;"></i>
				</div>
				<h3>식음료 여부</h3>
				<p class="lead mb-0">식사를 몇 끼 하실지 선택해 주세요!</p>
				<select style="font-size: 20px">
					<option>식사를 몇 끼 하실지 선택해 주세요
						<option id="notmeal">미정</option>
						<option id="zeromeal">0끼</option>
						<option id="onemeal">1끼</option>
						<option id="twomeal">2끼</option>
						<option id="threemeal">3끼</option>
						<option id="fourmeal">4끼</option>
						<option id="fivemeal">5끼</option>
						<option id="sixmeal">6끼</option>
						<option id="sevenmeal">7끼</option>
						<option id="eightmeal">8끼</option>
						<option id="ninemeal">9끼</option>
						<option id="tenmeal">10끼</option>
						<option id="elevenmeal">11끼</option>
						<option id="notmeal">12끼</option>
						<option id="notmeal">13끼</option>
						<option id="notmeal">14끼</option>
						<option id="notmeal">15끼</option>
				</select>
			</div>
		</div>

		<div class="col-lg-4">
			<div class="features-icons-item mx-auto mb-0 mb-lg-3">
				<div class="col-lg-4">
					<i class="fa-solid fa-map-location-dot" style="color: #0d6efd;"></i>
				</div>
				<h3>관광 여부</h3>
				<p class="lead mb-0">관광 여부를 선택해 주세요!</p>
				<select style="font-size: 20px">
					<option>어떤 관광을 하실지 선택해 주세요</option>
					<option id="noply">미정</option>
					<option id="dutyfree">면세점</option>
					<option id="leisureshop">레저용품 쇼핑</option>
					<option id="hugeshop">대형쇼핑몰</option>
					<option id="amuse">관광유원시설</option>
					<option id="ski">스키장</option>
					<option id="golf">골프장</option>
					<option id="leisure">기타레저</option>
					<option id="culture">문화서비스</option>
				</select>
			</div>
		</div>
		<div class="dis" style="font-size: 20px; margin-top: 23px;">
			<a class="btn btn-primary btn-lg px-4 me-sm-3" href="#show">최종 제출</a>
		</div>
	</section>


	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>