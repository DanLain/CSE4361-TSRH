/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.mapper;

import edu.uta.tsrh.model.Tests;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

/**
 *
 * @author Arjun Radhakrishnan
 */
public class ReportTestMapper implements Mapper{

    public ReportTestMapper()
    {}
    
    public ArrayList<Tests> map(ResultSet resultSet)
    {
        
        ArrayList<Tests> testList = new ArrayList<Tests>();                
        try
        {  
            while (resultSet.next())
            {
                Tests testFile = new Tests();
                
                testFile.setId((String) resultSet.getString("patientid_testrequest")); 
                testFile.setPatientId((String) resultSet.getString("patientid"));  
                testFile.setPatientName((String) resultSet.getString("firstname")+" "+(String) resultSet.getString("lastname"));  
                testFile.setTestName((String)resultSet.getString("testname"));
                testFile.setTestRequesterName((String)resultSet.getString("testrequestername"));
                testFile.setUserId((String) resultSet.getString("userid"));
                testFile.setStaffName((String)resultSet.getString("stafftobeinformed"));
                testFile.setExpectedDate((Timestamp) resultSet.getTimestamp("expectedresultdate"));
                testFile.setRequestedDate((Timestamp) resultSet.getTimestamp("testrequestdate"));
                
                testList.add(testFile);
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        finally
        {
            try
            {
                resultSet.close();
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }

        System.out.println("-------------------------------test list----------------------------"+testList.size());
        return testList;
    }
}
