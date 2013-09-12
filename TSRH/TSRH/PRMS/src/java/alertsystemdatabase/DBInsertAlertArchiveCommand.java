/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBInsertAlertArchiveCommand extends DBInsertCommand{
 
    private Alertarchive alertArchive;
    
    public DBInsertAlertArchiveCommand(Alertarchive alertArchive)
    {
        this.alertArchive = alertArchive;
    }
    
    @Override
    public void insert(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        dbMgrProxy.insertAlertArchive(alertArchive);
        
    }
    
}

