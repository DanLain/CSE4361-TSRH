/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBGetUserInfoCommand extends DBGetCommand{
 
    private String userId;
    private Userinfo userInfo;
    
    public DBGetUserInfoCommand(String userId)
    {
        this.userId = userId;
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        userInfo = dbMgrProxy.getUserInfo(userId);
        
    }
    
    public Userinfo getResult()
    {
        return userInfo;
    }
}

