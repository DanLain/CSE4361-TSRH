package dbmanager;

import java.sql.Statement;

public class getTestResult extends SQLCommand{
	private int myId;
	
	public getTestResult(int id)
	{
		myId = id;
	}
	
	public String composeQuery()
	{
		String query = "select * from test_result_record"+ " where test_result_requestid = '"+myId+"'";
		return query;
	}

}
