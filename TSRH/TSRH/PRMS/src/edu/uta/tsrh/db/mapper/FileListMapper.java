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
                    searchResult.setFileID((int) resultSet.getInt("id"));
                    searchResult.setPatientFirstName((String) resultSet.getString("first_name"));
                    searchResult.setPatientLastName((String) resultSet.getString("last_name"));
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
