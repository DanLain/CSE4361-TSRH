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
import edu.uta.tsrh.db.mapper.ResourceListMapper;
import edu.uta.tsrh.db.mapper.RoleResourceRightsListMapper;
import edu.uta.tsrh.model.QueryCondition;
import edu.uta.tsrh.model.Resources;
import edu.uta.tsrh.model.RoleResourceRights;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author soyab
 */
public class GetRightsList implements MySQLCmd {

    int roleId;
    
    public GetRightsList (int roleId){
        this.roleId = roleId;
    }
    
    @Override
    public ArrayList<RoleResourceRights> execute() {
        String sqlQuery = buildQuery();
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);

        Mapper mapper = new RoleResourceRightsListMapper();
        ArrayList<RoleResourceRights> rightList = (ArrayList<RoleResourceRights>) mapper.map(resultSet);

        DAO.closeConnection();
        return rightList;
    }

    private String buildQuery() {
        String sqlQuery = null;
        SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
        selectSQLBuilder.addSelectColumn("all");
        selectSQLBuilder.addFromTableName("roleresourcerights");
        selectSQLBuilder.addWhereCondition(new QueryCondition("roleId", "=", roleId ));
        
        selectSQLBuilder.construct();
        sqlQuery = selectSQLBuilder.getSQLString();
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
