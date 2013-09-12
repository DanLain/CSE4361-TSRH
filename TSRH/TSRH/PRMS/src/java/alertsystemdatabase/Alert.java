package alertsystemdatabase;
// Generated Dec 28, 2011 9:22:05 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;
import java.sql.Timestamp;
import java.util.*;
import PRMSalert.*;
import PRMSAlertState.*;
import com.mysql.jdbc.Connection;
import controller.Controller;
import dbmanager.DBConfig;
import edu.uta.tsrh.RoleManagement.Helper.MailHelper;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Timestamp.*;
import java.text.*;
/**
 * Alert generated by hbm2java
 */
public class Alert  implements java.io.Serializable {


     private Integer alertId;
     private Userinfo userinfo;
     private Timestamp alertCreatedTime;
     private Timestamp alertTime;
     private String alertCreatedBy;
     private String alertText;
     private Integer alertSourceType;
     private String alertSourceId;
     private String alertState;
     private Byte repeating;
     private Integer repeatFrequency;
     private Byte severity;
     private Set alerthistories = new HashSet(0);
     private AlertStateContext state;
     private Hashtable errors;

    public Alert() {
    }

	
    public Alert(Userinfo userinfo, Timestamp alertCreatedTime, String alertCreatedBy, String alertText, String alertSourceId, String alertState) {
        this.userinfo = userinfo;
        this.alertCreatedTime = alertCreatedTime;
        this.alertCreatedBy = alertCreatedBy;
        this.alertText = alertText;
        this.alertSourceId = alertSourceId;
        this.alertState = alertState;
    }
    public Alert(Userinfo userinfo, Timestamp alertCreatedTime, Timestamp alertTime, String alertCreatedBy, String alertText, Integer alertSourceType, String alertSourceId, String alertState, Byte repeating, Integer repeatFrequency, Byte severity, Set alerthistories) {
       this.userinfo = userinfo;
       this.alertCreatedTime = alertCreatedTime;
       this.alertTime = alertTime;
       this.alertCreatedBy = alertCreatedBy;
       this.alertText = alertText;
       this.alertSourceType = alertSourceType;
       this.alertSourceId = alertSourceId;
       this.alertState = alertState;
       this.repeating = repeating;
       this.repeatFrequency = repeatFrequency;
       this.severity = severity;
       this.alerthistories = alerthistories;
    }
   
    public Integer getAlertId() {
        return this.alertId;
    }
    
    public void setAlertId(Integer alertId) {
        this.alertId = alertId;
    }
    public Userinfo getUserinfo() {
        return this.userinfo;
    }
    
    public void setUserinfo(Userinfo userinfo) {
        this.userinfo = userinfo;
    }
    public Timestamp getAlertCreatedTime() {
        return this.alertCreatedTime;
    }
    
    public void setAlertCreatedTime(Timestamp alertCreatedTime) {
        this.alertCreatedTime = alertCreatedTime;
    }
    public Timestamp getAlertTime() {
        return this.alertTime;
    }
    
    public void setAlertTime(Timestamp alertTime) {
        this.alertTime = alertTime;
    }
    public String getAlertCreatedBy() {
        return this.alertCreatedBy;
    }
    
    public void setAlertCreatedBy(String alertCreatedBy) {
        this.alertCreatedBy = alertCreatedBy;
    }
    public String getAlertText() {
        return this.alertText;
    }
    
    public void setAlertText(String alertText) {
        this.alertText = alertText;
    }
    public Integer getAlertSourceType() {
        return this.alertSourceType;
    }
    
    public void setAlertSourceType(Integer alertSourceType) {
        this.alertSourceType = alertSourceType;
    }
    public String getAlertSourceId() {
        return this.alertSourceId;
    }
    
    public void setAlertSourceId(String alertSourceId) {
        this.alertSourceId = alertSourceId;
    }
    public String getAlertState() {
        return this.alertState;
    }
    
    public void setAlertState(String alertState) {
        this.alertState = alertState;
    }
    public Byte getRepeating() {
        return this.repeating;
    }
    
    public void setRepeating(Byte repeating) {
        this.repeating = repeating;
    }
    public Integer getRepeatFrequency() {
        return this.repeatFrequency;
    }
    
    public void setRepeatFrequency(Integer repeatFrequency) {
        this.repeatFrequency = repeatFrequency;
    }
    public Byte getSeverity() {
        return this.severity;
    }
    
    public void setSeverity(Byte severity) {
        this.severity = severity;
    }
    public Set getAlerthistories() {
        return this.alerthistories;
    }
    
    public void setAlerthistories(Set alerthistories) {
        this.alerthistories = alerthistories;
    }

public boolean validate() {
    boolean allOk=true;
    if (alertText.equals("")) {
      errors.put("alertText","Please enter the Alert text");
      alertText="";
      allOk=false;
    }
    
    if (repeatFrequency > 6 & repeatFrequency < 0 ) {
      errors.put("repeatFrequency","Please enter a repeat Frequency");
      repeatFrequency=0;
      allOk=false;
    }
    if (severity > 5 & severity < 0) {
      errors.put("severity","Please enter the Alert Severity");
      severity=0;
      allOk=false;
    }
    if (alertCreatedBy.equals("")) {
      errors.put("alertSetBy","Please enetr the Alert Set By");
      alertCreatedBy="";
      allOk=false;
    }
        return allOk;
  }
  public String getErrorMsg(String s) {
    String errorMsg =(String)errors.get(s.trim());
    return (errorMsg == null) ? "":errorMsg;
  }
  public String alertmailBody(Timestamp sqlDate,String CreatedBy,String Firstname, String Lastname)
  {
       String mailBody = "Hi "+ Firstname + " " + Lastname + "\n\t An Alert message has been sent to you, which expires on "+sqlDate+"  by " + CreatedBy ;
        mailBody = mailBody + "\n\nPlease login to the TSRH system to check the Alert Message " ;
        mailBody = mailBody + " \n\n Thanks,\n TSRH Admin";
        
        return mailBody;
      
  }
  public boolean sendMail(String Email,String mess)
  {
       MailHelper mailHelper = new MailHelper(Email, "New Alert has been Sent to you in TSRH System", mess);
        boolean mailSent = mailHelper.sendMail();
      if(mailSent)
      return true;
      else
      return false;
  }
  public String ReturnUserIdfromPatient(String Pid) throws SQLException, ClassNotFoundException
  {
      String[] DoctorId = null;
      String doc=null;
            java.sql.Connection conrup;
            java.sql.Statement srup, s1;
            java.sql.ResultSet rsrup;
            boolean result=true;
            conrup = null;
            srup = null;
            rsrup = null;
            
           // Controller dba = new Controller();
          //  conrup = dba.getConnection();
            
             DBConfig cfg = new DBConfig();
                            String ipAddress = cfg.getProperty("ipAddress");
                String dbPort = cfg.getProperty("mDbPort");
                String dbName = cfg.getProperty("mDbName");
                String dbUserName = cfg.getProperty("mDbUser");
                String dbPassword = cfg.getProperty("mDbPwds");
                
// creating connection string
                String dbUrl = "jdbc:mysql://"+ipAddress+":"+dbPort+"/"+dbName;                
                
                Class.forName(cfg.getProperty("dbConnect"));
                
                conrup = (Connection) DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
            
            
            String sqlrup ="SELECT DoctorId FROM `patientrecord` where patientid ="+Pid ;
            // String sql = "SELECT username,email,firstName,lastName FROM user where userId=" + "'" + id1 + "'";
                try {

                    srup = conrup.createStatement();
                    rsrup = srup.executeQuery(sqlrup);
                    
                   
                    while (rsrup.next()) {
                        doc=rsrup.getString(1);
                        //DoctorId[0] = rs.getString(1);
                        
                    }
                }
                 catch (Exception e) {
                    e.printStackTrace();result=false;
                } //      }//end of for loop
                finally {
                    try{if (rsrup != null) {
                        rsrup.close();
                    }
                    
                    if (srup != null) {
                        srup.close();
                        //   s1.close();
                    }
                    } catch (Exception e) {
                    e.printStackTrace();
                    result=false;
                }
                }
                return doc;
            
  }
  public boolean setAlert(Timestamp sqlDate,String CreatedBy,String msg, String title, int freq,int priority, String[] useriddd ) throws SQLException, ClassNotFoundException
  {
 //" + sqlDate + "','" + CreatedBy + "','" + AlertCreatedBy + "','" + msg + "',0,'" + title + "','Set',0," + freq + "," + priority + ")";
            java.sql.Connection con;
            java.sql.Statement s, s1;
            java.sql.ResultSet rs,rs1;
            java.util.Date fromdate; 
            java.util.Date todate; 
            java.util.Date alertdate = new java.util.Date(sqlDate.getTime());
            String vac_msg,vac_temp;
            String[] vac_forward = new String[1];
            SimpleDateFormat dateFormats = new SimpleDateFormat("MM/dd/yyyy");
            boolean result=true;
            con = null;
            s = null;
            rs = null;
            String Email=null;

           // Controller dba = new Controller();
           // con = dba.getConnection();
            
            DBConfig cfg = new DBConfig();
                String ipAddress = cfg.getProperty("ipAddress");
                String dbPort = cfg.getProperty("mDbPort");
                String dbName = cfg.getProperty("mDbName");
                String dbUserName = cfg.getProperty("mDbUser");
                String dbPassword = cfg.getProperty("mDbPwds");
                
// creating connection string
                String dbUrl = "jdbc:mysql://"+ipAddress+":"+dbPort+"/"+dbName;                
                
                Class.forName(cfg.getProperty("dbConnect"));
                
                con = (Connection) DriverManager.getConnection(dbUrl,dbUserName,dbPassword);

          for (int i = 0; i < useriddd.length; i++) {
                String id1 = useriddd[i];
                
                String sql = "SELECT username,email,firstName,lastName FROM user where userId=" + "'" + id1 + "'";
                try {

                    s = con.createStatement();
                    rs = s.executeQuery(sql);
                    String names = null,Fname=null,Lname=null;
                    // String id1= rs.getString(3);
                   String AlertCreatedBy=null ;
                    while (rs.next()) {
                        AlertCreatedBy = rs.getString(1);
                        Email=rs.getString(2);
                        Fname=rs.getString(3);
                        Lname=rs.getString(4);
                    }
                    // To implement the vacation
                    String sql1 = "SELECT Vacation_from,Vacation_to,Forward_to_userid,Message FROM alertvacation where Created_by_userid=" + "'" + AlertCreatedBy + "'";   
                    rs1 = s.executeQuery(sql1);
                    
                     while (rs1.next()) {
                         
                    String temp1[] = rs1.getString(1).split("-");
                    String temp2[] = rs1.getString(2).split("-");
                    String ft = temp1[1]+"/"+temp1[2]+"/"+temp1[0];
                    String tt = temp2[1]+"/"+temp2[2]+"/"+temp2[0];
                    
                    fromdate = dateFormats.parse(ft);
                    todate   = dateFormats.parse(tt);
                   // fromdate = new java.util.Date(Integer.parseInt(temp1[0]),Integer.parseInt(temp1[1]),Integer.parseInt(temp1[2]));
                   // todate  = new java.util.Date(Integer.parseInt(temp2[0]),Integer.parseInt(temp2[1]),Integer.parseInt(temp2[2]));
                   
                    vac_forward[0]=rs1.getString(3);
                    vac_msg = rs1.getString(4);
                    vac_temp = "Alert Message: "+msg+"\n"+". Alert forwarded because User "+AlertCreatedBy+" is on vacation."+"\n"+" Vacation Message: "+vac_msg;
                    if(alertdate.after(fromdate)&&alertdate.before(todate))
                    {
                    setAlert(sqlDate,CreatedBy,vac_temp,title,freq,priority,vac_forward);
                    }
                    
                    
                    }   
                    //End To implement the vacation
                    String sql2 = "insert  into alert(`alertCreatedTime`,`alertTime`,`alertCreatedBy`,`userId`,`alertText`,`alertSourceType`,`alertSourceId`,`alertState`,`repeating`,`repeat_frequency`,`severity`) values (NOW(),'" + sqlDate + "','" + CreatedBy + "','" + AlertCreatedBy + "','" + msg + "',0,'" + title + "','Set',0," + freq + "," + priority + ")";
                    //s = con.createStatement();
                    s.executeUpdate(sql2);
                    String message = alertmailBody(sqlDate,CreatedBy,Fname,Lname);
                  
                }//end of try
                catch (Exception e) {
                    e.printStackTrace();result=false;
                         } 
                finally {
                    try{if (rs != null) {
                        rs.close();
                    }
                    
                    if (s != null) {
                        s.close();
                      
                    }
                    } catch (Exception e) {
                    e.printStackTrace();
                    result=false;
                }
                }
            }
            try{
                if (con != null) {
                con.close();
            }
            }
           catch (Exception e) {
                    e.printStackTrace();
                    result=false;
                }
           
            
      return result;
      
      
      
     /* state = new AlertStateContext();
      SetAlertController setAlertController = new SetAlertController(this);
      setAlertController.setAlert();
      state.alertSet(this); */
  }
  
  public void view()
  {
    state.alertDisplayed(this);  
  }
  
  public void setState()
  {
      state.alertSet(this);
  }
  
  public void delete()
  {
      state.Alertclosed(this);
  }
  
  public void snooze(Timestamp snoozeTime)
  {
      this.alertTime = snoozeTime;
      state.Alertsnoozed(this);
  }




}

