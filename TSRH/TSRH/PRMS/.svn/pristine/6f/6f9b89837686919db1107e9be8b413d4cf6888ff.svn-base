<%-- 
    Document   : setRemark
    Created on : Dec 30, 2011, 1:15:18 AM
    Author     : Yogi
--%>


<!DOCTYPE html>
<html>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"  import="alertsystemdatabase.*" import="java.sql.Timestamp" import="PRMSalert.*" %>

    <body>
        
<%  
    Alerthistory alertHistory = new Alerthistory();
    alertHistory.setAlert((Alert) session.getAttribute("alert"));
    alertHistory.setAlertRemark(request.getParameter("Remark"));
    alertHistory.setAlertUpdateType((String) session.getAttribute("user"));
    Date today = new Date();
    alertHistory.setAlertUpdateTime(new Timestamp(today.getTime()));
    
    SetAlertController setAlert = new SetAlertController();
    setAlert.setRemark(alertHistory);
    
    %>
    <script type="text/javascript">
         window.opener.location.href=window.opener.location.href;
         window.close();
</script>


    </body>
</html>
