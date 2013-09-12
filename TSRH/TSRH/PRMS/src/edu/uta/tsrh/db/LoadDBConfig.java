package edu.uta.tsrh.db;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class LoadDBConfig
{
    private static Properties properties = null;

    static
    {

        try
        {
            properties = new Properties();
            InputStream propertiesStream = new FileInputStream("C:/tsrh_db_config/dbConfig.properties");
            properties.load(propertiesStream);
            propertiesStream.close();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

    }

    public static String getQuery(String queryName)
    {
        String query = null;
        query = properties.getProperty(queryName);
        return query;
    }

}
