/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package AlertSystemDatabaseTest;

import alertsystemdatabase.*;

/**
 *
 * @author vivek lingegowda
 */
public class TestUserInfo {
    
    public boolean test()
    {
        if(!testInsert( ))
        {
            System.err.println("FAILED: TestUserInfo::testInsert");
            return false;
        }
        else
            System.err.println("SUCCESS: TestUserInfo::testInsert");

        if(!testUpdate("userId-1", "updatedUserMail-1@gmail.com"))
        {
            System.err.println("FAILED: TestUserInfo::testUpdate");
            return false;
        }
        else
            System.err.println("SUCCESS: TestUserInfo::testUpdate");

        
        if(!testGet("userId-1"))
        {
            System.err.println("FAILED: TestUserInfo::testGet");
            return false;
        }
        else
            System.err.println("SUCCESS: TestUserInfo::testGet");

        if(!testDelete())
        {
            System.err.println("FAILED: TestUserInfo::testDelete");
            return false;
        }
        else
            System.err.println("SUCCESS: TestUserInfo::testDelete");
        
        return true;
        
    }
    
    public boolean testInsert()
    {
 
        Userinfo userInfo = new Userinfo();
        userInfo.setUserId("userId-1");
        userInfo.setUserName("userName-1");
        userInfo.setEmailId("userMail-1@gmail.com");

        DBInsertUserInfoCommand insertUserInfoCommand = new DBInsertUserInfoCommand(userInfo);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(insertUserInfoCommand);
        
        dbCommandInvoker.execute();
        
        return true;
    }
            
    public boolean testUpdate(String userId, String emailId)
    {

        DBGetUserInfoCommand getUserInfoCommand = new DBGetUserInfoCommand(userId);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getUserInfoCommand);
        
        dbCommandInvoker.execute();        

        Userinfo userInfo = getUserInfoCommand.getResult();
        
        if(null == userInfo)
        {
            System.out.println("GetUserInfo returned NULL");
            return false;
        }
        
        userInfo.setEmailId(emailId);
        
        DBUpdateUserInfoCommand updateUserInfoCommand = new DBUpdateUserInfoCommand(userInfo);
        
        dbCommandInvoker = new DBCommandInvoker(updateUserInfoCommand);
        
        dbCommandInvoker.execute();         
        
        return true;
                
    }
        
    public boolean testGet(String userId)
    {

        DBGetUserInfoCommand getUserInfoCommand = new DBGetUserInfoCommand(userId);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(getUserInfoCommand);
        
        dbCommandInvoker.execute();        

        Userinfo userInfo = getUserInfoCommand.getResult();
        
        if(null == userInfo)
        {
            System.out.println("GetUserInfo returned NULL");
            return false;
        }        
        
        return true;
        
    }
    
    public boolean testDelete()
    {
             
        Userinfo userInfo = new Userinfo();
        userInfo.setUserId("userId-1");
        
       DBDeleteUserInfoCommand deleteUserInfoCommand = new DBDeleteUserInfoCommand(userInfo);
        
        DBCommandInvoker dbCommandInvoker = new DBCommandInvoker(deleteUserInfoCommand);
        
        dbCommandInvoker.execute();
        
        return true;
      
    }
    
}
