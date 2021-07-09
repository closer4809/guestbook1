<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
	

   //파라미터값 추출(4개)
   
   String name = request.getParameter("name");
   String password = request.getParameter("password");
   String content = request.getParameter("content");
   //String regdate = request.getParameter("reg_date");
   
   //파라미터를 personVo만들기
   GuestBookVo guestBookVo = new GuestBookVo(name, password, content);
   
   GuestBookDao guestBookDao = new GuestBookDao();
   
   //dao에 update()를 이용해서 수정
   guestBookDao.personInsert(guestBookVo);
   
   
   //리스트 리다이렉트
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