package edu.uta.tsrh.db.commandpattern;

import java.sql.ResultSet;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.EmployeeMapper;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.model.Employee;
import edu.uta.tsrh.model.QueryCondition;

public class GetEmployee
    implements MySQLCmd
{
    private int employeeID;

    public GetEmployee(int employeeID)
    {
        this.employeeID = employeeID;
    }

    @Override
    public Employee execute()
    {
        String sqlQuery = buildQuery();
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);

        Mapper mapper = new EmployeeMapper();
        Employee employee = (Employee) mapper.map(resultSet);

        DAO.closeConnection();
        return employee;
    }

    private String buildQuery()
    {
        String sqlQuery = null;
        SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
        selectSQLBuilder.addSelectColumn("all");
        selectSQLBuilder.addFromTableName("employee");
        selectSQLBuilder.addWhereCondition(new QueryCondition("id", "=", this.employeeID));
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
