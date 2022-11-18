<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>registerForm</title>
    <link rel="stylesheet" href="registerForm.css">
    <link rel="stylesheet" href="../frame.css">
</head>


<%@ include file="../frameHeader.jsp" %>

   	<div id="main">
       <form >
           <div class="flex-container2">
               <div id="subTitle">
                   <p class="subTitle">ȸ������</p>
               </div>
               <div id="loginBox">
                   <div class="box">
                       <input type="text" class="inputId" id="id" maxlength="30" name="id"
                       placeholder="���̵�"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '���̵�'">
                       <p class="alert validId1"></p>
                   </div>
                   <div class="box">
                       <input type="password" class="inputPW" id="pswd1" maxlength="30" name="password"
                       placeholder="��й�ȣ"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '��й�ȣ'">
                       <p class="alert validpwd2"></p>
                   </div>
                   <div class="box">
                       <input type="text" class="inputPW" maxlength="30" name="nickname"
                       placeholder="�г���"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '�г���'">
                   </div>
                   <div class="box">
                       <input type="text" class="inputPW" maxlength="30" name="explanation"
                       placeholder="���ټҰ�"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '���ټҰ�'">
                   </div>
                   <div class="box">
                       <input type="text" class="inputPW" maxlength="30" name="personality"
                       placeholder="����"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '����'">
                   </div>
                   
                   <div class="box">
                   	<div class="inputGender">����</div>
                   	<select name="gender" class="Stype">
                   		<option selected name="F">��</option>
                   		<option name="M">��</option>
                   	</select>
                   </div>
                   <div class="inbodyBox">*InBody ����</div>
                   <div class="box">
                       <input type="text" class="inputInbody" id="pswd1" maxlength="30"
                       placeholder="Ű"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = 'Ű'">
                   </div>
                   <div class="box">
                       <input type="text" class="inputInbody" id="pswd1" maxlength="30"
                       placeholder="������"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '������'">
                   </div>
                   <div class="box">
                       <input type="text" class="inputInbody" id="pswd1" maxlength="30"
                       placeholder="��ݱٷ�"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '��ݱٷ�'">
                   </div>
                   <div class="box">
                       <input type="text" class="inputInbody" id="pswd1" maxlength="30"
                       placeholder="ü�����"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = 'ü�����'">
                   </div>
                   
                   <div class="box">
                       <input type="text" class="inputInbody" id="pswd1" maxlength="30"
                       placeholder="�������淹��"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '�������淹��'">
                   </div>
                   <div class="box">
                       <input type="date" class="inputInbody" id="pswd1" maxlength="30"
                       placeholder="������¥"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '������¥'">
                   </div>
               </div>
               <div><button type="button" id="register_btn" onclick="register_check();">ȸ������</button></div>
           </div>
       </form>
   </div>
            

<%@ include file="../frameFooter.jsp" %>