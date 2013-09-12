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
public class DBGetAlertHistoryArchiveForTheAlertIdCommand   extends DBGetCommand{

 
    private int alertId;
    private List<Alerthistoryarchive> alertHistoryArchiveList;
    
    public DBGetAlertHistoryArchiveForTheAlertIdCommand(int alertId)
    {
        this.alertId = alertId;
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        alertHistoryArchiveList = dbMgrProxy.getAlertHistoryArchiveForTheAlertId(alertId);
        
    }
    
    public List<Alerthistoryarchive> getResult()
    {
        return alertHistoryArchiveList;
    }      
    
}