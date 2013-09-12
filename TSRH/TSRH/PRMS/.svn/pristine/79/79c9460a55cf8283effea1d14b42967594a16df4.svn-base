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
public class TestAlertHistoryArchive {
   
public boolean test()
{
        if(!testInsert())
        {
            System.err.println("FAILED: TestAlertHistoryArchive::testInsert");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlertHistoryArchive::testInsert");

        if(!testGetAlertHistoryArchiveForTheAlertId())
        {
            System.err.println("FAILED: TestAlertHistoryArchive::testGetAlertHistoryArchiveForTheAlertId");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlertHistoryArchive::testGetAlertHistoryArchiveForTheAlertId");
    
        return true;
}

public boolean testInsert()
{
        Alerthistoryarchive alerthistoryarchive = new Alerthistoryarchive();
        
        alerthistoryarchive.setAlertHistoryId(1);
        alerthistoryarchive.setAlertId(1);
        alerthistoryarchive.setAlertRemark("alerthistoryarchive remark");
        alerthistoryarchive.setAlertUpdateType("alerthistoryarchive update type");
        Date date = new Date();
        Timestamp timeStamp = new Timestamp(date.getTime());     
        alerthistoryarchive.setAlertUpdateTime(timeStamp);
       
        DBInsertAlertHistoryArchiveCommand insertCommand = new DBInsertAlertHistoryArchiveCommand(alerthistoryarchive);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(insertCommand);
        
        dbCommandInvoker.execute();
        
        return true;
}

public boolean testGetAlertHistoryArchiveForTheAlertId()
{
        DBGetAlertHistoryArchiveForTheAlertIdCommand getAlertHistoryArchiveCommand = new DBGetAlertHistoryArchiveForTheAlertIdCommand(1);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getAlertHistoryArchiveCommand);
        
        dbCommandInvoker.execute();                 
        
        List<Alerthistoryarchive> alertList = getAlertHistoryArchiveCommand.getResult();

        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlertHistoryArchive::testGetAlertHistoryArhchiveForTheAlertId AlertHistoryArchive List Empty");
            return false;
        }
        
        return true;       
}
    
}
