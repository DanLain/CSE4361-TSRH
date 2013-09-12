/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

import java.util.Date;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 *
 * @author vivek lingegowda
 */
public class DBMgrProxy implements DBMgr{

    private static ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
 
//------Operations on UserInfo Table----------
public void insertUserInfo(Userinfo userInfo)
{
    try{
        reentrantReadWriteLock.writeLock().lock();
    DBMgrSingletonBridge.getInstance().insertUserInfo(userInfo);
    reentrantReadWriteLock.writeLock().unlock();
    }
    finally{
    reentrantReadWriteLock.writeLock().unlock();    
    }
    
}

public Userinfo getUserInfo(String userId)
{   
    reentrantReadWriteLock.readLock().lock();
    
    Userinfo userInfo =  DBMgrSingletonBridge.getInstance().getUserInfo(userId);
    
    reentrantReadWriteLock.readLock().unlock();
    
    return userInfo;
}

public void updateUserInfo(Userinfo userInfo)
{
    try{
        reentrantReadWriteLock.writeLock().lock();
    DBMgrSingletonBridge.getInstance().updateUserInfo(userInfo);
    reentrantReadWriteLock.writeLock().unlock();
    }
    finally{
    reentrantReadWriteLock.writeLock().unlock();    
    }
    
}

public void deleteUserInfo(Userinfo userInfo)
{
    try{
        reentrantReadWriteLock.writeLock().lock();
    DBMgrSingletonBridge.getInstance().deleteUserInfo(userInfo);
    reentrantReadWriteLock.writeLock().unlock();
    }
    finally{
        reentrantReadWriteLock.writeLock().unlock();    
    }
    

}        

//------Operations on Alert Table----------
public void insertAlert(Alert alert)
{   
    try{
        reentrantReadWriteLock.writeLock().lock();
    DBMgrSingletonBridge.getInstance().insertAlert(alert);
    reentrantReadWriteLock.writeLock().unlock();
    }
    finally{
    reentrantReadWriteLock.writeLock().unlock();    
    }
    
}       

public void updateAlert(Alert alert)
{        
    try{
        reentrantReadWriteLock.writeLock().lock();
    DBMgrSingletonBridge.getInstance().updateAlert(alert);
    reentrantReadWriteLock.writeLock().unlock();
    }
    finally{
    reentrantReadWriteLock.writeLock().unlock();    
    }
    
}       

public List<Alert> getAlertsForTheUserId(String userId)
{   
    reentrantReadWriteLock.readLock().lock();
    
    List<Alert> alertList =  DBMgrSingletonBridge.getInstance().getAlertsForTheUserId(userId);
    
    reentrantReadWriteLock.readLock().unlock();
    
    return alertList;
}

public List<Alert> getAlertsCreatedByTheUserId(String userId)
{
    reentrantReadWriteLock.readLock().lock();
    
    List<Alert> alertList = DBMgrSingletonBridge.getInstance().getAlertsForTheUserId(userId);
    
    reentrantReadWriteLock.readLock().unlock();
    
    return alertList;
}



public List<Alert> getAlertsForTheAlertId(int alertId)
{   
    reentrantReadWriteLock.readLock().lock();
    
    List<Alert> alertList =  DBMgrSingletonBridge.getInstance().getAlertsForTheAlertId(alertId);
    
    reentrantReadWriteLock.readLock().unlock();
    
    return alertList;
}

public List<Alert> getAlertsBetweenTheTime(Date alertStartTime, Date alertEndTime)
{   
    reentrantReadWriteLock.readLock().lock();
    
    List<Alert> alertList =  DBMgrSingletonBridge.getInstance().getAlertsBetweenTheTime(alertStartTime, alertEndTime);
    
    reentrantReadWriteLock.readLock().unlock();
    
    return alertList;
}

public void deleteAlert(Alert alert)
{   
    try{
        reentrantReadWriteLock.writeLock().lock();
    
    DBMgrSingletonBridge.getInstance().deleteAlert(alert);
    
    reentrantReadWriteLock.writeLock().unlock();
    }
    finally{
            reentrantReadWriteLock.writeLock().unlock();
           }
    
}       

//------Operations on AlertHistory Table----------
public void insertAlertHistory(Alerthistory alertHistory)
{        
    try{
        reentrantReadWriteLock.writeLock().lock();
    DBMgrSingletonBridge.getInstance().insertAlertHistory(alertHistory);
    reentrantReadWriteLock.writeLock().unlock();
    }
    finally{
    reentrantReadWriteLock.writeLock().unlock();    
    }
    
}       

public List<Alerthistory> getAlertHistoryForTheAlertId(int alertId)
{   
    reentrantReadWriteLock.readLock().lock();
    
    List<Alerthistory> alertHistoryList =  DBMgrSingletonBridge.getInstance().getAlertHistoryForTheAlertId(alertId);
    
    reentrantReadWriteLock.readLock().unlock();
    
    return alertHistoryList;
}


public void deleteAlertHistory(Alerthistory alertHistory)
{        
   try{ 
    reentrantReadWriteLock.writeLock().lock();
    DBMgrSingletonBridge.getInstance().deleteAlertHistory(alertHistory);
    reentrantReadWriteLock.writeLock().unlock();
   }
   finally{
       reentrantReadWriteLock.writeLock().unlock();
   }
}       

//------Operations on AlertArchive Table----------
public void insertAlertArchive(Alertarchive alertArchive)
{        
    try{
        reentrantReadWriteLock.writeLock().lock();
    DBMgrSingletonBridge.getInstance().insertAlertArchive(alertArchive);
    reentrantReadWriteLock.writeLock().unlock();
    }
    finally{
        reentrantReadWriteLock.writeLock().unlock();
    }
}       

public List<Alertarchive> getAlertArhchivesForTheUserId(String userId)
{   
    reentrantReadWriteLock.readLock().lock();
    
    List<Alertarchive> alertarchiveList =  DBMgrSingletonBridge.getInstance().getAlertArhchivesForTheUserId(userId);
    
    reentrantReadWriteLock.readLock().unlock();
    
    return alertarchiveList;
}

public List<Alertarchive> getAlertArchiveForTheAlertId(int alertId)
{   
    reentrantReadWriteLock.readLock().lock();
    
    List<Alertarchive> alertarchiveList =  DBMgrSingletonBridge.getInstance().getAlertArchiveForTheAlertId(alertId);
    
    reentrantReadWriteLock.readLock().unlock();
    
    return alertarchiveList;
}

//------Operations on AlertHistoryArchive Table----------
public void insertAlertHistoryArchive(Alerthistoryarchive alertHistoryArchive)
{        
    try{
        reentrantReadWriteLock.writeLock().lock();
    DBMgrSingletonBridge.getInstance().insertAlertHistoryArchive(alertHistoryArchive);
    reentrantReadWriteLock.writeLock().unlock();
    }
    finally{
    reentrantReadWriteLock.writeLock().unlock();    
    }
    
    
}       

public List<Alerthistoryarchive> getAlertHistoryArchiveForTheAlertId(int alertId)
{   
    reentrantReadWriteLock.readLock().lock();
    
    List<Alerthistoryarchive> alerthistoryarchiveList =  DBMgrSingletonBridge.getInstance().getAlertHistoryArchiveForTheAlertId(alertId);
    
    reentrantReadWriteLock.readLock().unlock();
    
    return alerthistoryarchiveList;
}


public List<String> getEmployeebyLastFirstName()
{   

    List<String> EmployeeNameList =  DBMgrSingletonBridge.getInstance().getEmployeebyLastFirstName();
    
    return EmployeeNameList;
}

}