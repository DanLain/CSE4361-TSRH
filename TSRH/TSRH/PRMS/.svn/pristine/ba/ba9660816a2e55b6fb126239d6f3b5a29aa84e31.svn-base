package edu.uta.tsrh.db.mapper;

import java.sql.Timestamp;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import edu.uta.tsrh.model.PendingDate;

public class PendingDateListMapper
    implements Mapper
{
    public PendingDateListMapper()
    {}

    public ArrayList<PendingDate> map(ResultSet resultSet)
    {
        ArrayList<PendingDate> listOfPendingDates = new ArrayList<PendingDate>();
        try
        {
            while (resultSet.next())
            {
                PendingDate pendingDate = new PendingDate();
                pendingDate.setId((int) resultSet.getInt(1));
                pendingDate.setPendingDate((Timestamp) resultSet.getTimestamp("pending_date"));
                pendingDate.setEmployeeName((String) resultSet.getString("first_name") + " "
                    + (String) resultSet.getString("last_name"));
                pendingDate.setPendingLocation((String) resultSet.getString("pending_location"));
                pendingDate.setReason((String) resultSet.getString("reason"));
                pendingDate.setNotes((String) resultSet.getString("notes"));
                pendingDate.setFileId((int) resultSet.getInt("file_id"));
                pendingDate.setEmployeeId((int) resultSet.getInt("employee_id"));
                listOfPendingDates.add(pendingDate);
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
        return listOfPendingDates;
    }
}
