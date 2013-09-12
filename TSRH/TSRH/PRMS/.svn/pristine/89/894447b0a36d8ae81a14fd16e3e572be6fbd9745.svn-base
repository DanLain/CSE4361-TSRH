/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBUpdateAlertCommand extends DBUpdateCommand{
         
    private Alert alert;
    
    public DBUpdateAlertCommand(Alert alert)
    {
        this.alert = alert;
    }
    
    @Override
    public void update(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        dbMgrProxy.updateAlert(alert);       
        
    }
}
