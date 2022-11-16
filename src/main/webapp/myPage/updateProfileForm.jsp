<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>updateProfileForm</title>
	<link rel="stylesheet" href="updateProfileForm.css">
	<link rel="stylesheet" href="../frame.css">
</head>

<%@ include file="../frameHeader.jsp" %>

				<div id="main">
					<form>
						<div class="flex-container2">
							<div id="subTitle">
								<p class="subTitle">____�� ���� ����</p>
							</div>
							<div id="loginBox">
								<div class="box">
									<input type="text" class="inputId" id="id" maxlength="30"
										name="id" placeholder="���̵�" onfocus="this.placeholder = ''"
										onblur="this.placeholder = '���̵�'">
									<p class="alert validId1"></p>
								</div>
								<div class="box">
									<input type="password" class="inputPW" id="pswd1"
										maxlength="30" name="password" placeholder="��й�ȣ"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = '��й�ȣ'">
									<p class="alert validpwd2"></p>
								</div>
								<div class="box">
									<input type="text" class="inputPW" maxlength="30"
										name="nickname" placeholder="�г���"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = '�г���'">
								</div>
								<div class="box">
									<input type="text" class="inputPW" maxlength="30"
										name="explanation" placeholder="���ټҰ�"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = '���ټҰ�'">
								</div>
								<div class="box">
									<input type="text" class="inputPW" maxlength="30"
										name="personality" placeholder="����"
										onfocus="this.placeholder = ''"
										onblur="this.placeholder = '����'">
								</div>

								<div class="box">
									<p>Do you want to use Matching Service?</p>
									<input type="radio" id="t" name="t" value="1" checked> 
									yes<br>
									<input type="radio" id="f" name="f" value="0"> 
									no<br>
								</div>

							</div>
							<div>
								<button type="button" id="update_btn" onclick="update_check();">����
									����</button>
							</div>
						</div>
					</form>
				</div>
				
				
<%@ include file="../frameFooter.jsp" %>