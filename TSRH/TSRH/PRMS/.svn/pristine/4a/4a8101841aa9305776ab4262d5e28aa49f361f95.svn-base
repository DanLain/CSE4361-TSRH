<%-- 
    Document   : AlertArchive
    Created on : Dec 30, 2011, 2:54:13 AM
    Author     : Yogi
--%>

<html>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"  import="PRMSalert.*" import="alertsystemdatabase.*" %>

    <body>
        

<% 
DeleteAlertController deletealert = new DeleteAlertController((Alert) session.getAttribute("alert"));
deletealert.archive();


%>
<script type="text/javascript">
  window.opener.location.href=window.opener.location.href;
 window.close();
</script>
    </body>
</html>
