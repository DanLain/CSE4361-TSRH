package edu.uta.tsrh.db.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import edu.uta.tsrh.model.FileDetail;

public class FileDetailsMapper
    implements Mapper
{
    public FileDetailsMapper()
    {}

    public FileDetail map(ResultSet resultSet)
    {
        FileDetail fileDetails = new FileDetail();
        try
        {
            while (resultSet.next())
            {
                fileDetails.setFileID((String) resultSet.getString(3));
                fileDetails.setLocation((String) resultSet.getString(1));
                fileDetails.setFileState((String) resultSet.getString(2));
                fileDetails.setPatientFirstName((String) resultSet.getString(6));
                fileDetails.setPatientLastName((String) resultSet.getString(7));
                fileDetails.setPatientDateOfBirth((Date) resultSet.getDate(8));
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
        return fileDetails;
    }
}
