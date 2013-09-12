/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBDeleteUserInfoCommand extends DBDeleteCommand{
 
    private Userinfo userInfo;
    
    public DBDeleteUserInfoCommand(Userinfo userInfo)
    {
        this.userInfo = userInfo;
    }
    
    @Override
    public void delete(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        dbMgrProxy.deleteUserInfo(userInfo);
        
    }
    
}

