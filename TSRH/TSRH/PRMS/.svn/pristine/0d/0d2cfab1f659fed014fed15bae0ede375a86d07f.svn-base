<%-- 
    Document   : Retrievealerts
    Created on : Dec 30, 2011, 10:54:50 AM
    Author     : Yogi
--%>
<%@page import ="java.util.*" import="PRMSalert.*" import="alertsystemdatabase.*" %>
   
<% DisplayAlertController Control = new DisplayAlertController();
    Alert[] alertinfo = new Alert[15];                                                                                                        
    alertinfo = Control.getAlert((String)session.getAttribute("user"));
    session.setAttribute("userinfo", Control.getuser((String)session.getAttribute("user")));
    for(int count = 0; count<alertinfo.length; count++) {
   if (alertinfo[count] != null)
   { %> 
  <a href="alertdetail.jsp?alertId=<%= alertinfo[count].getAlertId() %>"  onClick="return popup(this, 'Expanded View')">
            </br><%= alertinfo[count].getAlertText() %></a>
  <br />
 <% } } %>
 </p>