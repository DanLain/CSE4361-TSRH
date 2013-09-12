/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBInsertUserInfoCommand extends DBInsertCommand{
 
    private Userinfo userInfo;
    
    public DBInsertUserInfoCommand(Userinfo userInfo)
    {
        this.userInfo = userInfo;
    }
    
    @Override
    public void insert(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        dbMgrProxy.insertUserInfo(userInfo);
        
    }
    
}
