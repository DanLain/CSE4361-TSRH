/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.db.mapper.RoleMapper;
import edu.uta.tsrh.model.QueryCondition;
import edu.uta.tsrh.model.Role;
import java.sql.ResultSet;

/**
 *
 * @author soyab
 */
public class GetRole implements MySQLCmd{
    private String roleName;

    public GetRole(String roleName) {
        this.roleName = roleName;
    }
    
     @Override
    public Role execute()
    {
        String sqlQuery = buildQuery();
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);

        Mapper mapper = new RoleMapper();
        Role role = (Role) mapper.map(resultSet);

        DAO.closeConnection();
        return role;
    }
     
     private String buildQuery()
    {
        String sqlQuery = null;
        SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
        selectSQLBuilder.addSelectColumn("all");
        selectSQLBuilder.addFromTableName("role");
        selectSQLBuilder.addWhereCondition(new QueryCondition("roleName", "=", this.roleName));
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
