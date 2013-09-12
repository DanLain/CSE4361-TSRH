/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBInsertAlertHistoryCommand extends DBInsertCommand{
 
    private Alerthistory alertHistory;
    
    public DBInsertAlertHistoryCommand(Alerthistory alertHistory)
    {
        this.alertHistory = alertHistory;
    }
    
    @Override
    public void insert(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        dbMgrProxy.insertAlertHistory(alertHistory);
        
    }
   
}
