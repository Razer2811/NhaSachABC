<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Kiem tra</title>
</head>
<body>
<%
	String un = request.getParameter("txtun");
	String pass = request.getParameter("txtpass");
	if(un.equals("minhkhanh")&&pass.equals("123")){
		session.setAttribute("un", un);
		response.sendRedirect("tc.jsp");
	}else
	response.sendRedirect("dangnhap.jsp?tb=Dang nhap sai");
%>
</body>
</html>