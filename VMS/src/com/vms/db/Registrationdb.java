package com.vms.db;

import java.sql.Connection;
import java.sql.DriverManager;


public class Registrationdb {
	public Connection dBConnection() {
		Connection connection = null;
		String DRIVER = "com.mysql.jdbc.Driver";
		String URL = "jdbc:mysql://enteprisevms.cnxhkbauy6wb.us-east-2.rds.amazonaws.com:3306/vms";
		String USER = "vms";
		String PASSWORD = "Vendor123";
		try {
			Class.forName(DRIVER);
			connection=DriverManager.getConnection(URL,USER,PASSWORD);
		}
		catch(Exception e) {
			System.out.println("DB Connection error:"+e.getMessage());
		
	}return connection;
		}}
