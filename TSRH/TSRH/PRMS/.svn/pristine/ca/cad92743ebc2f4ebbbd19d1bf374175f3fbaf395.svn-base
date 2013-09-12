/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.RoleManagement.Helper.MailHelper;
import edu.uta.tsrh.RoleManagement.Helper.RandomPasswordHelper;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.InsertSQLBuilder;
import edu.uta.tsrh.model.User;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 *
 * @author Bugs
 */
public class CreateUser implements MySQLCmd {

    private User user;
    
    public CreateUser(User user) {
        this.user = user;
    }

    @Override
    public Object execute() {
        
        //Generate a random password
        String newPassword = RandomPasswordHelper.createRandomPassword();
        user.setPassword(newPassword);
        user.setClearPass(newPassword);
    
        //Hash the apssword
        user.setPassword(user.getHashedPW());
        
        String sqlQuery = buildQuery();
       
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        int success = queryExecuter.modify(sqlQuery, connection);

        DAO.closeConnection();
        
        //Send a mail
        String mailBody = createMailBody(newPassword);
        MailHelper mailHelper = new MailHelper(user.getEmailId(), "Welcome to TSRH", mailBody);
        boolean mailSent = mailHelper.sendMail();
        
        if (success == 1 && mailSent) {
            return true;
        } else {
            return false;
        }
    }

    private String buildQuery() {
        
        String sqlQuery = null;
        String[] roleColumnNames = {"userName,firstName,lastName,password,email,roleId,flag"};
         Object[] columnValues = {this.user.getUserName(),this.user.getFirstName(),this.user.getLastName(),user.getHashedPW(),this.user.getEmailId(),user.getRoleId(), user.getFirstLogin() };
         
        InsertSQLBuilder insertSQLBuilder = new InsertSQLBuilder();
        insertSQLBuilder.addFromTableName("user");
        insertSQLBuilder.addColumnNames(roleColumnNames);
        insertSQLBuilder.addColumnValues(columnValues);
        insertSQLBuilder.construct();
        sqlQuery = insertSQLBuilder.getSQLString();
        return sqlQuery;

    }
    
    private String createMailBody(String newPassword){
        
        String mailBody = "Hi "+ user.getFirstName() + " " + user.getLastName() + "\n\tWelcome to Texas Scottish Rite Hospital's Patient Management System.\n";
        mailBody = mailBody + "\nYou can now use the system with the following credentials:\n"+ "\t USER NAME: "+ user.getUserName() + "\n\t PASSWORD: " + newPassword;
        mailBody = mailBody + " \n\n Thanks,\n TSRH Admin";
        
        return mailBody;
    }

    @Override
    public boolean isReversible() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void undo() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
    //this method can be deleted.  it was created temporarily to print the username and password to a file
    public boolean writeSavedUser(String newP){
        boolean savedUser = false;
        
        
       try {
 
                String content = user.userName + " " + newP + "\n";

                File file = new File("adm_1234_filename.txt");

                // if file doesnt exists, then create it
                if (!file.exists()) {
                        file.createNewFile();
                }

                //append to the end of the file
                FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
                BufferedWriter bw = new BufferedWriter(fw);
                bw.append(content);
                bw.close();

                System.out.println("Done " + file.getAbsolutePath());
                savedUser = true;
 
		} catch (IOException e) {
			e.printStackTrace();
		}
        return savedUser;
    }
}
