<%-- 
    Document   : AlertMessages
    Created on : Apr 10, 2013, 8:34:42 PM
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
        <title>Alert List</title>
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
        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/alertsCreated.html' })" class="first">help</a>
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
              DisplayAlertController Control = new DisplayAlertController();
              Alert[] alertinfo = new Alert[20];                                                                                                        
              alertinfo = Control.getAlertCreated((String)session.getAttribute("user"));
              session.setAttribute("userinfo", Control.getuser((String)session.getAttribute("user")));
       if(alertinfo.length!=0){ 
             
       %>     
      <br/>
 <h2> List of alerts created</h2>   
 <table class="bordered" >
	<strong>
        <tr>
			<th align='center'>Alert to</th>			
			<th align='center'>Alert Detail</th>
			<th align='center'>Priority</th>
                        <th align='center'>Alert Response Date</th>
			<th align='center'>Alert Created Date</th>
				
        </tr>
        </strong>
<%

for(int count = 0; count<alertinfo.length; count++) 
{
 if (alertinfo[count] != null) {       
 %>	
      <tr>
          <td><%= alertinfo[count].getUserinfo().getUserId()  %></td>    
          <td align='center'><a href="alertdetail.jsp?alertId=<%= alertinfo[count].getAlertId() %>"  onClick="return popup(this, 'ExpandedView')">
                    <%= alertinfo[count].getAlertSourceId()  %></a>
          </td>
          <td align='center'><%= alertinfo[count].getSeverity()  %></td>
           <td align='center'><%= alertinfo[count].getAlertTime()  %></td>
            <td align='center'><%= alertinfo[count].getAlertCreatedTime()
            %></td>
     </tr>
    
<%
   } }
%>		</table>
<br>
                
                <input type="button" class="blue button" onclick="window.location = '/TSRH/AlertManagement.jsp'" value="Back"></input>
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
         out.println("NO RECORDS FOUND");
         %>
         <br>
         <br><br>
         <br>

             <input type="button" class="blue button" onclick="window.location = '/TSRH/AlertManagement.jsp'" value="Back"></input>
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

    </body>
</html>