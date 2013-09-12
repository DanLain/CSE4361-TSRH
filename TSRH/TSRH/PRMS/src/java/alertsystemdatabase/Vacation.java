/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package alertsystemdatabase;

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
 *
 * @author Sravan
 */
public class Vacation implements java.io.Serializable{
    
    public int         vacation_id; 
    public String      vacation_title;
    public String      created_by_userid;
    public String      vacation_start;
    public String        vacation_end;
    public String      forward_to;
    public String      message;
    public Timestamp   created_on;
    
    public Vacation(){
    }
    
     public boolean setVacation(String title,String CreatedBy,Date sDate,Date eDate,String forwardTo,String msg) throws SQLException, ClassNotFoundException
  {
 
            java.sql.Connection con;
            java.sql.Statement s;
            java.sql.ResultSet rs;
            boolean result=true;
            con = null;
            s = null;
            rs = null;
           

            
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
                try 
                {
                    s = con.createStatement();
                    s.executeUpdate("insert  into alertvacation(`Vacation_title`,`Created_by_userid`,`Vacation_from`,`Vacation_to`,`Forward_to_userid`,`Message`) values ('" +title + "','" +CreatedBy + "','" + sDate + "','" + eDate + "','" + forwardTo + "','" + msg + "')");
                    
                }//end of try
                catch (Exception e) {
                   
                    e.printStackTrace();result=false;
                } //      }//end of for loop
                finally {
                    try{
                        if (rs != null) {
                        rs.close();
                        }
                    
                    if (s != null) {
                        s.close();
                       
                      }
                     if (con != null) {
                          con.close();
                      }
                    } catch (Exception e) {
                    e.printStackTrace();
                    result=false;
                  }
                }
            
       
             return result;
    }
    
     public boolean editVacation(String vId,String title,String CreatedBy,Date sDate,Date eDate,String forwardTo,String msg) throws SQLException, ClassNotFoundException
  {
 
            java.sql.Connection con;
            java.sql.Statement s;
            java.sql.ResultSet rs;
            boolean result=true;
            con = null;
            s = null;
            rs = null;
           

            
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
                try 
                {
                    s = con.createStatement();
                    s.executeUpdate("UPDATE alertvacation SET Vacation_title = '" +title + "',Created_by_userid = '" +CreatedBy + "',Vacation_from = '" + sDate + "',Vacation_to = '" + eDate + "',Forward_to_userid = '" + forwardTo + "',Message = '" + msg + "' WHERE Vacation_Id = "+vId);
                    
                }//end of try
                catch (Exception e) {
                   
                    e.printStackTrace();result=false;
                } //      }//end of for loop
                finally {
                    try{
                        if (rs != null) {
                        rs.close();
                        }
                    
                    if (s != null) {
                        s.close();
                       
                      }
                     if (con != null) {
                          con.close();
                      }
                    } catch (Exception e) {
                    e.printStackTrace();
                    result=false;
                  }
                }
            
       
             return result;
    } 
     
  public Vacation getVacation(int vid)throws SQLException, ClassNotFoundException
  {
    
  Vacation result = new Vacation();
  
            java.sql.Connection con;
            java.sql.Statement s;
            java.sql.ResultSet rs,rs1;
            
            con = null;
            s = null;
            rs = null;
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
                try 
                {
                    s = con.createStatement();
                    rs= s.executeQuery("SELECT * FROM alertvacation where Vacation_Id ="+vid);
                    if(rs.next())
                    { 
                        
                        
                    vacation_id       = rs.getInt(1);
                    vacation_title    = rs.getString(2);
                    created_by_userid = rs.getString(3);
                    
                    String temp1[] = rs.getString(4).split("-");
                    String temp2[] = rs.getString(5).split("-");
                    vacation_start = temp1[1]+"/"+temp1[2]+"/"+temp1[0];
                    vacation_end   = temp2[1]+"/"+temp2[2]+"/"+temp2[0];
                    message           = rs.getString(7);
                    created_on        = rs.getTimestamp(8);
                    rs1=s.executeQuery("SELECT firstName,lastname,userId FROM user where userId = "+rs.getString(6));
                    while(rs1.next())
                    forward_to        = rs1.getString(2)+","+rs1.getString(1);
                    }
                }//end of try
                catch (Exception e) {
                   
                    e.printStackTrace();
                } //      }//end of for loop
                finally {
                    try{
                        if (rs != null) {
                        rs.close();
                        }
                    
                    if (s != null) {
                        s.close();
                       
                      }
                     if (con != null) {
                          con.close();
                      }
                    } catch (Exception e) {
                    e.printStackTrace();
                   
                  }
                }
            
          return result;
  }
    
     public boolean deleteVacation(int vid)throws SQLException, ClassNotFoundException
  {
    
          java.sql.Connection con;
            java.sql.Statement s;
            java.sql.ResultSet rs;
            boolean result=true;
            con = null;
            s = null;
            rs = null;
           
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
                try 
                {
                    s = con.createStatement();
                    s.executeUpdate("DELETE FROM alertvacation WHERE Vacation_Id = "+vid);
                    
                }//end of try
                catch (Exception e) {
                   
                    e.printStackTrace();result=false;
                } //      }//end of for loop
                finally {
                    try{
                        if (rs != null) {
                        rs.close();
                        }
                    
                    if (s != null) {
                        s.close();
                       
                      }
                     if (con != null) {
                          con.close();
                      }
                    } catch (Exception e) {
                    e.printStackTrace();
                    result=false;
                  }
                }
            
       
             return result;
  }
    
}
