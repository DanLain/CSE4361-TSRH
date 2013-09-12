<%-- 
    Document   : AlertArchive
    Created on : Dec 30, 2011, 2:54:13 AM
    Author     : Yogi
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="dbmanager.DBConfig"%>
<html>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"  import="PRMSalert.*" import="alertsystemdatabase.*" import="java.sql.Timestamp" %>
<%@page import ="java.util.*" import="java.text.*" import="PRMSalert.*"%> <%--import="PRMSAlertDatabase.*" --%>
<%@page import = "controller.*" %>


<head>
        <title>Set Alert| Notifications</title>
        <meta charset="utf-8">
        <meta name="description" content="Place your description here">
        <meta name="keywords" content="put, your, keyword, here">
        <meta name="author" content="Templates.com - website templates provider">
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
            
        <script type="text/javascript" src="js/maxheight.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        
        
        <!-- Loading Theme file(s) -->
        <link rel="stylesheet" href="themes/forest.css" />
        <link rel="stylesheet" href="themes/layouts/small.css" />
        <link href="DatePicker/kendo.common.min.css" rel="stylesheet">
        <link href="DatePicker/kendo.blueopal.min.css" rel="stylesheet">
        <script src="DatePicker/jquery.min.js"></script>
        <script src="DatePicker/kendo.web.min.js"></script>
        
        <script type="text/javascript">
        function fun()
        {
            self.close();
            window.opener.location.reload();
        }
        
</script>

    
    
    
</head>
    
<body id="page1" onLoad="new ElementMaxHeight();">
        

<% 
//DeleteAlertController deletealert = new DeleteAlertController((Alert) session.getAttribute("alert"));
//deletealert.archive();

//Alert alert= (Alert)session.getAttribute("alert");
//int id= alert.getAlertId();
 java.sql.Connection con;
 java.sql.Statement s;
 java.sql.ResultSet rs;
  con = null;
  s = null;
  rs = null;
 
  Controller dba = new Controller();

     
 String AlertCreatedby,userId,alertText,alertSourceId,alertState,status="fail";
 int alertSourcetype,alertid, repeating,repeat_freq,seviarity;
  SimpleDateFormat dateFormat1 = new SimpleDateFormat("mm/dd/yyyy");
  Date alertCreateTime,alertTime;
  
  //Date date1 = dateFormat1.parse(request.getParameter("alertdate"));
            //java.sql.Timestamp  sqlDate = new java.sql.Timestamp(new java.util.Date().getTime());
           // java.sql.Timestamp sqlDate = new java.sql.Timestamp(date1.getTime());
 
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
                                 
                                                                String usernamee= (String)session.getAttribute("user");
                                                                String alertIdd=(String)session.getAttribute("alertId");
                                                                String sql = "SELECT * FROM alert where alertId ="+alertIdd;
                                                                try {
                                                                    
                                                               
                                                                        s = con.createStatement();
                                                                    rs = s.executeQuery(sql);
                                                                    String names = null;
                                                                   // String id1= rs.getString(3);
                                                                        
                                                                    while (rs.next()) {
                                                                        //String id1= rs.getString(3);
                                                                        
                                                                      //   SimpleDateFormat dateFormat = new SimpleDateFormat("mm/dd/yyyy");
                                                                      //   Date date1 = dateFormat1.parse(request.getParameter("alertdate"));
                                                                      //   java.sql.Timestamp sqlDate = new java.sql.Timestamp(date1.getTime());
            
                                                                       alertid=Integer.parseInt(rs.getString(1));
                                                                       String alertctime=rs.getString(2);
                                                                      // alertCreateTime=dateFormat1.parse(alertctime);
                                                                      // java.sql.Timestamp alertCreatetimeSQL = new java.sql.Timestamp(alertCreateTime.getTime());
                                                                      // alertTime=dateFormat1.parse(rs.getString(3));
                                                                       String alerttim=rs.getString(3);
                                                                       AlertCreatedby = rs.getString(4);
                                                                       userId=rs.getString(5);
                                                                       alertState=rs.getString(9);
                                                                       alertText=rs.getString(6);
                                                                       alertSourcetype=Integer.parseInt(rs.getString(7));
                                                                       alertSourceId=rs.getString(8);
                                                                       repeating=Integer.parseInt(rs.getString(10));
                                                                       repeat_freq=Integer.parseInt(rs.getString(11));
                                                                       seviarity=Integer.parseInt(rs.getString(12));
                                                                       
                                                                       String sql2="INSERT INTO alertarchive(`alertId`,`alertCreatedTime`,`alertTime`,`alertArchivedTime`,`alertCreatedBy`,`userId`,`alertText`,`alertSourceType`,`alertSourceId`,`alertState`,`repeating`,`repeat_frequency`,`severity`) VALUES ("+alertid+",'"+alertctime+"','"+alerttim+"',NOW(),'"+AlertCreatedby+"','"+userId+"','"+alertText+"',"+alertSourcetype+",'"+alertSourceId+"','"+alertState+"',"+repeating+","+repeat_freq+","+seviarity+")";
                                                                       
                                                                       s.executeUpdate(sql2);
                                                                       
                                                                       String sql3="DELETE FROM ALERT WHERE alertId="+alertIdd;
                                                                       s.executeUpdate(sql3);
                                                                      status="sucess";
                                                                       
                                                                    }//end of while
                                                                        
                                                                }//end of try
                                                                catch (Exception e) {
                                                                    e.printStackTrace();
                                                                } finally {
                                                                    if (rs != null) {
                                                                        rs.close();
                                                                    }
                                                                    if (s != null) {
                                                                        s.close();
                                                                    }
                                                                    if (con != null) {
                                                                        con.close();
                                                                        dba.closeConnection();                                                                   }
                                                                }//end of catch
                                                               

if(status=="sucess"){%>
<h2><br>Alert has been moved to archive successfully</h2> 
<%}else{%>
<h2>Problem occurred while moving the alert</h2> <%}%>

<%--<input type="button" class="link1" style="width:150px" value="Close this window" align="right"  onclick="fun()">--%>
 
 <a  href="#" style="margin-top: 50px" class="link1" onclick="fun()" ><span><span ><strong>Close this Window</strong></span></span></a>
<%--<script type="text/javascript">
  window.opener.location.href=window.opener.location.href;
 window.close();
</script>--%>


    </body>
</html>
