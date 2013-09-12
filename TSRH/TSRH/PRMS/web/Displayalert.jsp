<%-- any content can be specified here e.g.: --%>
<%@ page pageEncoding="UTF-8" %>
  <%@page import="java.util.*"  import="alertsystemdatabase.*" import="java.sql.Timestamp" import="java.text.*" %>

<SCRIPT TYPE="text/javascript">
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
</SCRIPT>
<% 

%>
<div class="box">
    <span class="icon"><img src="images/icon2.png"></span>  
    <div class="inner">                           
        <h3 align="center">Notifications</h3>
        
        <marquee direction="up" onMouseOver="this.setAttribute('scrollamount', 0, 0);" onMouseOut="this.setAttribute('scrollamount', 6, 0);">
                                        
            <p><%@ include file="Retrievealerts.jsp" %><p>&nbsp;</p>   
        </marquee>
                                        
        <a  href="notification.jsp" style="margin-top: 50px" class="link1" ><span><span ><strong><h4 align="center">Set Notification</h4></strong></span></span></a>
                                        
    </div>
</div>
