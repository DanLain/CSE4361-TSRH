<%-- 
    Document   : login
    Created on : Mar 29, 2012, 11:35:14 PM
    Author     : Ethan
--%>
<%@page import="java.util.HashSet"%>
<%@page import="edu.uta.tsrh.db.*"%> 
<%@page import="edu.uta.tsrh.model.User"%> 
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>

<% 

String username = (String)request.getParameter("login_username");
String password = (String)request.getParameter("login_password");

MySQLDBServices dbservices = new MySQLDBServices();
User user = dbservices.loginUser(username, password);
HashSet<Integer> noteIDList = new HashSet<Integer>();
if(user != null) {
     ILogger logger = Log4JLogger.GetLoggerObject();
     logger.LogMessage(username, "LoginController.java", 
                        "User sucessfully logged in");
    session.setAttribute("user", user.getUserName());
    session.setAttribute("noteID", noteIDList);
}
else {
    session.setAttribute("login_error", "Invalid Credentials");
}

if(user!= null && user.getFirstLogin() == 1){
    if(user.getRoleId() == 1){
        response.sendRedirect("/TSRH/Admin.jsp");
     }else{
         response.sendRedirect("/TSRH/changeDefaultPassword.jsp");
      }
}else{
       response.sendRedirect(request.getHeader("referer"));
    }
%>
