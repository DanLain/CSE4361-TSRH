package edu.uta.tsrh.db;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import dbmanager.DBConfig;

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
                DBConfig cfg = new DBConfig();
                
                String ipAddress = cfg.getProperty("ipAddress");
                String dbPort = cfg.getProperty("mDbPort");
                String dbName = cfg.getProperty("mDbName");
                String dbUserName = cfg.getProperty("mDbUser");
                String dbPassword = cfg.getProperty("mDbPwds");
                
                String dbUrl = "jdbc:mysql://"+ipAddress+":"+dbPort+"/"+dbName;                
                
                Class.forName(cfg.getProperty("dbConnect"));
                
                connection = (Connection) DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
    
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
