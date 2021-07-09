<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>




<%
GuestBookDao guestBookDao = new GuestBookDao();
	List<GuestBookVo> guestBookList = guestBookDao.getGuestBookList();

	System.out.println(guestBookList.toString());
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	
	<h1>방명록입니다.<h1>
	<form action="./add.jsp" method="get">
		이름  <input type="text" name="name" value="">
		비밀번호 <input type="text" name="password" value=""><br>
		<input type="text" name="content" value=""><br>
		<button type="submit">확인</button>
		<% System.out.println("asdfsafsafa");%>
	</form>
	
	
	<%
		for(int i=0; i<guestBookList.size(); i++){
	%>		
		<table border="1">
			<tr>
				<td><%=guestBookList.get(i).getNo() %><td>
				<td><%=guestBookList.get(i).getName() %><td>
				<td><%=guestBookList.get(i).getRegdate()%><td>
				<td><a href="./deleteForm.jsp?no=<%=guestBookList.get(i).getNo() %>">삭제</a><td>
			</tr>
			<tr>
				
				<td><%=guestBookList.get(i).getContent() %><td>
			</tr>
		</table>
	<% 
		}
	%>

	
	

</body>
</html>