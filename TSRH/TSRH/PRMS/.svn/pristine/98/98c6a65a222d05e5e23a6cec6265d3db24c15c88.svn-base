/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.mapper;

import edu.uta.tsrh.model.Role;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author soyab
 */
public class RoleMapper implements Mapper {

    @Override
    public Role map(ResultSet resultSet)
    {
        Role role = new Role();
        try
        {
            while (resultSet.next())
            {
                role.setRoleId((int) resultSet.getInt("roleId"));
                role.setRoleName((String) resultSet.getString("roleName"));
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
        return role;
    }
    
}
