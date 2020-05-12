package com.servlet.dao;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class sqlServerCon {
	public static void runJob(String serverName, String port , String jobName, String  Usern, String pass  ) throws SQLException, ClassNotFoundException {
	    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	    String sqlSerDriver = "jdbc:sqlserver://%s:%s" ;
	    
	    String Url = String.format(sqlSerDriver, serverName, port);
	    Connection conn = DriverManager.getConnection(Url, Usern, pass);
	    String jobExString = "EXEC msdb.dbo.sp_start_job N'%s'";
	    String jobExcute = String.format(jobExString, jobName);
	    CallableStatement cs = conn.prepareCall(jobExcute);
	    cs.execute();
	    System.out.println("Job started..");
	} 
}

