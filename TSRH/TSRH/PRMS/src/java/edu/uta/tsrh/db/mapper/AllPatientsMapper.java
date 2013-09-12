
package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import edu.uta.tsrh.model.Patient;

import edu.uta.tsrh.model.User;

public class AllPatientsMapper
    implements Mapper
{
    public AllPatientsMapper()
    {}

    @Override
    public ArrayList<Patient> map(ResultSet resultSet)
    {
          ArrayList<Patient> patients = new ArrayList<Patient>();
	
        try
        {
	    
	    
            while (resultSet.next())
            {  
                patients.add( new Patient(
                             (String)resultSet.getString("patientid"),
                             (String) resultSet.getString("firstname"),
                             (String) resultSet.getString("lastname"),
                             (String) resultSet.getString("dateofbirth"),
                             (String) resultSet.getString("phonenumber"),
                             (String) resultSet.getString("address"),
                             (String) resultSet.getString("mothersname")));
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
