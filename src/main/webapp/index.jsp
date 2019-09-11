<%@page import="java.util.List"%>
<%@page import="kr.co.itcen.guestbook.dao.GuestbookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = new GuestbookDao().getList();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="<%=request.getContextPath() %>/add.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="contents" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form> 
	<br>
	<%
		for(GuestbookVo vo : list) {
	%>
	<table width=510 border=1>
		<tr>
			<td align=center>No</td>
			<td><%=vo.getNo() %></td>
		</tr>
		<tr>
			<td align=center>Name</td>
			<td><%=vo.getName() %></td>
		</tr>
		<tr>
			<td aligh=center>Contents</td>
			<td><%=vo.getContents() %></td>
		</tr>
		<tr>
			<td align=center>Date</td>
			<td><%=vo.getReg_date() %></td>
			<td><a href="deleteform.jsp?no=10">삭제</a></td>
		</tr>
		
	</form>
		<br>
		<%
			}
		%>
	</table>
</body>
</html>