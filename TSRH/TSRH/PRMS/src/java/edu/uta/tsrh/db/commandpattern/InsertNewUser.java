
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.InsertSQLBuilder;
import edu.uta.tsrh.db.mapper.pidMap;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.model.QueryCondition;
import edu.uta.tsrh.model.User;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.lang.Boolean;

public class InsertNewUser implements MySQLCmd {
    
     User u; 
     String role;
     //String pw;

    

    public InsertNewUser(String name, String em,  String password, String access)
    {
        u = new User(name, name, em, password);
        this.role = access;
    }

    @Override
    public  Boolean execute()
    {        
            Boolean result = false;
            
            String sqlQuery = buildQuery();
            Connection connection = DAO.getConnection();
            DBQueryExecuter queryExecuter = new DBQueryExecuter();
            int rowCount = queryExecuter.modify(sqlQuery, connection);                      
            
            //if(rowCount != 0)
                result = true;
            
            DAO.closeConnection();            
            
            return result;
    }

    private String buildQuery()
    {   
        
        String sqlQuery = null;
        String[] userinfoColumns = {"userId", "userName", "role", "password", "emailId"};
        Object[] userinfoValues = { this.u.getUserId(),this.u.getUserName(), this.role, this.u.getHashedPW(), this.u.getEmail()};
        
        InsertSQLBuilder insertSQLBuilder = new InsertSQLBuilder();
        insertSQLBuilder.addFromTableName("userinfo");
        insertSQLBuilder.addColumnNames(userinfoColumns);
        insertSQLBuilder.addColumnValues(userinfoValues);
        insertSQLBuilder.construct();
        sqlQuery = insertSQLBuilder.getSQLString();
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

