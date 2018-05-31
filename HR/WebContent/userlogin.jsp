<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%! String userid,password;
Connection con;
Statement st;
ResultSet rs;
%>

<%
	try
		{
			userid=request.getParameter("userid");
			password=request.getParameter("password");
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://enteprisevms.cnxhkbauy6wb.us-east-2.rds.amazonaws.com:3306/vms","vms","Vendor123");
			st=con.createStatement();
			String cmd="Select * from employee where empid='"+userid+"' and pwd='"+password+"'";
			rs=st.executeQuery(cmd);
			session.setAttribute("login",userid);
		if(rs.next())
			{
			
				%>
										<jsp:forward page="<%= rs.getString("emp_home.jsp") %>"/>
						
				<%
				
	        }
			 
	    		 
			else 
				out.println("<body bgcolor=gray><p><font face=tahoma color=maroon>No Such user Exist .<BR><BR>Please Check Your ID and Password u supplied is Correct or Not</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");
				 
				
		}
		
	 catch(Exception e)
	    {
			out.println("<link rel=stylesheet href='css/styles.css'><body bgcolor=ivory><h1>Error Occured! While Processing Ur Transaction</font></h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");
		}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>