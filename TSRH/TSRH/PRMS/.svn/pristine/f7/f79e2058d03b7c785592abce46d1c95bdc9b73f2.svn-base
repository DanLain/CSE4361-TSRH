<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=8" />

<html lang="en">
     <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.*" import="PRMSalert.*" import="alertsystemdatabase.*" %>
<head>
<title>Alert Detail - Expanded</title>
<meta charset="utf-8">
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="Templates.com - website templates provider">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
<link rel="stylesheet" href="css/tableCSS.css" type="text/css" media="all">
<script type="text/javascript" src="js/maxheight.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/script.js"></script>

<SCRIPT TYPE="text/javascript">
<!--

 function closepopup()
   {
      if(false == my_window.closed)
      {
         my_window.close ();
         window.opener.location.reload();
      }
      else
      {
         alert('Window already closed!');
      }
   }

//-->
</SCRIPT>
<script>
           function validateForm()
           {
               
               var x=document.forms["form1"]["Remark"].value;
               
               if (x=="" || x==NULL)
                   {
                       
                   document.getElementById('msg').color = "red";
                   document.getElementById('msg').innerHTML = 'Remark cannot be blank!';
                   return false; 
                   }   
           }
           
       </script>
<!--[if lt IE 7]>
    <link rel="stylesheet" href="css/ie/ie6.css" type="text/css" media="screen">
    <script type="text/javascript" src="js/ie_png.js"></script>
    <script type="text/javascript">
        ie_png.fix('.png, #slogan, header nav ul li a, .icon img, .link1, .link1 span');
    </script>
<![endif]-->
<!--[if lt IE 9]>
    <script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
</head>
<body id="page1" onLoad="new ElementMaxHeight();">
<div class="wrap">
<!-- header -->
    <header>



 <table align="center">
       <tr>
  <td align="center" >
      

<h2 >&nbsp; View Alert Details  </h2> </td> </tr>
   </br>
          </table>
            <br>
    </header>
<!-- content -->
    <section id="content">


        <table width="600" align="center">
      <%  DisplayAlertController displayAlert = new DisplayAlertController();
      Alert alertInfo = new Alert();
      String Prioritytext="inetialpriority";
          alertInfo =  displayAlert.view(Integer.parseInt(request.getParameter("alertId")));
          String id=request.getParameter("alertId");
          session.setAttribute("alertId",  id);
          session.setAttribute("alert", alertInfo);
          if(alertInfo.getSeverity() ==1 )
                     Prioritytext="Low";
          if(alertInfo.getSeverity() ==2 )
                     Prioritytext="Medium";
          if(alertInfo.getSeverity() ==3 )
                     Prioritytext="High";
    %>
    <table class="bordered">
         <tr>
           
          <td><h3>Set By:</h3></td>
          <td>
              <font color="#00BFFF"><label><%= alertInfo.getAlertCreatedBy() %></label>
          
         </td>
          
              <td width = "100"> <h3>Priority:      </h3></td>
          <td>
              <font color="#00BFFF"><label><%= Prioritytext %></label>
           </td>
          
          <td width = "100"> <h3>Time:</h3></td>
          <td>
             <font color="#00BFFF"><label><%= alertInfo.getAlertTime() %></label>
          </td>
          </tr>
           <tr>
          
           
          
          <td><h3>Title:</h3></td>
          <td width="100px" align="left" colspan="5"><p>
                   <font color="#00BFFF">     <label><%= alertInfo.getAlertSourceId() %></label>
           </p>
           </td>
           
          </tr>

           <tr>
              <td><h3>Message:</h3></td>
           <td width="100" colspan="5"><p>
                   <font color="#00BFFF">    <label> <%= alertInfo.getAlertText() %> 
           </p>
            </td>    
                     
           <br />
           <br />
          </tr>
</table>
          <% Alerthistory[] alertHistory = displayAlert.getHistory(Integer.parseInt(request.getParameter("alertId")));
                if(alertHistory.length > 0)
                { %>
    
      <table border="1" bordercolor="#0000FF" >
          <tr bgcolor="#0099FF">
              <tr bordercolor="#0000CC">
                <td align="center" > User </td>
                <td align="center"> Remark </td>
                <td align="center">Time</td>
            </tr>

        <% for(int i = 0; i<alertHistory.length; i++)
           { %>
            <tr bordercolor="#0000CC">
                <td align="center"><%= alertHistory[i].getAlertUpdateType() %></td>
                <td align="center"><%= alertHistory[i].getAlertRemark() %> </td>
                <td align="center"><%= alertHistory[i].getAlertUpdateTime() %></td>
           </tr>
         <% } %>
        <% } %>
      </table>
      <br>
      <table>
          </tr>
            <tr>
            <form name="form1" method="post" action="setRemark.jsp" onSubmit="return validateForm()">
            <td width="50px"> <h3>Remark:</h3></td>
            <td><input type="textarea"  name="Remark" maxlength="100" > </td>
            <td><font size="5" color="white" id="msg"></font></td>
            </tr>
        </table>
          <br>
              <table>
          <tr>
              
               <%-- <td  align="right" >
             <input align="centre" type="button" value="View" class="blue button"  onClick="window.close()" > 
          </td> --%>
              
          <td align="right">
               <input type="submit" value="Set remark"  class="blue button">
          </td>
              </form>
            <form name="Archive" method="post" action="AlertArchive.jsp">
                <td  align="right">
                    <input type="submit"  class="blue button" style="width:150px" value="Archive this Alert">
                </td
             
            </form>
          </tr>

              </table>
     </table>
</div>
    </section>
</div>

<script type="text/javascript">Cufon.now();</script>
</body>
</html>