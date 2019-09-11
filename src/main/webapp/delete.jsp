<%@page import="kr.co.itcen.guestbook1.dao.GuestBookDao"%>
<%@page import="kr.co.itcen.guestbook1.vo.GuestBookVo"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String no = request.getParameter("id");
	String password = request.getParameter("password");
	// TODO Auto-generated method stub
	GuestBookVo vo = new GuestBookVo();
	

	
	new GuestBookDao().set_delete(no, password);

	response.sendRedirect(request.getContextPath() + "/index.jsp");
%>
