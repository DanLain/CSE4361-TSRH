package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import edu.uta.tsrh.model.User;

public class UserListMapper
    implements Mapper
{
    public UserListMapper()
    {}

    @Override
    public ArrayList<User> map(ResultSet resultSet)
    {
        ArrayList<User> userlist = new ArrayList<User>();
        try
        {
            while (resultSet.next())
            {
                User user = new User();
                
                user.setUserId(resultSet.getInt("userid"));
                user.setUserName((String) resultSet.getString("userName"));
                user.setPermissionValue((String) resultSet.getString("role"));
                user.setPassword((String) resultSet.getString("password"));
                user.setEmail((String) resultSet.getString("emailid"));
                
                userlist.add(user);
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
        return userlist;
    }
}