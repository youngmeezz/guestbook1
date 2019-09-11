<%@page import="java.util.List"%>
<%@page import="kr.co.itcen.guestbook1.vo.GuestBookVo"%>
<%@page import="kr.co.itcen.guestbook1.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	List<GuestBookVo> list = new GuestBookDao().getList();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="./insert.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="writer"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	
	<br>
	<table width=510 border=1>
	<% for(GuestBookVo vo : list) {%>
		<tr>
			<td><%=vo.getNo() %></td>
			<td><%=vo.getWriter() %></td>
			<td><%=vo.getRegisterdate() %></td>
			<td><a href="deleteform.jsp?no=<%=vo.getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4>안녕하세요</td>
		</tr>
		<%} %>
	</table>
</body>
</html>