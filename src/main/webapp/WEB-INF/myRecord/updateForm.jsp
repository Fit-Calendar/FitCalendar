<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>recordForm</title>
<link rel="stylesheet" href="<c:url value='/css/frame.css' />"
	type="text/css">
<link rel="stylesheet" href="<c:url value='/css/recordForm.css' />"
	type="text/css">
</head>
<script type="text/javascript">
	function signUpCheck() {
		if (form.title.value == "") {
			alert("제목을 입력하십시오.");
			form.title.focus();
			return false;
		}
		if (form.creationDate.value == "") {
			alert("생성 날짜를 입력하십시오.");
			form.creationDate.focus();
			return false;
		}
		if (form.totalTime.value == "") {
			alert("총 운동 시간을 입력하십시오.");
			form.totalTime.focus();
			return false;
		}
		if (form.category.value == "") {
			alert("종목을 입력하십시오.");
			form.category.focus();
			return false;
		}
		if (form.routine.value == "") {
			alert("운동 루틴을 입력하십시오.");
			form.routine.focus();
			return false;
		}
		if (form.diet.value == "") {
			alert("식단을 입력하십시오.");
			form.diet.focus();
			return false;
		}
		if (form.shareOption.value == "") {
			alert("공유 옵션을 입력하십시오.");
			form.shareOption.focus();
			return false;
		}
		console.log("form submit");
		form.submit();
	}
</script>

<body>

	<%@ include file="../frameHeader.jsp" %>
	
	<!-- container -->
	<!-- recordForm 부분 -->
	<div class="container">
		<form name="form" method="POST"
			action="<c:url value='/myRecord/write'/>">
			<div class="recordForm">
				<!-- 로그인 구현 후 session에서 exerciserId 갖고 오도록 구현 -->
				<h1 style="font-size: 21px;">${NickName}님의운동일지</h1>
			</div>
			<div class="name">
				<input type="text" name="title" placeholder="제목을 입력해 주세요.">
			</div>
			<div class="name">
				<input type="date" name="creationDate">
			</div>
			<div class="name">
				<input type="text" name="totalTime"
					placeholder="총 운동시간을 입력해 주세요. (예: 3)">
			</div>
			<div class="line">
				<hr>
			</div>
			<div class="area">
				<select id="category" name="category">
					<option selected>종목을 선택하세요.</option>
					<option value="1">헬스</option>
					<option value="2">필라테스</option>
					<option value="3">요가</option>
					<option value="4">러닝</option>
					<option value="5">기타</option>
				</select>
			</div>
			<div class="name">
				<textarea rows="5" cols="110%" name="routine"
					aria-label="With textarea" placeholder="운동 루틴을 입력하세요."></textarea>
			</div>
			<div class="name">
				<textarea rows="5" cols="110%" name="diet"
					aria-label="With textarea" placeholder="식단을 입력하세요."></textarea>
			</div>
			<div class="name">
				<input type="file" name="photo">
			</div>
			<div class="name">
				<select name="shareOption">
					<option selected>기록 공유를 하시겠습니까?</option>
					<option value="1">예</option>
					<option value="0">아니오</option>
				</select>
			</div>
			<div class="button">
				<button type="button" onclick="signUpCheck()">등록하기</button>
			</div>
		</form>
	</div>

	<!-- footer -->
	<%@ include file="../frameFooter.jsp"%>
</body>
</html>