<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>recordForm</title>
	<link rel="stylesheet" href="<c:url value='/css/frame.css' />" type="text/css">
</head>
<body>
	<%
		int cnt = Integer.parseInt((String)request.getAttribute("cnt"));	// ���� �ۼ��� �� Record ���� Ȯ��
		int pageSize = 3;		// �� �������� ��µ� �� �� 
		
		String pageNum = request.getParameter("pageNum");		// �� ������ ���� ����
		if(pageNum == null){
			pageNum = "1";
		}
		
		int currentPage = Integer.parseInt(pageNum);		
		int startRow = (currentPage - 1) * pageSize + 1;		// ù���ȣ�� ���
		
		
		// https://heezit.tistory.com/84?category=965695
		// �̰� ���� ���� �ۼ��սô���
	%>
</body>
</html>