package dbmanager;

import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;

public class InsertTestRequest extends SQLCommand{
	private String myId;
	private String[] myParams;
	
	public InsertTestRequest(String[]params)
	{
		myParams = params;
	}
	
	public String composeQuery()
	{
		String query = "insert into test_request_record(patientid_testrequest, testname, testrequestername, testrequestdate, expectedresultdate, expectedresult, istesttaken, istestresultsubmitted, remindernote, reminderdate, comments, userid) values('"+myParams[0]+"','"+myParams[1]+"','"+myParams[2]+"','"+myParams[3]+"','"+myParams[4]+"','"+myParams[5]+"','"+myParams[6]+"','"+myParams[7]+"','"+myParams[8]+"','"+myParams[9]+"','"+myParams[10]+"','"+myParams[11]+"');";
		return query;
	}
	
	public ResultSet executeQuery(String query)
	{
		try{
			openCon();
		    Statement st=myConnection.createStatement();
		    int i =st.executeUpdate(composeQuery());
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

        public static void main(String[] args)
        {
            String[] param = new String[]{"1","tesrt","tesrt","1990-10-01","2011-10-10","tesrt","tesrt","tesrt","tesrt","2012-10-10","tesrt","tesrt"};
            
            InsertTestRequest insert = new InsertTestRequest(param);
            
            insert.executeQuery(insert.composeQuery());
        }
}
