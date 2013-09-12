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
    
    
    public boolean createUser(String userName, String password, String emailId){
        
        MySQLDBServices dbservices = new MySQLDBServices();
        boolean created = dbservices.createUser(userName, password,emailId);
        
        return created;
    }
   
}