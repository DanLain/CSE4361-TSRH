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
import edu.uta.tsrh.db.mapper.RoleListMapper;
import edu.uta.tsrh.model.Role;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author soyab
 */
public class GetRoleList implements MySQLCmd {

    @Override
    public ArrayList<Role> execute() {
        String sqlQuery = buildQuery();
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);

        Mapper mapper = new RoleListMapper();
        ArrayList<Role> roleList = (ArrayList<Role>) mapper.map(resultSet);

        DAO.closeConnection();
        return roleList;
    }

    private String buildQuery() {
        String sqlQuery = null;
        SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
        selectSQLBuilder.addSelectColumn("all");
        selectSQLBuilder.addFromTableName("role");
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
