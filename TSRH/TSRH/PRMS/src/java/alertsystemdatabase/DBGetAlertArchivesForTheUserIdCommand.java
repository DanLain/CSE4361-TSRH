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
public class DBGetAlertArchivesForTheUserIdCommand   extends DBGetCommand{

 
    private String userId;
    private List<Alertarchive> alertArchiveList;
    
    public DBGetAlertArchivesForTheUserIdCommand(String userId)
    {
        this.userId = userId;
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        alertArchiveList = dbMgrProxy.getAlertArhchivesForTheUserId(userId);
        
    }
    
    public List<Alertarchive> getResult()
    {
        return alertArchiveList;
    }      
    
}
