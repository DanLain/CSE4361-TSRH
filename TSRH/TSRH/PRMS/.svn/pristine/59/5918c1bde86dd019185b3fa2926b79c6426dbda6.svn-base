/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.InsertSQLBuilder;
import edu.uta.tsrh.model.RoleResourceRights;

/**
 *
 * @author soyab
 */
public class InsertRights implements MySQLCmd{

    private RoleResourceRights right;

    public InsertRights(int roleId, int resourceId, int readEdit) {
        right = new RoleResourceRights(roleId, resourceId, readEdit);
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
        String[] rightColumnNames = {"roleId","resourceId","readEdit"};
         Object[] columnValues = {this.right.getRoleId(),this.right.getResourceId(),
                                                    this.right.getReadEdit()};
         
        InsertSQLBuilder insertSQLBuilder = new InsertSQLBuilder();
        insertSQLBuilder.addFromTableName("roleResourceRights");
        insertSQLBuilder.addColumnNames(rightColumnNames);
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
