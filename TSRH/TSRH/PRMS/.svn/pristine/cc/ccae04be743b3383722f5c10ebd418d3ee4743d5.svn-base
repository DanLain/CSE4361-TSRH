/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBUpdateUserInfoCommand extends DBUpdateCommand{
         
    private Userinfo userInfo;
    
    public DBUpdateUserInfoCommand(Userinfo userInfo)
    {
        this.userInfo = userInfo;
    }
    
    @Override
    public void update(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        dbMgrProxy.updateUserInfo(userInfo);       
        
    }
}
