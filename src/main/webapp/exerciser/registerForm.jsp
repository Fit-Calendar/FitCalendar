<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>ȸ������</title>
    <link rel="stylesheet" href="registerForm.css">
</head>
<body>
	<div class="flex-container">
        <div id="wrapper">
            <!-- header -->
            <div class="header">
                
                <!-- �α���, ȸ������ -->
                <div id="userMenu">
                    <ul class="list_menu">
                        <li class="menu menu_login">
                            <a class="link link_login" href="../html/login.html">�α���</a>
                        </li>
                        <li class="menu menu_join">
                            <a class="link link_join" href="#">ȸ������</a>
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
                        <li class="menu1">
                            <a href="" class="link all" >���� ���</a>
                        <li class="menu2">
                            <a href="#" class="link new">� ���</a>
                        </li>
                        <li class="menu3">
                            <a href="#" class="link best">Fit Mate</a>
                        </li>
                        <li class="menu4">
                            <a href="#" class="link bargain">��õ/��Ī</a>
                        </li>
                        <li class="menu5">
                            <a href="#" class="link event">����������</a>
                        </li>
                    </ul>
                </div>
                
            </div>
            <!-- container -->
            <div class="container">
             	<div id="main">
                 <form>
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
            </div>
        </div>
        
        <!-- footer -->
        <footer>
            <div class="container">
                <table>
                    <div class="row justify-content-center">
                        <div class="col-sm-4 col-md-3 item">
                            <td>
                                <p id="fit_footer">Fit Calendar</p>
                                <a href="#">��������ó����ħ</a>&nbsp;<a href="#">�̿���</a>&nbsp;<a href="#">���޹���</a>
                                <p id="from">��������&nbsp;&nbsp;�����ͺ��̽����α׷���</p></td>
                        </div>
                        <div class="col-sm-4 col-md-3 item">
                            <td>
                                <ul>
                                    <p id="info">
                                    ���񽺸�: Fit Calendar / ������ ���ο� ��ä�� ��ȣ�� / 8����
                                    <br>�������� ��ȣ å����: ��ȣ�� / Email: hojeong2747@gmail.com</p>
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