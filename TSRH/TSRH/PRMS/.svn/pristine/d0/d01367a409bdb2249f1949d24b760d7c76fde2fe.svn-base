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
                fileDetails.setFileID((int) resultSet.getInt(1));
                fileDetails.setLocation((String) resultSet.getString(2));
                fileDetails.setFileState((String) resultSet.getString(3));
                fileDetails.setPatientFirstName((String) resultSet.getString(7));
                fileDetails.setPatientLastName((String) resultSet.getString(8));
                fileDetails.setPatientDateOfBirth((Date) resultSet.getDate(9));
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
