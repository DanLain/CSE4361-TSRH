<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%> 
<%@page import="dbmanager.*"%> 

<!DOCTYPE html>
<html lang="en">
<head>
<title>Seminars - Seminars | Charity - Free Website Template from Templates.com</title>
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
<SCRIPT TYPE="text/javascript">
<!--
function popup(mylink, windowname)
{
if (! window.focus)return true;
var href;
if (typeof(mylink) == 'string')
   href=mylink;
else
   href=mylink.href;
window.open(href, windowname, 'width=600,height=1000,scrollbars=yes');
return false;
}
 

//-->
</SCRIPT>
<!--[if lt IE 7]>
	<link rel="stylesheet" href="css/ie/ie6.css" type="text/css" media="screen">
	<script type="text/javascript" src="js/ie_png.js"></script>
	<script type="text/javascript">
		ie_png.fix('.png, #slogan, header nav ul li a, .icon img, .link1, .link1 span');
	</script>
<![endif]-->
<!--[if lt IE 9]>
	<script type="text/javascript" src="js/html5.js"></script>
<![endif]--></head>

<jsp:useBean id="Controller" class="controller.Controller" scope="session" />
<body id="page5" onLoad="new ElementMaxHeight();">
<div class="wrap">
<!-- header -->
	<%@ include file="headers.jsp" %>
                 <%
        //check if a user has logged in. If not redirect to home page
        String currentUser = (String) session.getAttribute("user");        
        if(currentUser == null){            
            String redirectURL = "index.jsp";
            response.sendRedirect(redirectURL);
        }
        %>	
	<div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
        <div align="center">
        
<% 
String tempo = request.getParameter("uconsultationid");
int uconsultationid = Integer.parseInt(tempo);            		
String udateofconsultation= request.getParameter("udateofconsultation");
String uwhomconsulted= request.getParameter("uwhomconsulted");
String uconsultedfor = request.getParameter("uconsultedfor");
String uprescription = request.getParameter("uprescription");
//String uconsultationremindernote = request.getParameter("uconsultationremindernote");
//String uconsultationreminderdate= request.getParameter("uconsultationreminderdate");
String uconsultationcomments = request.getParameter("uconsultationcomments");
String uuserid = request.getParameter("uuserid");
Connection connec = null;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	connec = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
        Statement st=connec.createStatement();
	int i =st.executeUpdate("update consultation_record set dateofconsultation =STR_TO_DATE('"+udateofconsultation+"','%Y-%m-%d'), whomconsulted = '"+uwhomconsulted+"',consultedfor='"+uconsultedfor+"',prescription='"+uprescription+"',consultationcomments = '"+uconsultationcomments+"', userid = '"+uuserid+"'where consultationid="+uconsultationid);
    out.println("Test Consultation  has been updated successfully.");
	}
catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    }
finally{
    if(null!= connec)
               {
        connec.close();
       }
    }
%>  


    

<br>
<br>


<table>

    <td colspan=2>  <input type="button" class="blue button" onclick="window.location = '/TSRH/testconsultation.jsp?pid=<%=Controller.getCurrentPatient().getPatientId()%>'" value="OK" >
    
</td>
<tr>
</table>
</div> 
   <br>
   <br>
   <br>
   <br>     
   <br>
   <br>
   <br>
   <br>
   <br>
   
        
        <%@ include file="footers.jsp" %>

</tr>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>