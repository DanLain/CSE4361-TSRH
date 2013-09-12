package dbmanager;

import java.sql.*;

public class DBManager {
		
	//private static DBManager myDBManager = null;
	private static DBType dbType = DBType.SQL;
	private DBAccess myAccess;
	
	
	/*public static DBManager getInstance(){

		if(myDBManager == null){
			myDBManager = new DBManager();

		}
		return myDBManager;
	}
	*/
	
	public DBManager(){
		switch(dbType)
		{
		case SQL: myAccess = new SQLAccess();break;
		default:System.out.println("No database!");

		}
		
	}	
	
	public DBType getDbType() {
		return dbType;
	}

	public void setDbType(DBType dbType) {
		this.dbType = dbType;
	}

	public void makeConnection()
	{
		try{
		myAccess.makeConnection();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void closeConnection() 
	{
		try{
		myAccess.closeConnection();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public DBAccess getDBAccess()
	{
		return myAccess;
	}
	
	public ResultSet retrieveInfo(String queryString) 
	{
		ResultSet rs = null;
		try{
		rs = myAccess.retrieveInfo(queryString);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet getTestRequest(String id)
	{
		return myAccess.getTestRequest(id);
	}
	
	public ResultSet getTestResult(int id)
	{
		return myAccess.getTestResult(id);
	}
	
	public ResultSet getTestConsultation(String id)
	{
		return myAccess.getTestConsultation(id);
	}
	
	public void insertTestRequest(String[] params)
	{
		myAccess.insertTestRequest(params);
	}
	
	public void updateTestRequest(int id, String[] param)
	{
		myAccess.updateTestRequest(id, param);
	}
	
}
