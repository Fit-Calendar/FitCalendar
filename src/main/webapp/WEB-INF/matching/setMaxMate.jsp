<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		�����ϰ� ���� �ִ� Mate ���� �Է��ϼ���! <br><br>
		<input type="text" name="maxMate"><br><br>
		<input type="reset" value="���Է�"> 
		<input type="submit" value="����"> 		
	</form>
</div>
</body>
<%@ include file="../frameFooter.jsp" %>
</html>