/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.RoleManagement;

import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.User;

/**
 *
 * @author SHwetha
 */
public class CreateUserNavController {
    
    public String userDuplicate;
    public String emailDuplicate;
    public String userCreation;
    
    public String userName;
    public String emailId;
    public String password;
    public String role;
    
    public String getUserName() {
        return userName;
    }

    public String getEmailId() {
        return emailId;
    }

    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
    
    public boolean createUser(User user){
        
        MySQLDBServices dbservices = new MySQLDBServices();
        boolean isDuplicate =  dbservices.checkDupUserName(user.getUserName());
        boolean isEmailDup = dbservices.checkDupEmailId(user.getEmailId());
        
        
        boolean created = false;
        if(!isDuplicate && !isEmailDup){
            created = dbservices.createUser(user);
            if(!created){
                userCreation = "User not created, problem with database!";
            }
        }else{
            if(isDuplicate){
                userDuplicate = "Duplicate User Name, Please use a different user name";
            }else{
                emailDuplicate = "Duplicate Email Id, Please use a different Email Id";
            }
        }
        
        return created;
    }
   
}
