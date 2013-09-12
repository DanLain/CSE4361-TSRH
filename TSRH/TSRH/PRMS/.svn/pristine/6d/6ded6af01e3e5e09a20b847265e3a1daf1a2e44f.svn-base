/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.mapper;

import edu.uta.tsrh.model.Resources;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author soyab
 */
public class ResourcesMapper implements Mapper {
    
    @Override
    public Resources map(ResultSet resultSet)
    {
        Resources resource = new Resources();
        try
        {
            while (resultSet.next())
            {
                resource.setResourceId((int) resultSet.getInt("resourceId"));
                resource.setResourceName((String) resultSet.getString("resourceName"));
                resource.setResourceURL((String) resultSet.getString("resourceURL"));
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
        return resource;
    }
}
