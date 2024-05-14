<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
<link href="${cpath }/resources/css/result.css" rel="stylesheet">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>여행 에산 예측 페이지</title>
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
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
</head>
<body>
	<!-- Masthead-->
	<header class="masthead">
		<div class="container position-relative" id="boxbox">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="text-center text-white">
						<!-- 페이지 제목-->
						<h1 class="display-5 fw-bolder text-white mb-2" id="titlefont">${msg }</h1>
						<!-- 확인 버튼만 있는 양식-->
			
				
						<div id="result" class="mt-3"></div>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>
</html>