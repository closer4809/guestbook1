<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>

<%
	
	GuestBookDao guestBookDao = new GuestBookDao();

	int no = Integer.parseInt(request.getParameter("no"));            
	String pw = request.getParameter("passward");
	
	guestBookDao.guestBookDelete(no, pw);
	
	
	
	
	
	
	
	
    //리다이렉트(리스트요청)
	response.sendRedirect("./addList.jsp");
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>