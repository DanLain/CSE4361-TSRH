<%-- 
    Document   : loginHeader
    Created on : 4 Nov, 2012, 1:36:54 AM
    Author     : Shwetha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <%@page import="edu.uta.tsrh.model.User"%>


    <script type="text/javascript">

        function showForm(){
            document.getElementById("#login_prompt").style.visibility = 'hidden';
            document.getElementById("#login_form").style.visibility = 'visible';
            document.getElementById("#login_error").style.visibility = 'hidden';
        }

        $(document).ready(function(){

            $("#login_link").click(function(e){
                $("#login_prompt").hide(125);
                $("#login_form").show(125);
                $("#login_error").hide(125);

                e.preventDefault();
            });

            $("#login_cancel_link").click(function(e){
                $("#login_form").hide(125);
                $("#login_prompt").show(125);
                $("#login_error").hide(125)

                e.preventDefault();
            });
        });

    </script>

<div id="user_status">
        <%

            String user = (String) session.getAttribute("user");
            if (user != null && user != "") {
        %>
        Welcome <%= session.getAttribute("user")%>!
        <table>
            <tr>
                <td><a href="/TSRH/changePassword.jsp">Change Password</a></td><td></td>
                <td><a href="/TSRH/logout.jsp">Logout</a></td>
            </tr>
        </table>
        

        <% } else {%>

        <span id="login_prompt">Welcome Guest! <a id="login_link" href="">Login</a></span>

        <span id="login_form" style="display:none">
            <form action="/TSRH/login.jsp" method="post">
                <label for="login_username">Username:</label>
                <input class="textbox" type="text" name="login_username" id="login_username" />

                <br />

                <label for="login_password">Password:</label>
                <input class="textbox" type="password" name="login_password" id="login_password" />

                <br />

                <input class="blue button" type="submit" id="login_submit_link" value="Login" />

                <input class="blue button" type="reset" id="login_cancel_link" value="Cancel" />
            </form>
        </span>

        <%
            String fail = (String) session.getAttribute("login_error");
            if (fail != null && fail != "") {

                session.removeAttribute("login_error");
        %>
        <br /><span id="login_error" class="loginError">User Name & Password <br/>combination is incorrect  <br/></span> 
        <% }%>

        <% }%>
 </div>
