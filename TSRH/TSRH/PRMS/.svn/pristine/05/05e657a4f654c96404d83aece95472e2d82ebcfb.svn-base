/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import java.sql.ResultSet;

/**
 *
 * @author Bugs
 */
public class CheckDupEmail implements MySQLCmd{
    private String email;
    
    public CheckDupEmail(String email) {
        this.email = email;
    }

    @Override
    public Object execute() {
        
        Boolean success = false;
        String sqlQuery = buildQuery();
        System.out.println("query is " + sqlQuery);      

        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
        try{
            if(resultSet.next()){
                success = true;
            }else{
                success = false;
            }
            
        }catch(Exception e){
            e.printStackTrace();;
        }
                
        DAO.closeConnection();

        return success;
    }

    private String buildQuery() {

        return "Select * from user where email = '" + this.email + "';";
    }

    @Override
    public boolean isReversible() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void undo() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
