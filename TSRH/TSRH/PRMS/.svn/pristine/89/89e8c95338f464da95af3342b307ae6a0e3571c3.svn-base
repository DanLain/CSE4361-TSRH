<%-- 
    Document   : setVacationConfirmmessage
    Created on : Apr 11, 2013, 9:03:34 PM
    Author     : Sravan
--%>

<!DOCTYPE html>
<html>
     <%@page contentType="text/html" pageEncoding="UTF-8" %>
     <%@page import="java.sql.DriverManager"%>
     <%@page import="com.mysql.jdbc.Connection"%>
     <%@page import="java.util.*"  import="alertsystemdatabase.*" import="java.sql.Timestamp" import="java.text.*" %>

    <head>
        <title>Set Vacation</title>
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
        
    
    
    
    </head>
    <jsp:useBean id="Controller" class="controller.Controller" scope="session" />
    <body id="page1" onLoad="upgradepicker()">
        <div class="wrap">
            <!-- header -->
                 <%@ include file="headers.jsp" %>
                 
            <!-- content -->
            <section id="content">
                <div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
                    <div class="inside">
                         <div class="wrapper indent">
                            <article class="col-1">
        <%  if(session.getAttribute("setvacation")=="sucess"){%>
       <div class="box"  style="width:500px;background-color: #F0F0F0;" align="center">
       <h2 color="green">Vacation has been set successfully</h2> 
       <%} else {%>
       <h2 color="red">Problem occurred while setting the vacation</h2> <%}%>
<%--<jsp:forward page="notification.jsp"/>--%>
 <form name="form1" method="post"  action="VacationManagement.jsp">
<h3><input type="submit" align="right" class="blue button" style="width: 150px" value="Back">   </h3>      
     
     </form>

    </body>
</html>
