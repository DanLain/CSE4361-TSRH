package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import edu.uta.tsrh.model.User;

public class UserMapper
    implements Mapper
{
    public UserMapper()
    {}

    @Override
    public User map(ResultSet resultSet)
    {
        User user = new User();
	
        try
        {
            while (resultSet.next())
            {
                // Set user values
                //user.setId((int) resultSet.getInt("id"));
                user.setUserId(Integer.parseInt(resultSet.getString("userId")));
                user.setUserName((String) resultSet.getString("userName"));
                 user.setFirstName((String) resultSet.getString("firstName"));
                 user.setLastName((String) resultSet.getString("lastName"));
		user.setPassword((String) resultSet.getString("password"));
                user.setEmailId((String) resultSet.getString("email"));
                user.setRoleId(Integer.parseInt(resultSet.getString("roleId")));
                user.setFirstLogin(Integer.parseInt(resultSet.getString("flag")));
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
	
        return user;
    }
}
