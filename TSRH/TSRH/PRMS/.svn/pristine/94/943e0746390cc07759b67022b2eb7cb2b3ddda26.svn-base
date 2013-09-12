package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import edu.uta.tsrh.model.PhoneConvRecord;

import edu.uta.tsrh.model.User;

public class PatientPhoneConvMapper
    implements Mapper
{
    public PatientPhoneConvMapper()
    {}

    @Override
    public ArrayList<PhoneConvRecord> map(ResultSet resultSet)
    {
          ArrayList<PhoneConvRecord> patients = new ArrayList<PhoneConvRecord>();
	
        try
        {
	    
	    
            while (resultSet.next())
            {  
                patients.add( new PhoneConvRecord(
                              resultSet.getInt("pcID"),
                              (String) resultSet.getString("patientid"),
                             (String) resultSet.getString("firstname"),
                             (String) resultSet.getString("lastname"),
                             (String) resultSet.getString("dateofbirth"),
                             (String) resultSet.getString("caller"),
                             (String) resultSet.getString("subject"),
                             (String) resultSet.getString("conversation"),
                             (String) resultSet.getString("creation_time"),
                             (String) resultSet.getString("last_update")));
            
            
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
	
        return patients;
    }
}
