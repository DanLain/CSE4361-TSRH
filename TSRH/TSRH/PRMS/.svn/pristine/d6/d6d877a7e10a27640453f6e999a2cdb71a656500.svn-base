<%-- 
    Document   : Admin
    Created on : Oct 14, 2012, 1:11:05 PM
    Author     : soyab
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <title>Admin</title>
        <meta charset="utf-8">
        <meta name="description" content="Place your description here">
        <meta name="keywords" content="put, your, keyword, here">
        <meta name="author" content="Templates.com - website templates provider">
        
        <link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        
        <script type="text/javascript" src="js/maxheight.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        
        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>
        <script src="DatePicker/jquery.min.js"></script>
   </head>
   <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
   %>

    <body id="page1" onLoad="new ElementMaxHeight();">
        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpAdmin.html' })" class="first">help</a>
        <div class="wrap">
            <%@include file="AdminHeader.jsp" %>
            
            <section id="content">
                <div class="container">
                    <div class="inside">
                        <div class="wrapper indent">
                            <article class="col-1">
                                <h2>Please select Admin operations above.</h2>
                            </article>
                        </div>
                    </div>
                </div>
            </section>
            
        </div>
        <%@ include file="footers.jsp" %>
        <script type="text/javascript">Cufon.now();</script>
        <script src="js/jquery.pageslide.min.js"></script>
    </body>
</html>
