<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>registerForm</title>
    <link rel="stylesheet" href="../frame.css">
    <link rel="stylesheet" href="registerForm.css">
        <script type="text/javascript">
    	function userCreate() {
    		if(form.id.value == "") {
    			alert("����� ���̵� �Է��Ͻʽÿ�.");
    			form.id.focus();
    			return false;
    		} if(form.password.value == "") {
    			alert("����� �н����带 �Է��Ͻʽÿ�.");
    			form.password.focus();
    			return false;
    		} if(form.nickname.value == "") {
    			alert("����� �г����� �Է��Ͻʽÿ�.");
    			form.nickname.focus();
    			return false;
    		} if(form.explanation.value == "") {
    			alert("����� ���ټҰ��� �Է��Ͻʽÿ�.");
    			form.explanation.focus();
    			return false;
    		} if(form.personality.value == "") {
    			alert("����� ������ �Է��Ͻʽÿ�.");
    			form.personality.focus();
    			return false;
    		} if(form.height.value == "") {
    			alert("����� Ű�� �Է��Ͻʽÿ�.");
    			form.height.focus();
    			return false;
    		} if(form.weight.value == "") {
    			alert("����� �����Ը� �Է��Ͻʽÿ�.");
    			form.weight.focus();
    			return false;
    		} if(form.skeletalmm.value == "") {
    			alert("����� ��ݱٷ��� �Է��Ͻʽÿ�.");
    			form.skeletalmm.focus();
    			return false;
    		} if(form.percentbodyfat.value == "") {
    			alert("����� ü������� �Է��Ͻʽÿ�.");
    			form.percentbodyfat.focus();
    			return false;
    		} if(form.visceralfat.value == "") {
    			alert("����� �������淹���� �Է��Ͻʽÿ�.");
    			form.visceralfat.focus();
    			return false;
    		} if(form.measuredate.value == "") {
    			alert("����� ������¥�� �Է��Ͻʽÿ�.");
    			form.measuredate.focus();
    			return false;
    		}
    		console.log("form submit");
    		form.submit();
    	}
    </script>

</head>


<%@ include file="../frameHeader.jsp" %>

   	<div id="main">
       <form name="form" method="POST" action="/exerciser/register">
           <div class="flex-container2">
               <div id="subTitle">
                   <p class="subTitle">ȸ������</p>
               </div>
               <div id="loginBox">
                   <div class="box">
                       <input type="text" class="inputInfo" id="id" maxlength="30" name="id"
                       placeholder="���̵�"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '���̵�'">
                       <p class="alert validId1"></p>
                   </div>
                   <div class="box">
                       <input type="password" class="inputInfo" id="pswd1" maxlength="30" name="password"
                       placeholder="��й�ȣ"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '��й�ȣ'">
                       <p class="alert validpwd2"></p>
                   </div>
                   <div class="box">
                       <input type="text" class="inputInfo" maxlength="30" name="nickname"
                       placeholder="�г���"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '�г���'">
                   </div>
                   <div class="box">
                       <input type="text" class="inputInfo" maxlength="30" name="explanation"
                       placeholder="���ټҰ�"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '���ټҰ�'">
                   </div>
                   <div class="box">
                       <input type="text" class="inputInfo" maxlength="30" name="personality"
                       placeholder="����"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '����'">
                   </div>
                   <div class="box">
                   	<div class="inputS">�ַ� �ϴ� � ����</div>
                   	<select name="speciality" class="Stype">
                   		<option selected value="1">�ｺ</option>
                   		<option value="2">�䰡/�ʶ��׽�</option>
                   		<option value="3">����</option>
                   		<option value="4">��Ÿ</option>
                   	</select>
                   </div>
                   <div class="box">
                   	<div class="inputGender">����</div>
                   	<select name="gender" class="Gtype">
                   		<option selected value="F">��</option>
                   		<option value="M">��</option>
                   	</select>
                   </div>
                   <div class="inbodyBox">*InBody ����</div>
                   <div class="box">
                       <input type="text" class="inputInbody" maxlength="30" name="height"
                       placeholder="Ű"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = 'Ű'">
                   </div>
                   <div class="box">
                       <input type="text" class="inputInbody" maxlength="30" name="weight"
                       placeholder="������"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '������'">
                   </div>
                   <div class="box">
                       <input type="text" class="inputInbody" maxlength="30" name="skeletalmm"
                       placeholder="��ݱٷ�"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '��ݱٷ�'">
                   </div>
                   <div class="box">
                       <input type="text" class="inputInbody" maxlength="30" name="percentbodyfat"
                       placeholder="ü�����"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = 'ü�����'">
                   </div>
                   
                   <div class="box">
                       <input type="text" class="inputInbody" maxlength="30" name="visceralfat"
                       placeholder="�������淹��"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '�������淹��'">
                   </div>
                   <div class="box">
                       <input type="date" class="inputInbody" maxlength="30" name="measuredate"
                       placeholder="������¥"
                       onfocus="this.placeholder = ''" 
                       onblur="this.placeholder = '������¥'">
                   </div>
               </div>
               <div><button type="button" id="register_btn" onclick="userCreate();">ȸ������</button></div>
           </div>
       </form>
   </div>
            

<%@ include file="../frameFooter.jsp" %>