package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import edu.uta.tsrh.model.User;

public class pidMap
    implements Mapper
{
    public pidMap()
    {}

    @Override
    public String map(ResultSet resultSet)
    {
        String result = "";
	
        try
        {
	 
            while (resultSet.next())
            {
                //user.setId((int) resultSet.getInt("id"));
                result = (String) resultSet.getString("id");                
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
            result = "-1";
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
                result = "-1";
            }
        }
	
        return result;
    }
}
