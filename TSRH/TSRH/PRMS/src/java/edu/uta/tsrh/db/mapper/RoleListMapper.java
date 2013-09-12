/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.mapper;

import edu.uta.tsrh.model.Role;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author soyab
 */
public class RoleListMapper implements Mapper{
     @Override
    public ArrayList<Role> map(ResultSet resultSet)
    {
        ArrayList<Role> roleList = new ArrayList<Role>();
        try
        {
            while (resultSet.next())
            {
                Role role = new Role();
                role.setRoleId((int) resultSet.getInt("roleId"));
                role.setRoleName((String) resultSet.getString("roleName"));
                
                roleList.add(role);
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
        return roleList;
    }
}
