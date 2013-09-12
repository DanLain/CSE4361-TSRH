/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBDeleteAlertHistoryCommand extends DBDeleteCommand{
 
    private Alerthistory alertHistory;
    
    public DBDeleteAlertHistoryCommand(Alerthistory alertHistory)
    {
        this.alertHistory = alertHistory;
    }
    
    @Override
    public void delete(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        dbMgrProxy.deleteAlertHistory(alertHistory);
        
    }
    
}
