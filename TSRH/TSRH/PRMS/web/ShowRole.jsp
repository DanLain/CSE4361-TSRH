<%-- 
    Document   : ShowRole
    Created on : Nov 4, 2012, 3:49:15 PM

--%>

<%@page import="edu.uta.tsrh.model.ResourceRight"%>
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

    <!-- Variable Declarations-->
    <%
        int roleId = (Integer) (request.getAttribute("roleId"));
        String roleName = (String) (request.getAttribute("roleName"));
        ArrayList<ResourceRight> resourceRightList = (ArrayList<ResourceRight>) request.getAttribute("resourceRightList");
        int maxId =0;
    %>
    <!-- Body -->
    <body id="page1" onLoad="new ElementMaxHeight();">

        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpEditRole.html' })" class="first">help</a>
        <div class="wrap">
            <%@include file="AdminHeader.jsp" %>  

            <section id="content">
                <div class="container">
                    <div class="inside">
                        <form name="editRole" method="POST"  action="UpdateRoleController">
                            <h2>Edit Role</h2>
                            <h3> Role Name: <font color="blue"><%= roleName%> </font> </h3>
                            <br>

                            <b>Select new rights for each of resources below: </b> 
                            <table class="bordered">
                                <thead>
                                    <tr> 
                                        <th>Resource Id</td>
                                        <th>Resource Name</td>
                                        <th>Resource URL</td>
                                        <th>Current Right</th>
                                        <th>New Right</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        for (int i = 0; i < resourceRightList.size(); i++) {
                                            maxId = resourceRightList.get(i).getResourceId();
                                    %>

                                    <tr>
                                        <td> <%= resourceRightList.get(i).getResourceId()%> </td>
                                        <td> <%= resourceRightList.get(i).getResourceName()%> </td>
                                        <td> <%= resourceRightList.get(i).getResourceURL()%> </td>
                                        <td> <%= resourceRightList.get(i).getRight()%> </td>
                                        <td>
                                            <select name="<%= resourceRightList.get(i).getResourceId()%>" id="rights" class="selectColor">

                                                <% if (resourceRightList.get(i).getRight() == "None") {%>
                                                <option value="-1" selected>None</option>
                                                <% } else {%>
                                                <option value="-1" >None</option>
                                                <% }%>

                                                <% if (resourceRightList.get(i).getRight() == "Read") {%>
                                                <option value="0" selected>Read</option>
                                                <% } else {%>
                                                <option value="0" >Read</option>
                                                <% }%>

                                                <% if (resourceRightList.get(i).getRight() == "Write") {%>
                                                <option value="1" selected>Write</option>
                                                <% } else {%>
                                                <option value="1" >Write</option>
                                                <% }%>

                                            </select>
                                        </td>
                                    </tr>

                                    <% }%>

                                <br> <br>

                                </tbody>
                            </table>
                            <br> 
                            <input type="hidden" name="role" value="<%= roleId %>" >
                            <input type="hidden" name="size" value="<%= maxId %>" >
                            <input type="submit"  name ="OK" class="blue button">
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