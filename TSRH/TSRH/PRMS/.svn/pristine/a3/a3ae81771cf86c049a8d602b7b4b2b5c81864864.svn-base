<!doctype html>
<html lang="en">
    <head>
        <title>Error |</title>

    </head>

    <body>
        <div>

    <%
            //check if a user has logged in. If not redirect to home page
            String currentUser = (String) session.getAttribute("user");
            if (currentUser == null) 
            {
                String redirectURL = "index.jsp";
                response.sendRedirect(redirectURL);
            }
    %>
<%out.println("<h1><center> Sorry ! An Error has Occcured</center></h1>");%>
                            
   <br><center><a href="index.jsp" class=button1><h1>Home</h1></a></center></br> 

</div>
    </body>
</html>
