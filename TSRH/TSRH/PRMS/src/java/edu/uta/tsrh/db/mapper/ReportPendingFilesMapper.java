package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import edu.uta.tsrh.model.PendingFiles;

public class ReportPendingFilesMapper implements Mapper
{
    public ReportPendingFilesMapper()
    {}

    @Override
    public ArrayList<PendingFiles> map(ResultSet resultSet)
    {
        ArrayList<PendingFiles> pendingFilesList = new ArrayList<PendingFiles>();
       try
        {
            while (resultSet.next())
            {
                PendingFiles pendingFile = new PendingFiles();
                pendingFile.setFileId((String) resultSet.getString("file_id"));
                pendingFile.setPatientFirstName((String) resultSet.getString("p_first"));
                pendingFile.setPatientLastName((String) resultSet.getString("p_last"));
                pendingFile.setFileState((String) resultSet.getString("file_state"));
                pendingFile.setReason((String) resultSet.getString("reason"));
                pendingFile.setPendingLoaction((String) resultSet.getString("location"));
                pendingFile.setPendingDate((Timestamp) resultSet.getTimestamp("time"));
                pendingFile.setEmployeeName((String) resultSet.getString("emp_first") + " "+ (String) resultSet.getString("emp_last"));
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
