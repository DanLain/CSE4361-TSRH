/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

import java.util.List;

/**
 *
 * @author vivek lingegowda
 */
public class DBGetAlertsForTheUserIdCommand extends DBGetCommand{

 
    private String userId;
    private List<Alert> alertsList;
    
    public DBGetAlertsForTheUserIdCommand(String userId)
    {
        this.userId = userId;
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        alertsList = dbMgrProxy.getAlertsForTheUserId(userId);
        
    }
    
    public List<Alert> getResult()
    {
        return alertsList;
    }      
    
}
