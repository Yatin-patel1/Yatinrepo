<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalidsession");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table cellSpacing=0 cellPadding=0 border=0px bordercolor=#999966>
		<tr><td>
		<jsp:include page="rm_transactions.jsp" /><BR>
			
	</td></tr></table>
</body>
</html>