/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.model.HashMD5;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


/**
 *
 * @author Prashanth
 */
public class forgotPassword implements MySQLCmd
{

    private String password;
    private String username;
    private String email;

    public forgotPassword(String username,String email,String password)
    {
        this.username = username;
        this.email= email;
        this.password=password;
    }
    
    
 public String execute()
    {
        
        
            this.password = HashMD5.hashpw(this.password );
            String sqlQuery = buildQuery();
            
            Connection connection = DAO.getConnection();
            DBQueryExecuter queryExecuter = new DBQueryExecuter();
            int result = queryExecuter.modify(sqlQuery, connection);
            DAO.closeConnection();
            return Integer.toString(result);
        
    }

    private String buildQuery()
    {
        return (new StringBuilder()).append("Update user set flag=1,password ='").append(password).append("'where username ='").append(username).append("'and email ='").append(email).append("'").toString();
    //return "select email from user where username='"+this.username+"'";
    }

    public boolean isReversible()
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void undo()
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    
}