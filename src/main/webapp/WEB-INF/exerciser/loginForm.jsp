<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>loginForm</title>
    <link rel="stylesheet" href="<c:url value='/css/frame.css' />" type="text/css">
    <link rel="stylesheet" href="<c:url value='/css/loginForm.css' />" type="text/css">
    
</head>


<%@ include file="../frameHeader.jsp" %>


    <div id="main">
        <form>
            <div class="flex-container2">
                <div id="subTitle">
                    <p class="subTitle">로그인</p>
                </div>
                <div id="loginBox">
                    <div class="box">
                        <input type="text" class="inputId" id="id" maxlength="30"
                        placeholder="아이디"
                        onfocus="this.placeholder = ''" 
                        onblur="this.placeholder = '아이디'">
                        <p class="alert validId1"></p>
                    </div>
                    <div class="box">
                        <input type="password" class="inputPW" id="pswd1" maxlength="30"
                        placeholder="비밀번호"
                        onfocus="this.placeholder = ''" 
                        onblur="this.placeholder = '비밀번호'">
                        <p class="alert validpwd2"></p>
                    </div>
                </div>
                <div><button type="button" id="login_btn" onclick="login_check();">로그인</button></div>
            </div>
        </form>
    </div>
    <div class="findinfo">
        <a href="../html/signUp.html" class="signUPTxt">회원가입</a>
        <a href="../html/signUp.html" class="signUPTxt">아이디 찾기</a>
        <a href="../html/signUp.html" class="signUPTxt">비밀번호 찾기</a>
    </div>
    
    

<%@ include file="../frameFooter.jsp" %>