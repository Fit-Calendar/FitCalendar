<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>recordForm</title>
<link href="recordForm.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="flex-container">
		<div id="wrapper">
			<!-- header -->
			<div class="header">

				<!-- �α���, ȸ������ -->
				<div id="userMenu">
					<ul class="list_menu">
						<li class="menu menu_login"><a class="link link_login"
							href="../html/login.html">�α���</a></li>
						<li class="menu menu_join"><a class="link link_join" href="#">ȸ������</a>
						</li>
					</ul>
				</div>

				<!-- �ΰ� -->
				<div id="headerLogo" class="layout-wrapper">
					<h1 class="logo">
						<a class="link_main" href="../html/main.html">
							<p class="logo">Fit Calendar</p>
						</a>
					</h1>
				</div>

				<!-- �޴��� -->
				<div class="gnb_main">
					<ul class="gnb">
						<li class="menu1"><a href="" class="link all">���� ���</a>
						<li class="menu2"><a href="#" class="link new">� ���</a></li>
						<li class="menu3"><a href="#" class="link best">Fit Mate</a>
						</li>
						<li class="menu4"><a href="#" class="link bargain">��õ/��Ī</a>
						</li>
						<li class="menu5"><a href="#" class="link event">����������</a></li>
					</ul>
				</div>

			</div>

			<!-- container -->
			<!-- recordForm �κ� -->
			<div class="container">
				<form name="form" method="POST" action="<c:url value='/myRecord/write'/>">
					<div class="recordForm">
						<h1 style="font-size: 21px;">_________���� � ����</h1>
					</div>
					<div class="name">
						<input type="text" name="title" placeholder="������ �Է��� �ּ���.">
					</div>
					<div class="name">
						<input type="date" name="creationdate">
					</div>
					<div class="name">
						<input type="text" name="totaltime"
							placeholder="�� ��ð��� �Է��� �ּ���. (��: 3)">
					</div>
					<div class="line">
						<hr>
					</div>
					<div class="area">
						<select id="category" name="category">
							<option selected>������ �����ϼ���.</option>
							<option>�ｺ</option>
							<option>�ʶ��׽�</option>
							<option>�䰡</option>
							<option>����</option>
							<option>��Ÿ</option>
						</select>
					</div>
					<div class="name">
						<textarea rows="5" cols="115" name="routine"
							aria-label="With textarea" placeholder="� ��ƾ�� �Է��ϼ���."></textarea>
					</div>
					<div class="name">
						<textarea rows="5" cols="115" name="diet"
							aria-label="With textarea" placeholder="�Ĵ��� �Է��ϼ���."></textarea>
					</div>
					<div class="name">
						<input type="file" name="photo">
					</div>
					<div class="name">
						<select name="shareOption">
							<option selected>��� ������ �Ͻðڽ��ϱ�?</option>
							<option>��</option>
							<option>�ƴϿ�</option>
						</select>
					</div>
					<div class="button">
						<button type="button" onclick="signUpCheck()">����ϱ�</button>
					</div>
				</form>
			</div>
		</div>

		<!-- footer -->
		<footer>
			<div class="container">
				<table>
					<div class="row justify-content-center">
						<div class="col-sm-4 col-md-3 item">
							<td>
								<p id="fit_footer">Fit Calendar</p> <a href="#">��������ó����ħ</a>&nbsp;<a
								href="#">�̿���</a>&nbsp;<a href="#">���޹���</a>
								<p id="from">��������&nbsp;&nbsp;�����ͺ��̽����α׷���</p>
							</td>
						</div>
						<div class="col-sm-4 col-md-3 item">
							<td>
								<ul>
									<p id="info">
										���񽺸�: Fit Calendar / ������ ���ο� ��ä�� ��ȣ�� / 8���� <br>�������� ��ȣ
										å����: ��ȣ�� / Email: hojeong2747@gmail.com
									</p>
									<p>COPYRIGHT (C) ALL RIGHTS RESERVED</p>
								</ul>
							</td>
						</div>
					</div>
				</table>
			</div>
		</footer>
	</div>
</body>
</html>