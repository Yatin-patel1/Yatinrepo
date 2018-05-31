<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="./css/styles.css" rel="stylesheet">
</head>
<body>
<%
if(session.getValue("login")==null) {
out.println("<html xmlns=\"\"><head>");
out.println("<meta http-equiv=\"page-enter\" content=\"blendTrans(duration=1)\">");
out.println("<meta http-equiv=\"Pragma\" content=\"no-cache\">");
out.println("<meta http-equiv=\"expires\" content=\"0\">");
out.println("<title>RESOURCE MANAGEMENT SYSTEM</title>");
out.println("</head><body>");
out.println("<table width=780 cellspacing=0 cellpadding=0 border=0 align=center>"); 
out.println("<BR><BR><BR><BR><Center><p>Invalid Session. Please Re-Login</p><br><a href=\"RMShome.htm\">Please Relogin Here</a>");
return;
}
session.invalidate();
response.sendRedirect("RMShome.htm");
%>
</body>
</html>