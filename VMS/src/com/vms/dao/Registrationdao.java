package com.vms.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.vms.db.Registrationdb;

public class Registrationdao{
	 public static boolean checkUser(String loginname,String loginpwd) 
     {
      boolean st =false;
      try{

	 //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");
      
 	 //creating connection with the database 
         Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/aslan","root","Root123!");
         PreparedStatement ps =con.prepareStatement
                             ("select * from login where username=? and password=?");
         ps.setString(1, loginname);
         ps.setString(2, loginpwd);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
        
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }   
public void RegisterDAO(String username, String password, String email) {
	//int result=0;
	PreparedStatement pstatement = null;
	Connection conn=null;
	Registrationdb dbCon = new Registrationdb();
	conn=dbCon.dBConnection();
	String Querry = "insert into Login (`username`,`password`,`email`) values (?,?,?)";
	try {
	pstatement=conn.prepareStatement(Querry);
	pstatement.setString(1, ""+username+"");
	pstatement.setString(2, ""+password+"");
	pstatement.setString(3, ""+email+"");
	int result=pstatement.executeUpdate();
	System.out.println("result="+result);
	if(result==1) {
		System.out.println("Successful");
	}else {
		System.out.println("failed");
	}
	conn.close();
	}catch(Exception e) {
		
	}		
	}

}
