<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath() %>/add.jsp" method="post">
	    No: <input type="text" name="no" value=""> <br>
	    Name: <input type="text" name="name" value="" ><br>
	    Contents: <input type="text" name="contents" value=""><br>
	    Reg_date: <input type="text" name="reg_date" value=""><br>
	    <input type="submit" value="등록">
	</form>
	<br>
	<p>
		<a href='<%=request.getContextPath() %>'>리스트 바로가기</a>
	</p>
</body>
</html>