/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package alertsystemdatabase;

import java.util.List;

/**
 *
 * @author vivek lingegowda
 */
public class DBGetAlertsForTheAlertIdCommand  extends DBGetCommand{
 
    private int alertId;
    private List<Alert> alertsList;
    
    public DBGetAlertsForTheAlertIdCommand(int alertId)
    {
        this.alertId = alertId;
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        alertsList = dbMgrProxy.getAlertsForTheAlertId(alertId);
        
    }
    
    public List<Alert> getResult()
    {
        return alertsList;
    }      
 
}
