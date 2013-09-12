/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.mapper;

import edu.uta.tsrh.model.RoleResourceRights;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author soyab
 */
public class RoleResourceRightsListMapper implements Mapper{
    
    @Override
    public ArrayList<RoleResourceRights> map(ResultSet resultSet)
    {
        ArrayList<RoleResourceRights> rightsList = new ArrayList<RoleResourceRights>();
        try
        {
            while (resultSet.next())
            {
                RoleResourceRights rights = new RoleResourceRights();
                rights.setRoleId((int) resultSet.getInt("roleId"));
                rights.setResourceId((int) resultSet.getInt("resourceId"));
                rights.setReadEdit((int) resultSet.getInt("readEdit"));
                rightsList.add(rights);
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
        return rightsList;
    }
}
