/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import java.sql.Timestamp;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.InsertSQLBuilder;
import edu.uta.tsrh.model.Role;
/**
 *
 * @author soyab
 */
public class InsertRole  implements MySQLCmd {
    
    private Role role;
    
    public InsertRole (String roleName){
        role = new Role (1, roleName);
    }
    
    @Override
    public Object execute() {
        String sqlQuery = buildQuery();
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        int result = queryExecuter.modify(sqlQuery, connection);

        DAO.closeConnection();
        return Integer.toString(result);
    }

    private String buildQuery()
    {
        String sqlQuery = null;
        String[] roleColumnNames = {"roleName"};
         Object[] columnValues = {this.role.getRoleName()   };
         
        InsertSQLBuilder insertSQLBuilder = new InsertSQLBuilder();
        insertSQLBuilder.addFromTableName("role");
        insertSQLBuilder.addColumnNames(roleColumnNames);
        insertSQLBuilder.addColumnValues(columnValues);
        insertSQLBuilder.construct();
        sqlQuery = insertSQLBuilder.getSQLString();
        return sqlQuery;
    }
     
    @Override
    public boolean isReversible() {
        return false;
    }

    @Override
    public void undo() {
        
    }
    
}
