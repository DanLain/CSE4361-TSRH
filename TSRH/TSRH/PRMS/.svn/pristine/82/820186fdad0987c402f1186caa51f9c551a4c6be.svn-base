package dbmanager;

import java.sql.ResultSet;
import java.sql.Statement;

public class InsertTestRequest extends SQLCommand{
	private String myId;
	private String[] myParams;
	
	public InsertTestRequest(String[]params)
	{
		myParams = (String[])params.clone();
	}
	
	public String composeQuery()
	{
		String query = "insert into test_request_record(patientid_testrequest, testname, testrequestername, testrequestdate, expectedresultdate,stafftobeinformed,datetoinformstaff,otherstobeinformed,datetoinformothers, comments, userid, testrecordlink) values('"+myParams[0]+"','"+myParams[1]+"','"+myParams[2]+"',STR_TO_DATE('"+myParams[3]+"','%Y-%m-%d'),STR_TO_DATE('"+myParams[4]+"','%Y-%m-%d'),'"+myParams[5]+"',STR_TO_DATE('"+myParams[6]+"','%Y-%m-%d'),'"+myParams[7]+"',STR_TO_DATE('"+myParams[8]+"','%Y-%m-%d'),'"+myParams[10]+"','"+myParams[11]+"','"+myParams[12]+"');";
                //System.out.println("QUERY IS....."+query);
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

        public static void main(String[] args)
        {
            String[] param = new String[]{"1","tesrt","tesrt","1990-10-01","2011-10-10","tesrt","2012-10-10","tesrt","2012-10-10","tesrt","tesrt"};
            
            InsertTestRequest insert = new InsertTestRequest(param);
            
            insert.executeQuery(insert.composeQuery());
        }
}
