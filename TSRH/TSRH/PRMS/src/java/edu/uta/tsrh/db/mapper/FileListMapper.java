package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import edu.uta.tsrh.model.SearchResult;

public class FileListMapper
    implements Mapper
{
    public FileListMapper()
    {}

    public ArrayList<SearchResult> map(ResultSet resultSet)
    {
        ArrayList<SearchResult> searchResultList = new ArrayList<SearchResult>();
        if (resultSet != null)
        {
            try
            {
                while (resultSet.next())
                {
                    SearchResult searchResult = new SearchResult();
                    searchResult.setFileID((String) resultSet.getString("file_id"));
                    searchResult.setPatientFirstName((String) resultSet.getString("firstname"));
                    searchResult.setPatientLastName((String) resultSet.getString("lastname"));
                    searchResult.setLocation((String) resultSet.getString("location"));
                    searchResult.setFileState((String) resultSet.getString("file_state"));
                    searchResultList.add(searchResult);
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
        }

        return searchResultList;
    }
}
