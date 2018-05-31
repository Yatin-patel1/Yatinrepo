<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table width="780" align=center cellspacing=0 border="4" cellpadding=0>
<jsp:include page="sales_transactions.jsp" /><br>
	<tr><td>
		<table width="600" height="300"align=center cellspacing=0 border="0" cellpadding=0>
		<tr><td>
			<fieldset id="fieldhead">
			<legend>Add New Project</legend><BR>
				<%
					Connection con=null;
					PreparedStatement pst=null;
					Statement st=null;
					ResultSet rs=null;
					
				 try{
				  Class.forName("com.mysql.jdbc.Driver");
				  con=DriverManager.getConnection("jdbc:mysql://enteprisevms.cnxhkbauy6wb.us-east-2.rds.amazonaws.com:3306/vms","vms","Vendor123");
				  String cname=request.getParameter("cname");
				  String pid=request.getParameter("pid");
				  String pname=request.getParameter("pname");
				  String platform=request.getParameter("Platform");
				  String duration=request.getParameter("duration");
				  String date=request.getParameter("dd");
				  String mon=request.getParameter("mm");
				  String year=request.getParameter("yyyy");
				  String enddate=date+"-"+mon+"-"+year;
				  String budget=request.getParameter("budget");
				  if(cname.length()<1||pname.length()<1) 
						{
						out.println("<center><p>You r trying to enter the empty data which is not allowed</p></center>");
						return;
						}
				  float bget=Float.parseFloat(request.getParameter("budget"));
				  int dur=Integer.parseInt(request.getParameter("duration"));
				  String getid="SELECT COUNT(pid) from projectdet";
				  String query="insert into projectdet values(?,?,?,?,?,?,?,?)";
				  pst=con.prepareStatement(query);
				 /* rs=st.executeQuery(getid);
				  int val=0;
					if(rs.next()) 
					{ 
						val=Integer.parseInt(rs.getString(1));
						if (val>0)
							{
							val+=1;
							}
						else
						{
							val=1;
						}
					}
				String pid="p"+val;
					*/
				
				  pst.setString(1,pid);	
				  pst.setString(2,cname);
				  pst.setString(3,pname);
				  pst.setString(4,platform);
				  pst.setInt(5,dur);
				  pst.setFloat(6,bget);
				  pst.setString(7,enddate);
				  pst.setString(8,"not assigned");
				  int eff=pst.executeUpdate();
				  if(eff>0) out.println("<body bgcolor=gray><center><h1><font face=tahoma color=ivory>Project Added Successfully .<BR><BR></h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");
				  else out.println("<body bgcolor=gray><Center><h1><font face=tahoma color=ivory>Failed to Add.<BR><BR>Please Enter Proper Data .</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>&nbsp;&nbsp;<a href=\"javascript:parent.close()\">Skip From This Page</a>");
				  } catch(Exception e) {
					out.println("<body bgcolor=gray><center><h1><font face=tahoma color=ivory>Transaction Failed While Adding Ur Project .Due To Error:<BR>"+e+"</h1><br><br><center><a href=\"javascript:history.back()\">Continue</a>");
				  }
				  %></fieldset>
				  </table><BR>
			
		</td></tr></table>
	

</body>
</html>