package alertsystemdatabase;


/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
import java.sql.Timestamp;
import java.util.*;
import org.hibernate.*;
import edu.uta.tsrh.Logger.ILogger;
import edu.uta.tsrh.Logger.Log4JLogger;

    


    //TestRequest Records.
/**
 *
 * @author vivek lingegowda
 */
public class MySqlAccessImpl implements DBAccessImpl {
    
    Session session = null;
    ILogger logger = Log4JLogger.GetLoggerObject();
    
    public MySqlAccessImpl(){
//        this.session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
 
    private void openSession(){
         this.session = HibernateUtil.getSessionFactory().openSession();
    }
    
  
    private void closeSession(){
        if(null != session)
        {
        session.flush();
        session.close();
        session=null;
        }
    }
    
    //------Operations on UserInfo Table----------
    
    public void insertUserInfo(Userinfo userInfo){                
        
        closeSession();
        openSession();
              
         Transaction txn = null;
         
         txn = session.beginTransaction();
         
         session.save(userInfo);
         
         txn.commit();
             
    }

    @Override
public Userinfo getUserInfo(String userId)
{ Userinfo u=new Userinfo();
         return u;
       /* closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();
        
        //openSession();
        
        List<Userinfo> userInfoList = null;
        
        try {            
            
            Query q = session.createQuery 
            ("from Userinfo as userInfo where userInfo.userId='"+userId+"'");
            userInfoList = (List<Userinfo>) q.list();
            } catch (Exception e) {
            e.printStackTrace();
            }
        
        txn.commit();
        
        //closeSession();
        if(userInfoList.isEmpty())
            return null;
        else
            return userInfoList.get(0);*/

}

public void updateUserInfo(Userinfo userInfo)
{
             
        closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();
        
        int result;
        
        try {            
            
            Query q = session.createQuery 
            ("update Userinfo set userName = :userName, emailId = :emailId "+
              "where userId = :userId");
            
            q.setParameter("userName", userInfo.getUserName());
            q.setParameter("emailId", userInfo.getEmailId());
            q.setParameter("userId", userInfo.getUserId());
            
            result = q.executeUpdate();
            } catch (Exception e) {
            e.printStackTrace();
            }
        
        txn.commit();
               
}

public void deleteUserInfo(Userinfo userInfo)
{
 
        closeSession();
        openSession();

         int result = 0;
         Transaction txn = session.beginTransaction();
         
         try {            
            
            Query q = session.createQuery 
            ("delete Userinfo where userId = :userId");
            q.setParameter("userId", userInfo.getUserId());
            result = q.executeUpdate();
         } catch (Exception e) {
            e.printStackTrace();
         }
 
         txn.commit();     
  
}

//------Operations on Alert Table----------
    @Override
    public void insertAlert(Alert alert){                
        
        closeSession();
        openSession();
              
         Transaction txn = null;
         
         txn = session.beginTransaction();
         
         session.save(alert);
         
         txn.commit();
             
    }

public void updateAlert(Alert alert)
{
             
        closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();
        
        int result;
        
        try {            
            
            Query q = session.createQuery 
            ("update Alert set alertCreatedTime = :alertCreatedTime,"
                    + " alertTime = :alertTime,"
                    + " alertCreatedBy = :alertCreatedBy,"
                    + " alertText = :alertText,"
                    + " alertSourceType = :alertSourceType,"
                    + " alertSourceId = :alertSourceId,"
                    + " alertState = :alertState,"
                    + " repeating = :repeating,"
                    + " repeatFrequency = :repeatFrequency,"
                    + " severity = :severity"
                    + " where alertId = :alertId");
            
            q.setParameter("alertCreatedTime", alert.getAlertCreatedTime());
            q.setParameter("alertTime", alert.getAlertTime());
            q.setParameter("alertCreatedBy", alert.getAlertCreatedBy());
            q.setParameter("alertText", alert.getAlertText());
            q.setParameter("alertSourceType", alert.getAlertSourceType());
            q.setParameter("alertSourceId", alert.getAlertSourceId());
            q.setParameter("alertState", alert.getAlertState());
            q.setParameter("repeating", alert.getRepeating());
            q.setParameter("repeatFrequency", alert.getRepeatFrequency());
            q.setParameter("severity", alert.getSeverity());
            q.setParameter("alertId", alert.getAlertId());
            
            result = q.executeUpdate();
            } catch (Exception e) {
            e.printStackTrace();
            }
        
        txn.commit();
               
}     

public List<Alert> getAlertsForTheUserId(String userId){
         
        closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();
        
        //openSession();
        
        List<Alert> alertList = null;
        
        try {            
            
            Query q = session.createQuery 
            ("from Alert as alert where alert.userinfo.userId='"+userId+"'");
            alertList = (List<Alert>) q.list();
            } catch (Exception e) {
            e.printStackTrace();
            }
        
        txn.commit();
        
        //closeSession();
        return alertList;   
    
}

public List<Alert> getAlertsCreatedByTheUserId(String userId){
         
        closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();
        
        //openSession();
        
        List<Alert> alertList = null;
        
        try {            
            
            Query q = session.createQuery 
            ("from Alert as alert where alert.alertCreatedBy='"+userId+"'");
            alertList = (List<Alert>) q.list();
            } catch (Exception e) {
            e.printStackTrace();
            }
        
        txn.commit();
        
        //closeSession();
        return alertList;   
    
}


public List<Alert> getAlertsForTheAlertId(int alertId)
{
         
        closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();
        
        //openSession();
        
        List<Alert> alertList = null;
        
        try {            
            
            Query q = session.createQuery 
            ("from Alert as alert where alert.alertId='"+alertId+"'");
            alertList = (List<Alert>) q.list();
            } catch (Exception e) {
            e.printStackTrace();
            }
        
        txn.commit();
        
        //closeSession();
        return alertList;   
    
}

public List<Alert> getAlertsBetweenTheTime(Date alertStartDate, Date alertEndDate)
{

        System.out.println("Time from Dates "+alertStartDate.getTime()+"  And "+alertEndDate.getTime());
    
        Timestamp startTime = new Timestamp(alertStartDate.getTime());
        Timestamp endTime = new Timestamp(alertEndDate.getTime());
        
        closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();
        
            //---Display times in Alert Info------------------
            System.out.println("Displaying the Times of Alert s in the System");
            SQLQuery displayQuery = session.createSQLQuery
            ("SELECT alert.* from alert" );            
            displayQuery.addEntity(Alert.class);
            List<Alert> alertDisplayList = displayQuery.list();
            Iterator it = alertDisplayList.iterator();           
            
            while(it.hasNext())
            {
                Alert alert = (Alert)it.next();
                System.out.println("Alert Id: "+alert.getAlertId()+"  Alert Time: "+alert.getAlertTime().getTime());
            }
            
        //openSession();
        
        List<Alert> alertMasterList = null;
        
        try {                  
        
            //----------Query for the Alerts between time------------
            System.out.println("Searching for Alerts Between Time "+startTime.getTime()+"  And "+endTime.getTime());
            SQLQuery alertQuery = session.createSQLQuery
            //("SELECT alert.* from alert where alertTime >= '"+startTime+"' and alertTime <= '"+endTime+"'" );
            ("SELECT alert.* from alert where alertTime >= '"+startTime+"' and alertTime <= '"+endTime+"'" );
            alertQuery.addEntity(Alert.class);            
            alertMasterList = alertQuery.list();
                                
            System.out.println("No of Alerts Found: "+alertMasterList.size());
            
            } catch (Exception e) {
                e.printStackTrace();
            }
        
        txn.commit();
                
        return alertMasterList;       
    
}

public void deleteAlert(Alert alert){
            
        closeSession();
        openSession();

         int result = 0;
         Transaction txn = session.beginTransaction();
         
         try {            
              
            Query q = session.createQuery 
            ("delete Alert where alertId='"+alert.getAlertId()+"'");
            result = q.executeUpdate();
         } catch (Exception e) {
            e.printStackTrace();
         }
 
         txn.commit();     
  
}

//------Operations on AlertHistory Table----------
public void insertAlertHistory(Alerthistory alertHistory){                
        
        closeSession();
        openSession();
              
         Transaction txn = null;
         
         txn = session.beginTransaction();
         
         session.save(alertHistory);
         
         txn.commit();
             
    }

public List<Alerthistory> getAlertHistoryForTheAlertId(int alertId)
{
         
        closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();
        
        //openSession();
        
        List<Alerthistory> alertHistoryList = null;
        
        try {            
            
            Query q = session.createQuery 
            ("from Alerthistory as alertHistory where alertHistory.alert.alertId='"+alertId+"'");
            alertHistoryList = (List<Alerthistory>) q.list();
            } catch (Exception e) {
            e.printStackTrace();
            }
        
        txn.commit();
        
        return alertHistoryList;

}

public void deleteAlertHistory(Alerthistory alertHistory)
{
 
        closeSession();
        openSession();

         int result = 0;
         Transaction txn = session.beginTransaction();
         
         try {            
            
            Query q = session.createQuery 
            ("delete Alerthistory where alertHistoryId = '"+alertHistory.getAlertHistoryId()+"'");
            result = q.executeUpdate();
         } catch (Exception e) {
            e.printStackTrace();
         }
 
         txn.commit();     
  
}

//------Operations on AlertArchive Table----------

public void insertAlertArchive(Alertarchive alertArchive)
{       
        closeSession();
        openSession();
              
         Transaction txn = null;
         
         txn = session.beginTransaction();
         
         session.save(alertArchive);
         
         txn.commit();
             
    }

public List<Alertarchive> getAlertArhchivesForTheUserId(String userId){
         
        closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();      
       
        List<Alertarchive> alertArchiveList = null;
        
        try {            
            
            Query q = session.createQuery 
            ("from Alertarchive as alertArchive where alertArchive.userId='"+userId+"'");
            alertArchiveList = (List<Alertarchive>) q.list();
            } catch (Exception e) {
            e.printStackTrace();
            }
        
        txn.commit();
        
        return alertArchiveList;   
    
}

public List<Alertarchive> getAlertArchiveForTheAlertId(int alertId)
{
         
        closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();        
        
        List<Alertarchive> alertArchiveList = null;
        
        try {            
            
            Query q = session.createQuery 
            ("from Alertarchive as alertArchive where alertArchive.alertId='"+alertId+"'");
            alertArchiveList = (List<Alertarchive>) q.list();
            } catch (Exception e) {
            e.printStackTrace();
            }
        
        txn.commit();
        
        //closeSession();
        return alertArchiveList;   
    
}

//------Operations on AlertHistoryArchive Table----------
public void insertAlertHistoryArchive(Alerthistoryarchive alertHistoryArchive)
{       
        closeSession();
        openSession();
              
         Transaction txn = null;
         
         txn = session.beginTransaction();
         
         session.save(alertHistoryArchive);
         
         txn.commit();
             
    }

public List<Alerthistoryarchive> getAlertHistoryArchiveForTheAlertId(int alertId)
{
         
        closeSession();
        openSession();
        
        Transaction txn = session.beginTransaction();        
        
        List<Alerthistoryarchive> alertHistoryArchiveList = null;
        
        try {            
            
            Query q = session.createQuery 
            ("from Alerthistoryarchive as alertHistoryArchive where alertHistoryArchive.alertId='"+alertId+"'");
            alertHistoryArchiveList = (List<Alerthistoryarchive>) q.list();
            } catch (Exception e) {
            e.printStackTrace();
            }
        
        txn.commit();
        
        //closeSession();
        return alertHistoryArchiveList;   
    
}


    public List<String> getEmployeebyLastFirstName() {


        List<String> EmployeeNameList;
        
        EmployeeNameList = new ArrayList<String>(); 
        try{
            Query query = session.createQuery("SELECT `first_name` FROM `employee` WHERE 1");

            Iterator itr = query.iterate();

            while (itr.hasNext()) {
                Object element = itr.next();
                EmployeeNameList.add(element.toString());

            }

        }catch(Exception e){
            logger.LogError("CurrentUser", "AlertModule", e);
            //Need to be more specific about which exceptions get caught and log them accordingly
        }
        
        return EmployeeNameList;
        //return EmployeeNameList;
        
        
    }
}