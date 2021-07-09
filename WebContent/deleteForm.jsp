<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>

<%
	GuestBookDao guestBookDao = new GuestBookDao();
   
	int no1 = Integer.parseInt(request.getParameter("no")); 	

	
	
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="./delete.jsp" method="get">
			비밀번호<input type="text" name="passward" value=""><br>
			<input type = "hidden" name="no" value="<%=no1 %>"> 
			<button type="submit">등록</button>
		</form>
	
	</div>

</body>
</html>