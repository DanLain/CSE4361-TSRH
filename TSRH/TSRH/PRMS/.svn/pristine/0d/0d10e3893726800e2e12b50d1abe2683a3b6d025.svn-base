<%-- 
    Document   : deleteVacation
    Created on : Apr 21, 2013, 7:39:21 PM
    Author     : Sravan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>

<html>
    <%@page import="controller.Controller" import="dbmanager.DBConfig"%>
    <%@page import="java.util.*"  import="alertsystemdatabase.*" import="java.sql.Timestamp" import="java.text.*" %>
    <%@page import="edu.uta.tsrh.Logger.ILogger"%>
    <%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>
    <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
    %>
<jsp:useBean id="Controller" class="controller.Controller" scope="session" />
    <body>

        <%
        try{
         session.setAttribute("deletevacation", "fail");
        //copying the values to local variables.
             
             String CreatedBy = (String) session.getAttribute("user");
             int vId = Integer.parseInt(request.getParameter("vacationId"));
             
              Vacation newVacation = new Vacation(); 
            if(newVacation.deleteVacation(vId))
            {
                session.setAttribute("deletevacation", "sucess");
            
             ILogger logger = Log4JLogger.GetLoggerObject(); logger.LogMessage(session.getAttribute("user").toString(), "setAlert.jsp", 
                        "User edited vacation with vacation id "+vId+"");
            
            }     
    }
 catch (Exception e) {
                    e.printStackTrace();
                }                          
        %>
        <jsp:forward page="deleteVacationConfirmmessage.jsp"/>

    </body>
</html>
