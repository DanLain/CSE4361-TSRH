<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%> 

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
	<header>
		<div class="container">
			<h1><a href="index.jsp">Hope Center</a></h1>
			<nav>
		<ul>
                <li><a href="index.jsp"><strong>Home</strong></a></li>
		<li class="current"><a href="test.jsp"><strong>Test/Consult</strong></a></li>
		<li><a href="/TSRH/filetrackingpage.org">File Tracking</a></li>
                <li><a href="notification.jsp"><strong>Set Alert</strong></a></li>							  </ul>
			</nav>
			<div id="slogan"></div>
		</div>
	</header>
	
	<div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
        
<%
String patient_idnumber = Controller.getCurrentPatient().getPatientId();
String cdateofconsultation = request.getParameter("dateofconsultation");
String cwhomconsulted = request.getParameter("whomconsulted");
String cconsultedfor= request.getParameter("consultedfor");
String cprescription = request.getParameter("prescription");
String cconsultationremindernote = request.getParameter("consultationremindernote");
String cconsultationreminderdate = request.getParameter("consultationreminderdate");
String cconsultationcomments= request.getParameter("consultationcomments");
String cuserid = request.getParameter("userid");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement st=con.createStatement();
    int i =st.executeUpdate("insert into consultation_record(patientid_consultation, dateofconsultation,whomconsulted, consultedfor, prescription, consultationremindernote, consultationreminderdate,consultationcomments, userid) values('"+patient_idnumber+"','"+cdateofconsultation+"','"+cwhomconsulted+"','"+cconsultedfor+"','"+cprescription+"','"+cconsultationremindernote+"','"+cconsultationreminderdate+"','"+cconsultationcomments+"','"+cuserid+"')");
    out.println("data is successfully inserted");
    }
    catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    
}
%>

      <tr>
      </tr>
      <br>
      </br>
      <br>
      </br>
        
        
        <div class="container">
		<div class="left">
			<div class="right">
				<div class="inside">
<a rel="nofollow" href="http://www.templatemonster.com/" class="new_window">Website template</a> designed by TemplateMonster.com<br/><a href="http://www.templates.com/product/illustrations/" class="new_window">Vector Illustrations</a> provided by Templates.com
				</div>
			</div>
		</div>
	</div>

</tr>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>