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
public class TestAlertArchive {
    
   
public boolean test()
{
        if(!testInsert())
        {
            System.err.println("FAILED: TestAlertArchive::testInsert");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlertArchive::testInsert");

        if(!testGetAlertArhchivesForTheUserId())
        {
            System.err.println("FAILED: TestAlertArchive::testGetAlertArhchivesForTheUserId");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlertArchive::testGetAlertArhchivesForTheUserId");

        if(!testGetAlertArhchivesForTheAlertId())
        {
            System.err.println("FAILED: TestAlertArchive::testGetAlertArhchivesForTheAlertId");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlertArchive::testGetAlertArhchivesForTheAlertId");
    
        return true;
}

public boolean testInsert()
{
        Alertarchive alertArchive = new Alertarchive();
        
        alertArchive.setAlertId(1);
        alertArchive.setUserId("userId-1");
        alertArchive.setAlertCreatedBy("userId-1");
        alertArchive.setAlertSourceId("alertSourceId-1");
        alertArchive.setAlertSourceType(1);
        alertArchive.setAlertState("alertStateNew");
        alertArchive.setAlertText("alertText");
        Date date = new Date();
        Timestamp timeStamp = new Timestamp(date.getTime());
        alertArchive.setAlertTime(timeStamp);
        alertArchive.setAlertCreatedTime(timeStamp);
        alertArchive.setRepeatFrequency(1);        
        alertArchive.setAlertArchivedTime(timeStamp);
        
        DBInsertAlertArchiveCommand insertCommand = new DBInsertAlertArchiveCommand(alertArchive);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(insertCommand);
        
        dbCommandInvoker.execute();
        
        return true;
}

public boolean testGetAlertArhchivesForTheUserId()
{
       
        DBGetAlertArchivesForTheUserIdCommand getAlertArchiveCommand = new DBGetAlertArchivesForTheUserIdCommand("userId-1");
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getAlertArchiveCommand);
        
        dbCommandInvoker.execute();                 
        
        List<Alertarchive> alertList = getAlertArchiveCommand.getResult();

        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlertArchive::testGetAlertArhchivesForTheUserId AlertArchive List Empty");
            return false;
        }
        
        return true;       
}

public boolean testGetAlertArhchivesForTheAlertId()
{
        DBGetAlertArchivesForTheAlertIdCommand getAlertArchiveCommand = new DBGetAlertArchivesForTheAlertIdCommand(1);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getAlertArchiveCommand);
        
        dbCommandInvoker.execute();                 
        
        List<Alertarchive> alertList = getAlertArchiveCommand.getResult();

        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlertArchive::testGetAlertArhchivesForTheAlertId AlertArchive List Empty");
            return false;
        }
        
        return true;       
}

}
