<%-- 
    Document   : showResult
    Created on : Oct 28, 2012, 11:09:31 PM
    Author     : soyab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="edu.uta.tsrh.model.Resources"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.db.MySQLDBServices" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin| Add Role </title>
        <meta charset="utf-8">

        <link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/tableCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
        
        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>
        <script src="DatePicker/jquery.min.js"></script>
    </head>

    <body id="page1" onLoad="new ElementMaxHeight();">
        
        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpCreateRole.html' })" class="first">help</a>

        <div class="wrap">
            <%@include file="AdminHeader.jsp" %>  

            <section id="content">
                <div class="container">
                    <div class="inside">

                        <% Boolean result = (Boolean) request.getAttribute("result");
                            String message = (String) request.getAttribute("message");
                            if (message != null && result) {
                        %>
                        <h3><font color="blue"><%= message%> </font> </h3>
                            <% }
                                if (message != null && !result) {
                            %>
                        <h3><font color="red"><%= message%> </font> </h3>
                            <% }%>
                        <br> 
                       <br>
                       <br>
                       <h4>Click <a href="/TSRH/CreateRole.jsp">here </a>to go back to Create Role page.</h4>
                    </div>
                </div>
            </section>
        </div>
        <%@ include file="footers.jsp" %>
        <script type="text/javascript">Cufon.now();</script>
        <script src="js/jquery.pageslide.min.js"></script>
    </body>
</html>
