<%-- 
    Document   : vacationDetail
    Created on : Apr 19, 2013, 6:20:17 PM
    Author     : Sravan
--%>

<%-- 
    Document   : AlertMessages
    Created on : Apr 10, 2013, 8:34:42 PM
    Author     : Sravan
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=8" />


<html lang="en">

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@page import="controller.Controller" import="dbmanager.DBConfig"%>
    <%@page import ="java.util.*" import="PRMSalert.*" import="alertsystemdatabase.*" import="java.sql.Timestamp" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vacation Details</title>
        <meta charset="utf-8">
        <meta name="description" content="Place your description here">
        <meta name="keywords" content="put, your, keyword, here">
        <meta name="author" content="Templates.com - website templates provider">
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/tableCSS.css" type="text/css" media="all"></link>
                    <!-- Help files -->

        <link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>

        <script type="text/javascript" src="js/maxheight.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
        <script type="text/javascript" src="js/script.js"></script>

        <!-- Loading Theme file(s) -->
        <link rel="stylesheet" href="themes/forest.css" />
        <link rel="stylesheet" href="themes/layouts/small.css" />
        <link href="DatePicker/kendo.common.min.css" rel="stylesheet">
        <link href="DatePicker/kendo.blueopal.min.css" rel="stylesheet">
        <script src="DatePicker/jquery.min.js"></script>
        <script src="DatePicker/kendo.web.min.js"></script>
 <script type="text/javascript">

           function upgradepicker() {
                var date= new Date();
                $("#alertdate").kendoDatePicker({
                    min:date
                });
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
     <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
    %>
    <jsp:useBean id="Controller" class="controller.Controller" scope="session" />
    <body id="page1" onLoad="upgradepicker()">
        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/vacationDetail.html' })" class="first">help</a>
        <div class="wrap">
            <!-- header -->
        <%@ include file="headers.jsp" %>
        <!-- content -->
         <section id="content">
  <div class="inside">
    <div class="container">
      <div class="wrapper indent">
        <article class="col-0"> 
       
 <h2> Vacation details: </h2>   
 
	 <table width="800" align="center">
      <%  
      Vacation v = new Vacation();
      Vacation current_vac = new Vacation();
      current_vac.getVacation(Integer.parseInt(request.getParameter("vacationId")));
      
    %>
    <table class="bordered">
         <tr>
           
         
         <td > <h3>Vacation Start Date:      </h3></td>
          <td>
              <font color="#00BFFF"><label><%=current_vac.vacation_start %></label>
           </td>
          
          <td > <h3>Vacation End Date:</h3></td>
          <td>
             <font color="#00BFFF"><label><%=current_vac.vacation_end %></label>
          </td>
          </tr>
          <tr>
           <td width = "100"> <h3> Forward alerts to:      </h3></td>
          <td>
              <font color="#00BFFF"><label><%=current_vac.forward_to %></label>
           </td>
          
          <td width = "100"> <h3>Created on:</h3></td>
          <td>
             <font color="#00BFFF"><label><%=current_vac.created_on %></label>
          </td>
          </tr>
         <tr>
         
             <td><h3>Title:</h3></td>
          <td width="100px" align="left" colspan="5"><p>
                   <font color="#00BFFF">     <label><%=current_vac.vacation_title %></label>
           </p>
           </td>
           
          </tr>

           <tr>
              <td><h3>Message:</h3></td>
           <td width="100" colspan="5"><p>
                   <font color="#00BFFF">    <label> <%=current_vac.message %> 
           </p>
            </td>    
                     
           <br />
           <br />
          </tr>
</table>
          
     
      <br>
      
          <br>

  <!-- buttons -->
              <table>
          <tr>
              
             
          <td align="right">
              <form action="VacationManagement.jsp" method="post">
                  <input type="submit" class="blue button" align="center" style="width:150px" value="Back" />
             </form>
 
          </td>
              <td align="right">
              <form action="editVacation.jsp" method="post">
                  <input type="hidden" name="vacationId" value="<%=current_vac.vacation_id%>"></input>
                  <input type="hidden" name="vacationTitle" value="<%=current_vac.vacation_title%>"></input>
                  <input type="hidden" name="vacationFrom" value="<%=current_vac.vacation_start%>"></input>
                  <input type="hidden" name="vacationTo" value="<%=current_vac.vacation_end%>"></input>
                  <input type="hidden" name="vacationMsg" value="<%=current_vac.message%>"></input>
                  <input type="hidden" name="vacationId" value="<%=current_vac.vacation_id%>"></input>
                  <input type="submit" class="blue button" align="center" style="width:150px" value="Edit this Vacation" />
             </form>
 
          </td>
              <td align="right">
              <form onSubmit="return confirm('are you sure?')" action="deleteVacation.jsp" method="post">
                  <input type="hidden" name="vacationId" value="<%=current_vac.vacation_id%>"></input>
                  
                  <input type="submit" class="blue button" align="center" style="width:150px" value="Delete this Vacation" />
             </form>
 
          </td>
            
</tr>

              </table>
     </table>
                          </article>
                        </div>
        </div>
        </div>
    </section>
  </div>      
        <!-- footer -->
    <%@ include file="footers.jsp" %>
    <script type="text/javascript">Cufon.now();</script>
    <script src="js/jquery.pageslide.min.js"></script>

    </body>
</html>