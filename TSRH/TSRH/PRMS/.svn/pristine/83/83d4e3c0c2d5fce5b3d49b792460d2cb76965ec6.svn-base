package edu.uta.tsrh.db;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DAO
{

    private static Connection connection = null;

    private DAO()
    {

    }

    public static final Connection getConnection()
    {
        if (connection == null)
        {
            try
            {
                String ipAddress = LoadDBConfig.getQuery("ipAddress");
                String dbPort = LoadDBConfig.getQuery("dbPort");
                String dbName = LoadDBConfig.getQuery("dbName");
                String dbUserName = LoadDBConfig.getQuery("dbUserName");
                String dbPassword = LoadDBConfig.getQuery("dbPassword");
                
                String dbUrl = "jdbc:mysql://"+ipAddress+":"+dbPort+"/"+dbName;
                
                
                Class.forName("com.mysql.jdbc.Driver");
                connection = (Connection) DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
    
            }
            catch (ClassNotFoundException e)
            {
                e.printStackTrace();
            }
    
            catch (SQLException e)
            {
                e.printStackTrace();
            }
    
        }
        return connection;
    }

    public static void closeConnection()
    {
        try
        {
            connection.close();
            connection = null;
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
}
