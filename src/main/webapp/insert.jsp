<%@page import="kr.co.itcen.guestbook1.dao.GuestBookDao"%>
<%@page import="kr.co.itcen.guestbook1.vo.GuestBookVo"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String writer = request.getParameter("writer");
	String password = request.getParameter("password");
	String text = request.getParameter("text");
	String registerdate = request.getParameter("registerdate");
	
	// TODO Auto-generated method stub
	GuestBookVo vo = new GuestBookVo();
	
	vo.setWriter(writer);
	vo.setPassword(password);
	vo.setText(text);
	vo.setRegisterdate(registerdate);

	new GuestBookDao().insert(vo);
	

	response.sendRedirect(request.getContextPath() + "/index.jsp");
%>
