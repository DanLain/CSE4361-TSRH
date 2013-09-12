package dbmanager;

import java.sql.ResultSet;
import java.sql.Statement;

public class UpdateTestRequest extends SQLCommand{
	private int myId;
	private String[] myParams;
	
	public UpdateTestRequest(int id, String[] params)
	{
		myId = id;
		myParams = (String[])params.clone();
	}
	
	public String composeQuery()
	{
		//String query = "update test_request_record set testname ='"+myParams[0]+"', testrequestername = '"+myParams[1]+"',testrequestdate='"+myParams[2]+"',expectedresultdate='"+myParams[3]+"',expectedresult='"+myParams[4]+"',istesttaken='"+myParams[5]+"',istestresultsubmitted = '"+myParams[6]+"', remindernote = '"+myParams[7]+"',reminderdate = '"+myParams[8]+"',comments = '"+myParams[9]+"',userid = '"+myParams[10]+"' where testrequestid="+myId;
                String query = "update test_request_record set testname ='"+myParams[0]+"', testrequestername = '"+myParams[1]+"',testrequestdate=STR_TO_DATE('"+myParams[2]+"','%Y-%m-%d'),expectedresultdate=STR_TO_DATE('"+myParams[3]+"','%Y-%m-%d'),expectedresult='"+myParams[4]+"',istesttaken='"+myParams[5]+"',istestresultsubmitted = '"+myParams[6]+"', comments = '"+myParams[9]+"',userid = '"+myParams[10]+"' where testrequestid="+myId;
		System.out.println(query);
		return query;
	}
	
	public ResultSet executeQuery(String query)
	{
		try
                {
                    openCon();
		    Statement st = myConnection.createStatement();
		    st.executeUpdate(composeQuery());
		}
		catch (Exception e)
		{
                    e.printStackTrace();
		}
                finally
                {
                    closeCon();
                }
                
		return null;
        }
}
