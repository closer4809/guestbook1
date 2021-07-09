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
	
	
	<%
		for(int i=0; i<guestBookList.size(); i++){
	%>		
		<table>
			<tr>
				
				<td><%=guestBookList.get(i).getNo() %><td>
				<td><%=guestBookList.get(i).getName() %><td>
				<td>삭제<td>
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