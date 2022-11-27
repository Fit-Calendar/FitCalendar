<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>setMaxMate!!</title>
	<link rel="stylesheet" href="<c:url value='/css/frame.css' />" type="text/css">
</head>
<%@ include file="../frameHeader.jsp" %>
<body>
<div align = "center">
	<form name="setMaxMateForm" action="matchingMenu.jsp" method="GET">
		소통하고 싶은 최대 Mate 수를 입력하세요! <br><br>
		<input type="text" name="maxMate">
		<input type="text" name="useMatchSvc"><br><br>
		<input type="reset" value="재입력"> 
		<input type="submit" value="제출"> 		
	</form>
</div>
</body>
<%@ include file="../frameFooter.jsp" %>
</html>