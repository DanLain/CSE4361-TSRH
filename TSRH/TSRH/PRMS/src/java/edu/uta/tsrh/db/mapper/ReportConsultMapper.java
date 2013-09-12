/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.mapper;

import edu.uta.tsrh.model.Consults;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

/**
 *
 * @author Arjun Radhakrishnan
 */
public class ReportConsultMapper implements Mapper{

    public ReportConsultMapper ()
    {}
    
    @Override
    public Object map(ResultSet resultSet) {
        
        ArrayList<Consults> consultList = new ArrayList<Consults>();
        try
        {  
            while (resultSet.next())
            {
                Consults consultFile = new Consults();
                consultFile.setConsultationId((int) resultSet.getInt("consultationid"));
                consultFile.setPatientId((String) resultSet.getString("patientid_consultation"));                
                consultFile.setPatientName((String) resultSet.getString("firstname")+" "+(String) resultSet.getString("lastname"));  
                consultFile.setWhomConsulted((String)resultSet.getString("whomconsulted"));
                consultFile.setDateOfConsultation((Timestamp)resultSet.getTimestamp("dateofconsultation"));
                consultList.add(consultFile);
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
        return consultList;
    }
    
    
}
