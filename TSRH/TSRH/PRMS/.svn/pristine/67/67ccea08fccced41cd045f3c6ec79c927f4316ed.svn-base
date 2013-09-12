<%-- 
    Document   : VacationManagement
    Created on : Mar 19, 2013, 7:31:15 PM
    Author     : Sravan
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=8" />


<html lang="en">

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@page import="controller.Controller" import="dbmanager.DBConfig"%>
  <%@page import ="java.util.*" import="PRMSalert.*" import="alertsystemdatabase.*" import="java.sql.Timestamp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vacation Management</title>
        <meta charset="utf-8">
        <meta name="description" content="Place your description here">
        <meta name="keywords" content="put, your, keyword, here">
        <meta name="author" content="Templates.com - website templates provider">
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
            <link rel="stylesheet" href="css/tableCSS.css" type="text/css" media="all"></link>
                    <!-- Help files -->

            <link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>

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

  function popup(mylink, windowname)
    {
        if (! window.focus)return true;
        var href;
        if (typeof(mylink) == 'string')
            href=mylink;
        else
            href=mylink.href;
        window.open(href, windowname, 'width=800,height=450,scrollbars=yes');
        return false;
    }
            function upgradepicker() {
                var date= new Date();
                $("#alertdate").kendoDatePicker({
                    min:date
                });
            }
        </script>

        <!--[if lt IE 7]>
                <link rel="stylesheet" href="css/ie/ie6.css" type="text/css" media="screen">
                <script type="text/javascript" src="js/ie_png.js"></script>
                <script type="text/javascript">
                        ie_png.fix('.png, #slogan, header nav ul li a, .icon img, .link1, .link1 span');
                </script>
        <![endif]-->
        <!--[if lt IE 9]>
                <script type="text/javascript" src="js/html5.js"></script>
        <![endif]--> 
    </head>
     <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
    %>
    <jsp:useBean id="Controller" class="controller.Controller" scope="session" />
    <body id="page1" onLoad="upgradepicker()">
        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/vacationManagement.html' })" class="first">help</a>
        <div class="wrap">
            <!-- header -->
                 <%@ include file="headers.jsp" %>

            <!-- content -->
<section id="content">
  <div class="inside">
    <div class="container">
      <div class="wrapper indent">
        <article class="col-0"> 
            
       <%  
        String username = (String) session.getAttribute("user");
       java.sql.Connection con;
             java.sql.Statement s;
             java.sql.ResultSet rs,rs1;

                     con = null;
                     s   = null; 
                     rs  = null;
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
            
           try {

                 s = con.createStatement();
                                                                   
                 rs = s.executeQuery("SELECT * FROM alertvacation where Created_by_userid=" + "'" + username + "'");
                             
                
     int count = 0;
    while(rs.next())
    {
     count = 1;
    }
    if(count==1){
           
        rs.beforeFirst();
             
       %>     
      <br/>
 <h2> Vacations </h2>   
 <table class="bordered" >
	<strong>
        <tr>
			<th align='center'>Vacation_id</th>	
                        <th align='center'>Vacation Title</th>
			<th align='center'>Vacation Start Date</th>
			<th align='center'>Vacation End Date</th>
                        <th align='center'>Forward Alerts to</th>
                        <th align='center'>Created on</th>
				
        </tr>
        </strong>
<%
 
 while(rs.next())
{   
      
 %>	
      <tr>
          <td align='center'><%= rs.getString(1)  %></td>  
          <td align='center'><a href="vacationDetail.jsp?vacationId=<%= rs.getString(1)  %>"  >
                    <%= rs.getString(2)  %></a>
          </td>  
          <td align='center'><%= rs.getString(4)  %></td>
          <td align='center'><%= rs.getString(5)  %></td>
          <td align='center'><%= rs.getString(6)   %></td>
          <td align='center'><%= rs.getString(8)  %></td>
     </tr>
    
<%
    }

%>		</table>
<br>
                
                <input type="button"  class="blue button" style="width:210px" onclick="window.location = '/TSRH/AlertManagement.jsp'" value="Back"></input>
               

             <input type="button"  class="blue button" style="width:210px" onclick="window.location = '/TSRH/setNewVacation.jsp'" value="Create New Vacation"></input>
         <br>
<%
}
  else
  {
        %>
        <div align="center">
            <br>
<br>
<br>
         <% 
         out.println("NO VACATION RECORDS ");
         %>
         <br>
         <br><br>
         <br>

              <input type="button"  class="blue button" style="width:210px" onclick="window.location = '/TSRH/AlertManagement.jsp'" value="Back"></input>
               

             <input type="button"  class="blue button" style="width:210px" onclick="window.location = '/TSRH/setNewVacation.jsp'" value="Create New Vacation"></input>
         <br>
             <br>
                           <br>
                           <br>
                           <br>
        </div>
         <%
  }
            
%>  
   
	<br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
                          </article>
                        </div>
        </div>
        </div>
    </section>
    </div>
        
        <!-- footer -->
    <%@ include file="footers.jsp" %>
    <script type="text/javascript">Cufon.now();</script>
    <script src="js/jquery.pageslide.min.js"></script>
     <%
  
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
                                                                    }
                                                                }
  //end of catch
            
%>                                                                
    </body>
</html>