package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import edu.uta.tsrh.model.PendingFiles;

public class PendingFilesMapper
    implements Mapper
{
    public PendingFilesMapper()
    {}

    public ArrayList<PendingFiles> map(ResultSet resultSet)
    {
        ArrayList<PendingFiles> pendingFilesList = new ArrayList<PendingFiles>();
        try
        {
            while (resultSet.next())
            {
                PendingFiles pendingFile = new PendingFiles();
                pendingFile.setFileId((int) resultSet.getInt("file_id"));
                pendingFile.setPatientFirstName((String) resultSet.getString("p_first"));
                pendingFile.setPatientLastName((String) resultSet.getString("p_last"));
                pendingFile.setReason((String) resultSet.getString("reason"));
                pendingFile.setPendingLoaction((String) resultSet.getString("pending_location"));
                pendingFile.setPendingDate((Timestamp) resultSet.getTimestamp("pending_date"));
                pendingFile.setEmployeeName((String) resultSet.getString("emp_first") + " "
                    + (String) resultSet.getString("emp_last"));
                pendingFilesList.add(pendingFile);
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
        return pendingFilesList;
    }
}
