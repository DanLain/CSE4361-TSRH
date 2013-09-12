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
    
    public DBGetAlertsBetweenTheTimeCommand(Date alertStartTime1, Date alertEndTime1)
    {
        setAlertStartTime(alertStartTime1);
        this.setAlertEndTime( alertEndTime1);
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        alertsList = dbMgrProxy.getAlertsBetweenTheTime(alertStartTime, alertEndTIme);
        
    }
    
    public void setAlertStartTime(Date alertStartTime){
        this.alertStartTime=(Date)alertStartTime.clone();
    }
    
   
    
    
    
    public void setAlertEndTime(Date alertEndTime){
        this.alertEndTIme=(Date)alertEndTime.clone();
    }
    
    
    
    public List<Alert> getResult()
    {
        return alertsList;
    }      
    
}

