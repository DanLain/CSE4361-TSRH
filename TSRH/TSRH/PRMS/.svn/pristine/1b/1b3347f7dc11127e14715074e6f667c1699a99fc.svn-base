package dbmanager;

import java.sql.*;

public class getTestRequest extends SQLCommand{
	private String myId;
	
	public getTestRequest(String id)
	{
		myId = id;
	}
	
	public String composeQuery()
	{
		String query = "select * from test_request_record"+ " where patientid_testrequest = '"+myId+"'";
		return query;
	}
	
	public ResultSet executeQuery(String query)
	{
		ResultSet rs = null;
		try{
			openCon();
			Statement myStatement = myConnection.createStatement();		    
		    rs = myStatement.executeQuery(query);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return rs;
		
	}
	

}
