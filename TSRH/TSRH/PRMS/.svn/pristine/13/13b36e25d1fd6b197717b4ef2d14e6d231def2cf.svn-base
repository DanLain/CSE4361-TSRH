/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.InsertSQLBuilder;
import edu.uta.tsrh.model.Resources;


/**
 *
 * @author soyab
 */
public class InsertResource implements MySQLCmd{
    
    private Resources resource;
    
    public InsertResource(String resourceName, String resourceURL){
        resource = new Resources(1, resourceName, resourceURL);
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
        String[] resourceColumnNames = {"resourceName","resourceURL"};
         Object[] columnValues = {this.resource.getResourceName(),this.resource.getResourceURL()};
         
        InsertSQLBuilder insertSQLBuilder = new InsertSQLBuilder();
        insertSQLBuilder.addFromTableName("resources");
        insertSQLBuilder.addColumnNames(resourceColumnNames);
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
