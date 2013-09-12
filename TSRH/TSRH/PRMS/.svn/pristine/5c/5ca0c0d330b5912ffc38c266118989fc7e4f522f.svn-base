package dbmanager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class SQLAccess implements DBAccess{
	private static String connectStr = "jdbc:mysql://localhost:3306/alertsystem";
	private static String userName = "root";
	private static String passWord = "1234";
	private Connection myConnection = null;
	private Statement myStatement = null;
	
	public void makeConnection() throws Exception
	{
		try{
		Class.forName("com.mysql.jdbc.Driver");
		myConnection = DriverManager.getConnection(connectStr, userName, passWord);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			throw new Exception("open connection failed");
		}
	}
	
	public void closeConnection() throws Exception
	{
		if(myConnection!=null){
		try{
		myConnection.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			throw new Exception("close connection failed");
		}
		}
	}
	
	public ResultSet retrieveInfo(String queryString) throws Exception
	{
		ResultSet rs = null;
		try{
			myStatement=myConnection.createStatement();		    
		    rs= myStatement.executeQuery(queryString);
		    //st.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			throw new Exception("Retrieve info from running query failed");
		}
		
		return rs;
	}
	 
	
	public ResultSet getTestRequest(String id)
	{
		SQLCommand getTestRequest = new getTestRequest(id);
		return getTestRequest.execute();
		
	}

	public ResultSet getTestResult(int id)
	{
		SQLCommand getTestResult = new getTestResult(id);
		return getTestResult.execute();
		
	}
	
	public ResultSet getTestConsultation(String id)
	{
		SQLCommand getTestConsultation = new getTestConsultation(id);
		return getTestConsultation.execute();
		
	}
	
	public void insertTestRequest(String[] param)
	{
		SQLCommand command = new InsertTestRequest(param);
		command.execute();
	}
	
	public void  updateTestRequest(int id, String[] param)
	{
		SQLCommand command = new UpdateTestRequest(id, param);
		command.execute();	
	}
	
	public String getConStr()
	{
		return connectStr;
	}
	
	public String getUserName()
	{
		return userName;
	}
	
	public String getPwd()
	{
		return passWord;
	}
	
	public void setConStr(String s)
	{
		connectStr = s;
	}
	
	public void setUserName(String s)
	{
		userName = s;
	}
	
	public void setPwd(String s)
	{
		passWord = s;
	}
}
