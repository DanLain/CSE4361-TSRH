package edu.uta.tsrh.db.commandpattern;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.EmployeeListMapper;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.model.Employee;

public class GetEmployeeList
implements MySQLCmd
{
    
    public GetEmployeeList()
    {
    }
    
@Override
public ArrayList<Employee> execute()
{
    String sqlQuery = buildQuery();
    System.out.println("query is "+sqlQuery);
    Connection connection = DAO.getConnection();

    DBQueryExecuter queryExecuter = new DBQueryExecuter();
    ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
    
    Mapper mapper = new EmployeeListMapper();
    ArrayList<Employee> employeeList = (ArrayList<Employee>) mapper.map(resultSet);
    
    DAO.closeConnection();
    return employeeList;
}

private String buildQuery()
{
    String sqlQuery = null;
    SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
    selectSQLBuilder.addSelectColumn("all");
    selectSQLBuilder.addFromTableName("employee");
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
