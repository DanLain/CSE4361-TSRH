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
public class DBGetAlertHistoryForTheAlertIdCommand  extends DBGetCommand{

 
    private int alertId;
    private List<Alerthistory> alertHistoryList;
    
    public DBGetAlertHistoryForTheAlertIdCommand(int alertId)
    {
        this.alertId = alertId;
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        alertHistoryList = dbMgrProxy.getAlertHistoryForTheAlertId(alertId);
        
    }
    
    public List<Alerthistory> getResult()
    {
        return alertHistoryList;
    }      
    
}
