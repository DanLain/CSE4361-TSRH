/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.UpdateSQLBuilder;
import edu.uta.tsrh.model.QueryCondition;
import edu.uta.tsrh.model.RoleResourceRights;

/**
 *
 * @author soyab
 */
public class UpdateRights implements MySQLCmd{
    
    private RoleResourceRights rights;

    public UpdateRights(int roleId, int resourceId, int readEdit) {
        rights = new RoleResourceRights(roleId, resourceId, readEdit);
    }
    
    @Override
    public String execute()
    {
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
        UpdateSQLBuilder updateSQLBuilder = new UpdateSQLBuilder();
        updateSQLBuilder.addFromTableName("roleresourcerights");
        updateSQLBuilder.addSetCondition(new QueryCondition("readEdit", "=", this.rights.getReadEdit()));
        
        updateSQLBuilder.addWhereCondition(new QueryCondition("roleId", "=", this.rights.getRoleId()));
        updateSQLBuilder.addWhereCondition(new QueryCondition("resourceId", "=", this.rights.getResourceId()));
        updateSQLBuilder.construct();
        sqlQuery = updateSQLBuilder.getSQLString();
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
