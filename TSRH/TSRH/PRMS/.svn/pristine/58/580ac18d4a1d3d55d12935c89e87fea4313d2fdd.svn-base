/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

import java.util.Date;
import java.util.List;

/**
 *
 * @author vivek lingegowda
 */
public class DBGetAlertsBetweenTheTimeCommand extends DBGetCommand{

 
    private Date alertStartTime;
    private Date alertEndTIme;
    private List<Alert> alertsList;
    
    public DBGetAlertsBetweenTheTimeCommand(Date alertStartTime, Date alertEndTime)
    {
        this.alertStartTime = alertStartTime;
        this.alertEndTIme = alertEndTime;
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        alertsList = dbMgrProxy.getAlertsBetweenTheTime(alertStartTime, alertEndTIme);
        
    }
    
    public List<Alert> getResult()
    {
        return alertsList;
    }      
    
}

