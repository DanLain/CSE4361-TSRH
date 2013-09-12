/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public class DBDeleteAlertCommand extends DBDeleteCommand{
 
    private Alert alert;
    
    public DBDeleteAlertCommand(Alert alert)
    {
        this.alert = alert;
    }
    
    @Override
    public void delete(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
     
        
        dbMgrProxy.deleteAlert(alert);
        
    }
   
}
