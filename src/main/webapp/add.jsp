
<%@page import="kr.co.itcen.guestbook.dao.GuestbookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestbookVo"%>
<%
	request.setCharacterEncoding("utf-8");

	String Name = request.getParameter("name");
	String Password = request.getParameter("password");
	String Contents = request.getParameter("contents");

	GuestbookVo vo = new GuestbookVo();
	vo.setName(Name);
	vo.setPassword(Password);
	vo.setContents(Contents);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());
%>