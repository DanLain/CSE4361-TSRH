<%-- 
    Document   : update
    Created on : Oct 26, 2011, 9:41:27 PM
    Author     : Yogi
--%>


<!DOCTYPE html>
<html>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="java.util.*"  import="alertsystemdatabase.*" import="java.sql.Timestamp" import="java.text.*" %>
    <%@page import="edu.uta.tsrh.Logger.ILogger"%>
    <%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>

    <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
    %>

    <body>

        <%
        try{
        //copying the values to local variables.
            session.setAttribute("setalert", "fail");
            byte priority = Byte.parseByte(request.getParameter("priority"));
            String CreatedBy = (String) session.getAttribute("user");
            String title = request.getParameter("alertTitle");
            String msg = request.getParameter("alertMessage");
            SimpleDateFormat dateFormats = new SimpleDateFormat("MM/dd/yyyy");
            String date = request.getParameter("alertdate");
            Date date1 = dateFormats.parse(date);
            //java.sql.Timestamp  sqlDate = new java.sql.Timestamp(new java.util.Date().getTime());
            java.sql.Timestamp sqlDate = new java.sql.Timestamp(date1.getTime());
            int d=sqlDate.getDate();
            int m=sqlDate.getMonth();
            int y=sqlDate.getYear();
            // String da=(String)request.getParameter("DOB");
            //int freq = Integer.parseInt(request.getParameter("freq"));
            java.util.Date date2= new java.util.Date();
            sqlDate.setTime(date2.getTime());
            sqlDate.setDate(d);
            sqlDate.setMonth(m);
            sqlDate.setYear(y);
            int freq = 0;
            Date currentDate = new Timestamp(date1.getTime());
            String userid = request.getParameter("to");
            String[] useriddd = request.getParameterValues("to");
            //int k=useriddd.length;
            String AlertCreatedBy;

            //start of old code
             Alert newAlert = new Alert(); 
            if(newAlert.setAlert(sqlDate, CreatedBy, msg, title, freq, priority, useriddd))
                         {  session.setAttribute("setalert", "sucess");
            ILogger logger = Log4JLogger.GetLoggerObject(); logger.LogMessage(session.getAttribute("user").toString(), "setAlert.jsp", 
                        "User created a new alert.");

            
            }                        
                       }
 catch (Exception e) {
                    e.printStackTrace();
                }                         
     %>
        <jsp:forward page="setAlertConfirmmessage.jsp"/>

    </body>
</html>
