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
public class TestAlert {
   
public boolean test()
{
        if(!testInsert())
        {
            System.err.println("FAILED: TestAlert::testInsert");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlert::testInsert");

        if(!testUpdate())
        {
            System.err.println("FAILED: TestAlert::testUpdate");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlert::testUpdate");

        
        if(!testGetAlertsForTheUserId())
        {
            System.err.println("FAILED: TestAlert::testGetAlertsForTheUserId");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlert::testGetAlertsForTheUserId");

        if(!testGetAlertsForTheAlertId())
        {
            System.err.println("FAILED: TestAlert::testGetAlertsForTheAlertId");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlert::testGetAlertsForTheAlertId");

        if(!testGetAlertsBetweenTheTime())
        {
            System.err.println("FAILED: TestAlert::testGetAlertsBetweenTheTime");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlert::testGetAlertsBetweenTheTime");
        
        if(!testDelete())
        {
            System.err.println("FAILED: TestAlert::testDelete");
            return false;
        }
        else
            System.err.println("SUCCESS: TestAlert::testDelete");
        
        return true;     
    
}

public boolean testInsert()
{
        Alert alert = new Alert();

        //----Inset User Info
        /*
        Userinfo userInfo = new Userinfo();
        userInfo.setUserId("userId-1");
        userInfo.setUserName("userName-1");
        userInfo.setEmailId("userMail-1@gmail.com");       

        DBInsertUserInfoCommand insertUserInfoCommand = new DBInsertUserInfoCommand(userInfo);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(insertUserInfoCommand);
        
        dbCommandInvoker.execute();
         */
        
        TestUserInfo testUserInfo = new TestUserInfo();
        testUserInfo.testInsert();
        
        Userinfo userInfo = new Userinfo();
        userInfo.setUserId("userId-1");
        
        alert.setAlertId(1);
        alert.setUserinfo(userInfo);
        alert.setAlertCreatedBy("userId-1");
        alert.setAlertSourceId("alertSourceId-1");
        alert.setAlertSourceType(1);
        alert.setAlertState("alertStateNew");
        alert.setAlertText("alertText");
        Date date = new Date();
        Timestamp timeStamp = new Timestamp(date.getTime());
        alert.setAlertTime(timeStamp);
        alert.setAlertCreatedTime(timeStamp);
        alert.setRepeatFrequency(1);        
        
        DBInsertAlertCommand insertAlertCommand = new DBInsertAlertCommand(alert);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(insertAlertCommand);
        
        dbCommandInvoker.execute();
        
        return true;
    
}

public boolean testUpdate()
{

        DBGetAlertsForTheUserIdCommand getAlertCommand = new DBGetAlertsForTheUserIdCommand("userId-1");
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getAlertCommand);
        
        dbCommandInvoker.execute();                 
        
        List<Alert> alertList = getAlertCommand.getResult();
 
        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlert::testUpdate no Alert present to update");
            return false;
        }
                    
        alertList.get(0).setAlertText("updateAlertText");
        
        DBUpdateAlertCommand updateAlertCommand = new DBUpdateAlertCommand(alertList.get(0));
        
        dbCommandInvoker = new DBCommandInvoker(updateAlertCommand);
        
        dbCommandInvoker.execute(); 
        
        return true;    

}

public boolean testGetAlertsForTheUserId()
{
       
        DBGetAlertsForTheUserIdCommand getAlertCommand = new DBGetAlertsForTheUserIdCommand("userId-1");
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getAlertCommand);
        
        dbCommandInvoker.execute();                 
        
        List<Alert> alertList = getAlertCommand.getResult();

        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlert::testGetAlertsForTheUserId Alert List Empty");
            return false;
        }
        
        return true;       
}

public boolean testGetAlertsForTheAlertId()
{

        DBGetAlertsForTheUserIdCommand getAlertCommand = new DBGetAlertsForTheUserIdCommand("userId-1");
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getAlertCommand);
        
        dbCommandInvoker.execute();                 
        
        List<Alert> alertList = getAlertCommand.getResult();

        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlert::testGetAlertsForTheAlertId Alert List Empty for the user Id");
            return false;
        }
    
        DBGetAlertsForTheAlertIdCommand getAlertCommandForAlertId = new DBGetAlertsForTheAlertIdCommand(alertList.get(0).getAlertId());
        
        dbCommandInvoker = new DBCommandInvoker(getAlertCommandForAlertId);
        
        dbCommandInvoker.execute();                 
        
        alertList = getAlertCommand.getResult();
        
        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlert::testGetAlertsForTheAlertId AlertList Empty");
            return false;
        }
        
        return true;    
}

public boolean testGetAlertsBetweenTheTime()
{
       
        
        Date date = new Date();
        
        DBGetAlertsBetweenTheTimeCommand getAlertCommand = new DBGetAlertsBetweenTheTimeCommand(date, date);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getAlertCommand);
        
        dbCommandInvoker.execute();                 
        
        List<Alert> alertList = getAlertCommand.getResult();

        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlert::testGetAlertsBetweenTheTime AlertList Empty");
            return false;
        }
        
        return true;      
    
}

public boolean testDelete()
{

        DBGetAlertsForTheUserIdCommand getAlertCommand = new DBGetAlertsForTheUserIdCommand("userId-1");
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getAlertCommand);
        
        dbCommandInvoker.execute();                 
        
        List<Alert> alertList = getAlertCommand.getResult();

        if( (null == alertList) || (alertList.isEmpty()))
        {    
            System.out.println("TestAlert::testDelete Alert List Empty for the user Id");
            return false;
        }
    
        Alert alert = new Alert();
        alert.setAlertId(alertList.get(0).getAlertId());        
        
        DBDeleteAlertCommand deleteAlertCommand = new DBDeleteAlertCommand(alert);
        
        dbCommandInvoker = new DBCommandInvoker(deleteAlertCommand);
        
        dbCommandInvoker.execute();   

        TestUserInfo testUserInfo = new TestUserInfo();
        testUserInfo.testDelete();

        return true;
}

}
