<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>loginForm</title>
    <link rel="stylesheet" href="loginForm.css">
    <link rel="stylesheet" href="frame.css">
</head>


<%@ include file="frameHeader.jsp" %>


    <div id="main">
        <form>
            <div class="flex-container2">
                <div id="subTitle">
                    <p class="subTitle">�α���</p>
                </div>
                <div id="loginBox">
                    <div class="box">
                        <input type="text" class="inputId" id="id" maxlength="30"
                        placeholder="���̵�"
                        onfocus="this.placeholder = ''" 
                        onblur="this.placeholder = '���̵�'">
                        <p class="alert validId1"></p>
                    </div>
                    <div class="box">
                        <input type="password" class="inputPW" id="pswd1" maxlength="30"
                        placeholder="��й�ȣ"
                        onfocus="this.placeholder = ''" 
                        onblur="this.placeholder = '��й�ȣ'">
                        <p class="alert validpwd2"></p>
                    </div>
                </div>
                <div><button type="button" id="login_btn" onclick="login_check();">�α���</button></div>
            </div>
        </form>
    </div>
    <div class="findinfo">
        <a href="../html/signUp.html" class="signUPTxt">ȸ������</a>
        <a href="../html/signUp.html" class="signUPTxt">���̵� ã��</a>
        <a href="../html/signUp.html" class="signUPTxt">��й�ȣ ã��</a>
    </div>
    
    

<%@ include file="frameFooter.jsp" %>