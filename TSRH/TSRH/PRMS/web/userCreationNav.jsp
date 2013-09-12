<%-- 
    Document   : userCreation_nav
    Created on : 14 Oct, 2012, 5:34:21 PM
    Author     : Shwetha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="edu.uta.tsrh.model.User"%>
<jsp:useBean id="cb" scope="request" class="edu.uta.tsrh.RoleManagement.CreateUserNavController" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Creation</title>
    </head>
    <body>
       <% 
                   
          String userName = request.getParameter("userName");
          String emailId = request.getParameter("emailId");
          String firstName = request.getParameter("firstName");
          String lastName = request.getParameter("lastName");
          int roleId = 1;
          if(request.getParameter("role") != null)
             roleId = Integer.parseInt(request.getParameter("role"));
          User user = new User(1,userName,firstName,lastName,emailId, "" , roleId, 1);
          boolean created = cb.createUser(user);
          session.setAttribute("isDup", cb.userDuplicate);
          session.setAttribute("isEmailDup", cb.emailDuplicate);
          session.setAttribute("creationIssue", cb.userCreation);
          session.setAttribute("username", userName);
          session.setAttribute("pw", user.getClearPass());
          if(created){
       %>
       <jsp:forward page="userCreation.jsp">
           <jsp:param name="created" value="true"></jsp:param>
       </jsp:forward>
       <% }else{ %>
       <jsp:forward page="userCreation.jsp">
           <jsp:param name="created" value="false"></jsp:param>
       </jsp:forward>
        <% } %>
    </body>
</html>
