package edu.uta.tsrh.db;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DBQueryExecuter
{

    public ResultSet read(String sqlQuery, Connection connection)
    {
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try
        {
            preparedStatement = connection.prepareStatement(sqlQuery);
            resultSet = preparedStatement.executeQuery();
        }
        catch (SQLException e)
        {
            System.out.println(e.getErrorCode());
            e.printStackTrace();
        }

        return resultSet;
    }

    public int modify(String sqlQuery, Connection connection)
    {
        PreparedStatement preparedStatement = null;
        int result = 0;
        try
        {
            preparedStatement = connection.prepareStatement(sqlQuery);
            result = preparedStatement.executeUpdate();
            return result;
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return result;
    }
}
