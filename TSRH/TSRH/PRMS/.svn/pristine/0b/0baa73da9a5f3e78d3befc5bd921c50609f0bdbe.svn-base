/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package AlertSystemDatabaseTest;

import alertsystemdatabase.*;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 *
 * @author vivek lingegowda
 */
public class TestAlertHistory {

    
    public boolean test()
    {
        if(!testInsert())
        {
            System.err.println("FAILED: TestAlertHistory::testInsert");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlertHistory::testInsert");

        if(!testGetAlertHistoryForTheAlertId())
        {
            System.err.println("FAILED: TestAlertHistory::testGetAlertHistoryForTheAlertId");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlertHistory::testGetAlertHistoryForTheAlertId");

        
        if(!testDelete())
        {
            System.err.println("FAILED: TestAlertHistory::testDelete");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlertHistory::testDelete");
        
        return true;     
        
    }
    
public boolean testInsert()
{
    
        //Insert Test Alert
        TestAlert testAlert = new TestAlert();
        testAlert.testInsert();
        
        DBGetAlertsForTheUserIdCommand getAlertCommand = new DBGetAlertsForTheUserIdCommand("userId-1");
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getAlertCommand);
        
        dbCommandInvoker.execute();                 
        
        List<Alert> alertList = getAlertCommand.getResult();

        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlertHistory::testInsert Alert List Empty");
            return false;
        } 
        
        Alert alert = alertList.get(0);

        Alerthistory alertHistory = new Alerthistory();
        alertHistory.setAlertHistoryId(1);
        alertHistory.setAlert(alert);
        alertHistory.setAlertRemark("AlertHistoryRemark");
        Date date = new Date();
        Timestamp timeStamp = new Timestamp(date.getTime());        
        alertHistory.setAlertUpdateTime(timeStamp);
        alertHistory.setAlertUpdateType("AlertUpdateType");
        
        DBInsertAlertHistoryCommand insertAlertCommand = new DBInsertAlertHistoryCommand(alertHistory);
        
        dbCommandInvoker = new DBCommandInvoker(insertAlertCommand);
        
        dbCommandInvoker.execute();
        
        return true;
    
}
    
public boolean testGetAlertHistoryForTheAlertId()
{
        DBGetAlertsForTheUserIdCommand getAlertCommand = new DBGetAlertsForTheUserIdCommand("userId-1");
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getAlertCommand);
        
        dbCommandInvoker.execute();                 
        
        List<Alert> alertList = getAlertCommand.getResult();

        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlertHistory::testGetAlertHistoryForTheAlertId Alert List Empty");
            return false;
        } 

        DBGetAlertHistoryForTheAlertIdCommand getCommand = new DBGetAlertHistoryForTheAlertIdCommand(alertList.get(0).getAlertId());
        
        dbCommandInvoker = new DBCommandInvoker(getCommand);
        
        dbCommandInvoker.execute();

        List<Alerthistory> alertHistoryList = getCommand.getResult();

        if( (null == alertHistoryList) || (alertHistoryList.isEmpty()))
        {    
            System.out.println("TestAlertHistory::testGetAlertHistoryForTheAlertId AlertHistory List Empty");
            return false;
        } 
        
        return true;
    
}

public boolean testDelete()
{
    Alerthistory alertHistory = new Alerthistory();
    alertHistory.setAlertHistoryId(1);
    
    DBDeleteAlertHistoryCommand deleteCommand = new DBDeleteAlertHistoryCommand(alertHistory);
 
    DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(deleteCommand);
        
    dbCommandInvoker.execute();                 
   
        TestAlert testAlert = new TestAlert();
        testAlert.testDelete();
    
    return true;
}

}
