/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.model;

/**
 *
 * @author Ethan
 */
public class User {
    
    private int userId;
    public String userName = "";
    private String firstName = "";
    private String lastName = "";
    private String password = "";
    private String emailId = "";
    private String permissionKey = "" ;
    public int roleId;
    private int firstLogin;
    //Needs to be removed once the emailing of temp passwords works.
    private String clearPass = "";
    
    public User()
    {
        super();
    }

    
    //This should really pass in firstname and last name.  Need to check all calling functions.
    public User( String userid, String username, String emailid, String passwordhash)
    {
	//this.id = id;
	this.firstName = userid;
        this.lastName = username;	
        this.password = passwordhash;
	this.emailId = emailid;
    }
    
    public User(int userid, String username,String firstName, String lastName, String emailid, String passwordhash, int roleId, int firstLogin)
    {
	this.userId = userid;
	this.userName = username;
        this.firstName = firstName;
        this.lastName = lastName;
	this.password = passwordhash;
	this.emailId = emailid;
        this.roleId = roleId;
        this.firstLogin = firstLogin;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
       
    public int getUserId()
    {
        return this.userId;
    }
    
    public void setUserId(int userId)
    {
	if(this.userId == 0){
             this.userId = userId;
        }
	   
    }
    
    public String getUserName()
    {
        return this.userName;
    }
    
    public void setUserName(String username)
    {
	if(this.userName.equals("")){
             this.userName = username;
        }
	   
    }
    
    public void setPermissionValue(String v)
    {
        this.permissionKey = v;
    }
    
    public void setPassword(String passwordhash)
    {
	if(this.password.equals("")){
            this.password = passwordhash;
        }
    }
    
    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public int getFirstLogin() {
        return firstLogin;
    }

    public void setFirstLogin(int firstLogin) {
        this.firstLogin = firstLogin;
    }
    
    public String getEmail()
    {
        return this.emailId;
    }
    
    public void setEmail(String email)
    {
	if(this.emailId.equals(""))
	    this.emailId = email;
    }
    
    public String getHashedPW()            
    {        
        return HashMD5.hashpw(this.password);
      
        
    } 
        
    public boolean checkLogin(String passwordCandidate)
    {
	if(this.password.equals("")){
            return false;
        } 
	       
	return HashMD5.checkpw(HashMD5.hashpw(passwordCandidate), this.password);
    }

    @Override
    public String toString()
    {
        return "User [userId=" + userId + ", userName=" + userName + ", emailId="
            + emailId + "]";
    }
    
    public void setClearPass(String cPass){
        this.clearPass = cPass;
    }
    
    public String getClearPass(){
        return this.clearPass;
    }
    
}
