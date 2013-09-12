/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBInsertAlertHistoryArchiveCommand extends DBInsertCommand{
 
    private Alerthistoryarchive alertHistoryArchive;
    
    public DBInsertAlertHistoryArchiveCommand(Alerthistoryarchive alertHistoryArchive)
    {
        this.alertHistoryArchive = alertHistoryArchive;
    }
    
    @Override
    public void insert(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        dbMgrProxy.insertAlertHistoryArchive(alertHistoryArchive);
        
    }
    
}

