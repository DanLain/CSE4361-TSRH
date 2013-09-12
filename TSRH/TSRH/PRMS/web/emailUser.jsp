<%-- 
    Document   : emailUser
    Created on : Nov 5, 2012, 3:06:59 PM
    Author     : Prashanth
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<title>Forgot Password</title>
<meta charset="utf-8">
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="Templates.com - website templates provider">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
<script type="text/javascript" src="js/maxheight.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!-- Help files -->
            
            <link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>
            
        <script type="text/javascript" src="js/maxheight.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
	<script type="text/javascript">


  
   function randomPassword()
    {
    chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#$%^&*()";
    pass = "";
    for(x=0;x<8;x++)
    {
        i = Math.floor(Math.random() * 62);
        pass += chars.charAt(i);
    }
        return pass;
       
    }
    function formSubmit()
{
  passform.password.value = randomPassword();
  return false;
}
 </script>    
 </head>
 <body id="page1" onload="upgardepicker()">
      <a href="javascript:$.pageslide({ direction: 'right', href: 'help/forgotpassword.html' })" class="first">help</a>
        <div class="wrap">
            <%@ include file="headers.jsp" %>           
            <section id="content">
                <div class="container">
                    <div class="inside">
                        <div class="wrapper indent">
                            <div id="content_main">
    
<!-- header -->
	 
	
  <table><tr><td>
              
   
                  <h2> Forgot Password   </h2>  
</td></tr>    &nbsp; &nbsp;&nbsp;
  
 
  </table>
         <% 
            HttpSession session1 = request.getSession();
            String f=(String)session1.getAttribute("forgot");
            if(f == "False")
              {
              %>  
              <h4 align="center"><font color="red">Incorrect Info</font></h4>
              <% 
              }
            if (f == "True")
              {
              %>  
              <h4 align="center"><font color="green">Password Sent Successfully</font></h4>
               <% 
              } 
              session1.setAttribute("forgot",null);                                    
               %>
        <form id="form" name="passform" method="post" action="sendMail.jsp">
      <table align="center" border='0'>
 <tr>
          <td width = "200"> <h3>  Enter the email address   </h3></td>
          <td>
          <p>
             <input type="text" name="email" id="email"  class ="textbox"  size="20">
          </p>
          </td>
          
</tr>
          <tr><td width = "200"> <h3>  Enter the username   </h3></td>
          <td><p>
             <input type="text" name="username" id="name"  class ="textbox"  size="20">
          </p>
          </td>
          
</tr>
<tr>      <td width = "200"></td>
          <input type="hidden" name="password"><br>  
          <td colspan=2><input type="submit" name="submit" onclick="javascript:formSubmit()" class="blue button" value="Submit" >
</tr>  
      </table>
     </form>
        
	</p>
	
</div>
        </div> 
        </div> 
        </div> 
        </div> 
        
	
	 <%@ include file="footers.jsp" %>

</tr>
<script type="text/javascript">Cufon.now();</script>
<script src="js/jquery.pageslide.min.js"></script>
</body>
</html>   
        
        


   
        
        
    