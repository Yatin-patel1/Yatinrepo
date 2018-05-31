<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
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
				<%
					Connection con=null;
					PreparedStatement pst=null;
					Statement st=null;
					ResultSet rs=null;
					
				 try{
				  Class.forName("com.mysql.jdbc.Driver");
				  con=DriverManager.getConnection("jdbc:mysql://enteprisevms.cnxhkbauy6wb.us-east-2.rds.amazonaws.com:3306/vms","vms","Vendor123");
				 
				  String status=request.getParameter("status");
				  String pid=request.getParameter("pid");
				 
				  
				    String query="Update  projectdet set status=?";
				  pst=con.prepareStatement(query);
							
				  pst.setString(1,status);
				  int eff=pst.executeUpdate();
				  if(eff>0) out.println("<body><center><h1><font face=tahoma color=gray>Project Status  Updated Successfully .<BR><BR></h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;");
				  else out.println("<body bgcolor=gray><Center><h1><font face=tahoma color=ivory>Failed to Add.<BR><BR>Please Enter Proper Data .</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;");
				  } catch(Exception e) {
					out.println("<body bgcolor=gray><center><h1><font face=tahoma color=ivory>Transaction Failed While Updating Ur Project .Due To Error:<BR>"+e+"</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>");
				  }
				  %>
				  </table><BR>
			
		</td></tr></table>
</body>
</html>