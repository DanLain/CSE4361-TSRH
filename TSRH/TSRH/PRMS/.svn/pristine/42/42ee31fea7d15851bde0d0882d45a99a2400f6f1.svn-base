/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBInsertAlertCommand extends DBInsertCommand{
 
    private Alert alert;
    
    public DBInsertAlertCommand(Alert alert)
    {
        this.alert = alert;
    }
    
    @Override
    public void insert(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        dbMgrProxy.insertAlert(alert);
        
    }
   
}
