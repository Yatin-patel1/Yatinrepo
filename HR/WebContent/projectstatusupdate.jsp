<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="./css/styles.css" rel="stylesheet">
</head>
<body>
<jsp:include page="hr_transactions.jsp" />
<p><b>Project Details<hr color="#008000" size="4">

<%

	Connection con=null;
	PreparedStatement stmt=null;
	Statement st=null;
	ResultSet rs=null;
	%>
	<fieldset id="fieldhead">
	<legend>View Project Details</legend><BR>
	<%
    try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://enteprisevms.cnxhkbauy6wb.us-east-2.rds.amazonaws.com:3306/vms","vms","Vendor123");
		if(session.getValue("login")==null) response.sendRedirect("Emall.htm?invalid");	
    st=con.createStatement();
	String id=request.getParameter("id");
	rs=st.executeQuery("Select pid,client_name,project_name,platform,duration,budget,enddate,status from projectdet where pid='"+id+"'");
	%>
	<form action="updatestatus.jsp" method=post>
	<%
	while(rs.next()) {
		String pid=rs.getString(1);
		String clientname=rs.getString(2);
		String projectname=rs.getString(3);
		String platform=rs.getString(4);
		int duration=Integer.parseInt(rs.getString(5));
		int budget=Integer.parseInt(rs.getString(6));
		String enddate=rs.getString(7);
		String status=rs.getString(8);
		
		out.println("<table width=80% align=center cellspacing=1 cellpadding=3><tr><td width='30%'>Project ID</td><td name='pid' width='30%'><font color=gray>"+pid+"</font></td></tr><tr><td width='30%'>Client Name</td><td><font color=gray>"+clientname+"</font></td></tr><tr><td width='30%'>Project Name</td><td width='30%'><font color=gray>"+projectname+"</font></td></tr><tr><td width='30%'>Platform</td><td width='30%'><font color=gray>"+platform+"</font></td></tr><tr><td width='30%'>Duration</td><td width='30%'><font color=gray>"+duration+"</font></td></tr><tr><td width='30%'>Budget</td><td width='30%'><font color=gray>"+budget+"</font></td></tr><tr><td width='30%'>End Date</td><td width='30%'><font color=gray>"+enddate+"</font></td></tr><tr><td width='30%'>Status</td><td width='30%' style='color:gray'><select name=status><option>      </option>  <option>not Assigned</option> <option>Not Yet</option> <option>Completed</option></select></td></tr>");
		out.println("<Td colspan=2 align=center><button type=submit accesskey='U'><u>U</u>pdate Details</button></td></tr></table>");
		%>
		</Form>
		<%
		}
}catch(Exception e){e.printStackTrace();}

%></fieldset>

</body>
</html>