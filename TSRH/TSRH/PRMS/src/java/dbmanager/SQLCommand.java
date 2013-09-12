package dbmanager;

import java.sql.*;

public abstract class SQLCommand {
	                DBConfig cfg = new DBConfig();
                
                String ipAddress = cfg.getProperty("ipAddress");
                String dbPort = cfg.getProperty("mDbPort");
                String dbName = cfg.getProperty("mDbName");
                String dbUserName = cfg.getProperty("mDbUser");
                String dbPassword = cfg.getProperty("mDbPwds");
                
                String dbUrl = "jdbc:mysql://"+ipAddress+":"+dbPort+"/"+dbName;                
                
        protected Connection myConnection;
	protected ResultSet rs;
	//public abstract void openCon();
	public abstract String composeQuery();
	//public abstract String composeQuery(String s1, String s2, String s3, String s4, String s5, String s6, String s7, String s8, String s9, String s10, String s11, String s12);
	//public abstract ResultSet executeQuery(String queryString);
	
        public void openCon() 
	{
		try{
                Class.forName(cfg.getProperty("dbConnect"));
                
                myConnection = (com.mysql.jdbc.Connection) DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
			//throw new Exception("open connection failed");
		}
	}
	
	public void closeCon() 
	{
		try{
		myConnection.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			//throw new Exception("close connection failed");
		}
	}
	
	public ResultSet getResultSet()
	{
		return rs;
	}
	
	public ResultSet executeQuery(String query)
	{
		ResultSet rs = null;
		try{
			Statement myStatement = myConnection.createStatement();		    
		    rs = myStatement.executeQuery(query);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rs;
		
	}
	
	public ResultSet execute()
	{
		openCon();
		String query = composeQuery();		
		ResultSet rs = executeQuery(query);
                closeCon();
		return rs;
	}
}
