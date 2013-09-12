package edu.uta.tsrh.db.commandpattern;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.UserListMapper;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.model.User;

public class GetUsers
implements MySQLCmd
{
    
    public GetUsers()
    {
    }
    
@Override
public ArrayList<User> execute()
{
    String sqlQuery = buildQuery();
    System.out.println("query is "+sqlQuery);
    Connection connection = DAO.getConnection();

    DBQueryExecuter queryExecuter = new DBQueryExecuter();
    ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
    
    Mapper mapper = new UserListMapper();
    ArrayList<User> employeeList = (ArrayList<User>) mapper.map(resultSet);
    
    DAO.closeConnection();
    return employeeList;
}

private String buildQuery()
{
    String sqlQuery = null;
    SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
    selectSQLBuilder.addSelectColumn("all");
    selectSQLBuilder.addFromTableName("userinfo");
    selectSQLBuilder.construct();
    sqlQuery = selectSQLBuilder.getSQLString();
    return sqlQuery;
}

@Override
public boolean isReversible()
{
    return false;
}

@Override
public void undo()
{

}

}
