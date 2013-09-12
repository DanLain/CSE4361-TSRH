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
import edu.uta.tsrh.db.mapper.UserMapper;
import edu.uta.tsrh.model.QueryCondition;
import edu.uta.tsrh.model.User;
import java.sql.ResultSet;

/**
 *
 * @author Ethan
 */
public class LoginUser implements MySQLCmd {
    private String userName;
    
    private String passwordCandidate;
    

    public LoginUser(String username, String passwordcandidate)
    {
        this.userName = username;
	this.passwordCandidate = passwordcandidate;
    }

    @Override
    public User execute()
    {
        String sqlQuery = buildQuery();
        System.out.println("query is " + sqlQuery);
	
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);

        Mapper mapper = new UserMapper();
        User user = (User) mapper.map(resultSet);
	
        DAO.closeConnection();
	
	if(user.checkLogin(this.passwordCandidate))
	    return user;
	else
	    return null;
    }

    private String buildQuery()
    {
        String sqlQuery = null;
        SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
        selectSQLBuilder.addSelectColumn("all");
        selectSQLBuilder.addFromTableName("user");
        selectSQLBuilder.addWhereCondition(new QueryCondition("BINARY userName", "=", this.userName));
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
