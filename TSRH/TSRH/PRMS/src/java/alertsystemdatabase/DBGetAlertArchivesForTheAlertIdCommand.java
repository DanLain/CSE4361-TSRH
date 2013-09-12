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
public class DBGetAlertArchivesForTheAlertIdCommand   extends DBGetCommand{

 
    private int alertId;
    private List<Alertarchive> alertArchiveList;
    
    public DBGetAlertArchivesForTheAlertIdCommand(int alertId)
    {
        this.alertId = alertId;
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        alertArchiveList = dbMgrProxy.getAlertArchiveForTheAlertId(alertId);
        
    }
    
    public List<Alertarchive> getResult()
    {
        return alertArchiveList;
    }      
    
}