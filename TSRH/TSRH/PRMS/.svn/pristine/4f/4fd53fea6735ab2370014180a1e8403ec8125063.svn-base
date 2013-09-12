<%-- 
    Document   : EditRole
    Created on : Oct 31, 2012, 9:24:31 PM
--%>


<%@page import="edu.uta.tsrh.model.Resources"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="edu.uta.tsrh.model.Role"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.db.MySQLDBServices" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin| Edit Role </title>
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
    
    <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
    %>

    <!-- Variable Declarations-->
    <%
        MySQLDBServices dbservices = new MySQLDBServices();
        ArrayList<Role> roleList = dbservices.getRoleList();
    %>
    <!-- Body -->
    <body id="page1" onLoad="new ElementMaxHeight();">
        
        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpEditRole.html' })" class="first">help</a>

        <div class="wrap">
            <%@include file="AdminHeader.jsp" %>

            <section id="content">
                <div class="container">
                    <div class="inside">

                        <form name="editRole" method="POST"  action="DisplayRoleController"> 
                            <h2>Edit Role</h2>
                            <b>Role Name: </b> &nbsp; &nbsp;
                            <select name="role" id="role" class="selectColor">
                                <%for (Role r : roleList) {%>
                                <option value="<%= r.getRoleId() + "_" + r.getRoleName()%>"> <%= r.getRoleName()%> </option>
                                <% }%>
                            </select>

                            <br> <br>
                            <input type="submit" name="OK" class="blue button" value="Submit">
                            </tbody>
                            </table>

                        </form>

                    </div>
                </div>
            </section>
        </div>
        <%@ include file="footers.jsp" %>
        <script type="text/javascript">Cufon.now();</script>
        <script src="js/jquery.pageslide.min.js"></script>
    </body>
</html>