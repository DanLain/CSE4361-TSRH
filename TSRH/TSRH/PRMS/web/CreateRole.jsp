<%-- 
    Document   : Admin
    Created on : Oct 14, 2012, 1:11:05 PM
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
        <script>
            function validateForm()
            {
                var errorSpan = document.getElementById("errorspan");
                errorSpan.innerHTML="";
                var namePattern = /^[a-zA-Z]*$/;
                
                var errorString = "";
                
                var roleName = document.forms["createRole"]["role"];
                if(roleName.value==null || roleName.value=="" || namePattern.test(roleName.value)==false)
                {
                    errorString = "Role Name."
                }
                
                if(errorString == "") {
                    return true;
                }        
                else {
                    errorSpan.innerHTML = "Please Check " + errorString + 
                                           "<br>It Cannot have numbers or special Characters or cannot be blank.";
                    return false;
                }
            }
        </script>
    </head>

    <%
        if (session.getAttribute("user") == null) {
            response.sendRedirect("/TSRH/index.jsp");
        }
    %>

    <!-- Variable Declarations-->
    <%! MySQLDBServices dbservices = new MySQLDBServices();
        ArrayList<Resources> list = dbservices.getResourceList();
        int maxId;
    %>


    <!-- Body -->
    <body id="page1" onLoad="new ElementMaxHeight();">

        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpCreateRole.html' })" class="first">help</a>
        <div class="wrap">
            <%@include file="AdminHeader.jsp" %>            
            <section id="content">
                <div class="container">
                    <div class="inside">
                        <form name="createRole" method="POST" onsubmit="return validateForm()" action="CreateRoleController"> 
                            <h2>Create Role</h2>
                            <b>Role Name: </b> &nbsp; &nbsp;
                            <input type="text" name="role" class="textbox" id ="role">
                            <br>
                            <h4><span id="errorspan" style="color:#FF0000;"></span></h4>
                            <br>
                            <br>

                            <b>Select rights for each of resources below: </b> 
                            <table class="bordered">
                                <thead>
                                    <tr> 
                                        <th>Resource Id</th>
                                        <th>Resource Name</th>
                                        <th>Resource URL</th>
                                        <th>Rights</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        for (int i = 0; i < list.size(); i++) {
                                            maxId = list.get(i).getResourceId();
                                    %>

                                    <tr>
                                        <td> <%= list.get(i).getResourceId()%> </td>
                                        <td> <%= list.get(i).getResourceName()%> </td>
                                        <td> <%= list.get(i).getResourceURL()%> </td>
                                        <td>
                                            <select name="<%= list.get(i).getResourceId()%>" id="rights" class="selectColor">
                                                <option value="-1">None</option>
                                                <option value="0">Read</option>
                                                <option value="1">Write</option>
                                            </select>
                                        </td>
                                    </tr>

                                    <% }%>
                                </tbody>
                            </table>
                            <br>
                            <input type="hidden" name="size" value="<%= maxId%>">
                            <input type="submit" name="Create" class="blue button" Value="Submit">
                            </div>
                            </div>
                            </section>
                        </form>
                    </div>
                    <%@ include file="footers.jsp" %>
                    <script type="text/javascript">Cufon.now();</script>
                    <script src="js/jquery.pageslide.min.js"></script>
                    </body>
                    </html>