package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import edu.uta.tsrh.model.PhoneConvRecord;

import edu.uta.tsrh.model.User;

public class PhoneConvMapper
    implements Mapper
{
    public PhoneConvMapper()
    {}
    @Override
    public PhoneConvRecord map(ResultSet resultSet)
    {    
        PhoneConvRecord pcr = new PhoneConvRecord();
	
        try
        {
	    
	    
            while (resultSet.next())
            {  
                pcr = new PhoneConvRecord(
                              resultSet.getInt("pcID"),
                              (String) resultSet.getString("patientid"),
                             (String) resultSet.getString("firstname"),
                             (String) resultSet.getString("lastname"),
                             (String) resultSet.getString("dateofbirth"),
                             (String) resultSet.getString("caller"),
                             (String) resultSet.getString("subject"),
                             (String) resultSet.getString("conversation"),
                             (String) resultSet.getString("creation_time"),
                             (String) resultSet.getString("last_update"));
      
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
	
        return pcr;
    }
}
