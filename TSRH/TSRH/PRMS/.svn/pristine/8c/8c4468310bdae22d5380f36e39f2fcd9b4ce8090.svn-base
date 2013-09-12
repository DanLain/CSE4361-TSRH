/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package alertsystemdatabase;

import java.util.List;

/**
 *
 * @author Sravan
 */
public class DBGetAlertsCreatedByTheUserId extends DBGetCommand{
    
    private String userId;
    private List<Alert> alertsList;
    
    public DBGetAlertsCreatedByTheUserId(String userId)
    {
        this.userId = userId;
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        alertsList = dbMgrProxy.getAlertsCreatedByTheUserId(userId);
        
    }
    
    public List<Alert> getResult()
    {
        return alertsList;
    }      
    
}
