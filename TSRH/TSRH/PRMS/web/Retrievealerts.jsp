<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=8" />


<html lang="en">
<%-- 
    Document   : Retrievealerts
    Created on : Dec 30, 2011, 10:54:50 AM
    Author     : Yogi
--%>
<%@page import="java.text.SimpleDateFormat"%>
<head>
    
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

<style>

a.red
{
color: red; 
}
</style>
</head>
<%@page import ="java.util.*" import="PRMSalert.*" import="alertsystemdatabase.*" import="java.sql.Timestamp" %>
   
<% 
Date today = new Date();   
Calendar cal = Calendar.getInstance();  
cal.setTime(today);  
cal.add(Calendar.DAY_OF_MONTH, -1); // <-- 

Date yest = cal.getTime();  

DisplayAlertController Control = new DisplayAlertController();
    Alert[] alertinfo = new Alert[15];                                                                                                        
    alertinfo = Control.getAlert((String)session.getAttribute("user"));
    
//     SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/mm/dd"); 
  //  Date convertedDate = dateFormat.parse(dateString); 
    
    session.setAttribute("userinfo", Control.getuser((String)session.getAttribute("user")));
    for(int count = 0; count<alertinfo.length; count++) {
   if (alertinfo[count] != null) {
        if(alertinfo[count].getAlertTime().before(today)){
       %> 
  <a class="red" href="alertdetail.jsp?alertId=<%= alertinfo[count].getAlertId() %>"  onClick="return popup(this, 'ExpandedView')">
            </br><%= alertinfo[count].getAlertSourceId()  %></a>
  <br />
  <% }else{  %>
    <a href="alertdetail.jsp?alertId=<%= alertinfo[count].getAlertId() %>"  onClick="return popup(this, 'ExpandedView')">
            </br><%= alertinfo[count].getAlertSourceId()  %></a><br />
 <% }} } %>
 </p>