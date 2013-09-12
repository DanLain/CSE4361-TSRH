/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.mapper;

import edu.uta.tsrh.model.Resources;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author soyab
 */
public class ResourceListMapper implements Mapper{
    
    @Override
    public ArrayList<Resources> map(ResultSet resultSet)
    {
        ArrayList<Resources> resourceList = new ArrayList<Resources>();
        try
        {
            while (resultSet.next())
            {
                Resources resource = new Resources();
                resource.setResourceId((int) resultSet.getInt("resourceId"));
                resource.setResourceName((String) resultSet.getString("resourceName"));
                resource.setResourceURL((String) resultSet.getString("resourceURL"));
                resourceList.add(resource);
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
        return resourceList;
    }
}
