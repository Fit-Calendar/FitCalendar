<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Matching Situation</title>
<link rel="stylesheet" href="<c:url value='/css/frame.css' />" type="text/css">
<link rel="stylesheet" href="<c:url value='/css/situation.css' />" type="text/css">
</head>
<%@ include file="../frameHeader.jsp" %>
<body>
<div align ="center">
<h3>FitMate 요청 상태</h3>

<c:if test="${empty matchingStatus}">
	현재 요청하신 FitMate가 존재하지 않습니다.
</c:if>
<c:if test="${not empty matchingStatus}">
<table>
<tbody>
	<c:forEach var="result" items="${matchingStatus}" varStatus="status">
		<tr>
			<td><c:out value="${result.reciever.nickname}"/></td>
			<td><c:out value="${result.status}"/></td>
		</tr>
	</c:forEach>
</tbody>
</c:if>
</table>
</div>

<%@ include file="../frameFooter.jsp" %>
</html>