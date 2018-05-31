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
<jsp:include page="rm_transactions.jsp" /><br>
	<tr><td>
		<table width="600" height="300"align=center cellspacing=0 border="0" cellpadding=0>
			<tr><td>
				<fieldset id="fieldhead">
				<legend>Work Assignment</legend><BR>
					<%@ page import="java.sql.*"%>
				<%
					Connection con=null;
					PreparedStatement pst=null;
					Statement st=null;
					ResultSet rs=null;
					try	
					{
						String pid=request.getParameter("pid");
						String project_name=request.getParameter("project_name");
						String modulename=request.getParameter("modulename");
						String description=request.getParameter("description");
						String empid=request.getParameter("empid");
						String date=request.getParameter("dd");
						String mon=request.getParameter("mm");
						String year=request.getParameter("yyyy");
						String submitdate=date+"-"+mon+"-"+year;
						if(session.getValue("login")==null) response.sendRedirect("RMShome.htm?invalid");	

						Class.forName("com.mysql.jdbc.Driver");
						con=DriverManager.getConnection("jdbc:mysql://enteprisevms.cnxhkbauy6wb.us-east-2.rds.amazonaws.com:3306/vms","vms","Vendor123");
						Statement stmt=con.createStatement();
						
						pst=con.prepareStatement("insert into workassign values  (?,?,?,?,?,?,?,?)");
					
						pst.setString(1,pid);
						pst.setString(2,project_name);
						pst.setString(3,modulename);				
						pst.setString(4,description);
						pst.setString(5,empid);
						pst.setString(6,submitdate);	
						pst.setString(7,"null");
						pst.setString(8,"assigned");
							
								
						int eff=pst.executeUpdate();		
						
						if(eff>0 )
							out.println(" Work Assign is Successful<BR><center><a href=\"javascript:history.back()\">Continue</a>");
				
						else
							out.println("<CENTER><b><u>Failed To Assign Work<BR><center><a href=\"javascript:history.back()\">Continue</a>");
					}
								
					catch(Exception e)	
						{
					   	String msgs=" ";
						out.println("<body bgcolor=ivory><h1>Error Occured! While Processing Ur Transaction</font></h1><P>"+msgs+"</p><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;"+e);
						}
				%>
						
						
					
				</fieldset>
			</td></tr>
		</table>
	</td></tr>
</table>

</body>
</html>