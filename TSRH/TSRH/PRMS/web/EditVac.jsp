<%-- 
    Document   : EditVac
    Created on : Apr 21, 2013, 9:46:11 PM
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
         session.setAttribute("editvacation", "fail");
        //copying the values to local variables.
             
             String CreatedBy = (String) session.getAttribute("user");
             String vId = request.getParameter("vacationId");
             String title = request.getParameter("vacationTitle");
             String fromdate = request.getParameter("fromdate");
             String todate = request.getParameter("todate");
             String forward = request.getParameter("to");
             String msg = request.getParameter("vacationMessage");
           
            SimpleDateFormat dateFormats = new SimpleDateFormat("MM/dd/yyyy");
            Date date1 = dateFormats.parse(fromdate);
            Date date3 = dateFormats.parse(todate);

            Date fDate = new Timestamp(date1.getTime());
            Date tDate = new Timestamp(date3.getTime());
            
            Vacation newVacation = new Vacation(); 
            if(newVacation.editVacation(vId,title,CreatedBy,fDate,tDate,forward,msg))
            {
                session.setAttribute("editvacation", "sucess");
                ILogger logger = Log4JLogger.GetLoggerObject(); logger.LogMessage(session.getAttribute("user").toString(), "setAlert.jsp", 
                        "User edited vacation with title "+title+"");
            }           
            
                }
 catch (Exception e) {
                    e.printStackTrace();
                }       
        %>
        <jsp:forward page="editVacationConfirmmessage.jsp"/>

    </body>
</html>