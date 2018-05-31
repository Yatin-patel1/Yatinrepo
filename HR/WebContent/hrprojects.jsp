<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalidsession");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table width="780" align=center cellspacing=0 border="4" cellpadding=0>
<jsp:include page="hr_transactions.jsp" /><br>
	<tr><td>
		<table width="600" height="300"align=center cellspacing=0 border="0" cellpadding=0>
		<tr><td>
			<fieldset id="fieldhead">
			<legend>Project Status</legend><BR>
			<table align=center cellspacing=1 cellpadding=3>
			<form method=post action="projectstatusupdate.jsp">
				<center>
				
				<tr><Td>Project Id:</td><TD><input name="id"></td>
				<Td align=center><button type=submit accesskey="G"><u>G</u>et Details</button></td></tr>
			</form>
			</table>
			</fieldset>
		</td></tr></table>
	</td></tr>
</table>
</body>
</html>