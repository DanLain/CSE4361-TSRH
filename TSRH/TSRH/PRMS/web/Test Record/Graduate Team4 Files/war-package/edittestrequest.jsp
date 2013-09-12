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
					<li><a href="index1.html"><strong>Home</strong></a></li>
					<li><a href="test.html"><strong>Lab Test</strong></a></li>
					<li ><a href="consultation.html"><strong>Consultation</strong></a></li>
					<li><a href="search.html"><strong>Search</strong></a></li>
                    <li><a href="filetracking.html"><strong>Track File</strong></a></li>
									
			  </ul>
			</nav>
			<ul class="top-links">
				<li><a href="index.jsp"><img src="images/icon-home.gif"></a></li>
				<li><a href="contacts.html"><img src="images/icon-mail.gif"></a></li>
				<li class="last"><a href="#"><img src="images/icon-sitemap.gif"></a></li>
			</ul>
			<div id="slogan"></div>
		</div>
	</header>
	
	<div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
        
        
        <% 
String[] params = new String[11]; 
String tempo = " ";
tempo = request.getParameter("utestrequestid");
int utestrequestid = Integer.parseInt(tempo);
 params[0]= request.getParameter("utestname");
 params[1]= request.getParameter("utestrequestername");
 params[2] = request.getParameter("utestrequestdate");
 params[3] = request.getParameter("uexpectedresultdate");
 params[4] = request.getParameter("uexpectedresult");
 params[5] = request.getParameter("uistesttaken");
 params[6] = request.getParameter("uistestresultsubmitted");
 params[7]= request.getParameter("uremindernote");
 params[8] = request.getParameter("ureminderdate");
 params[9] = request.getParameter("ucomments");
 params[10]= request.getParameter("uuserid");

try
{
	/*
	Class.forName("com.mysql.jdbc.Driver");
	Connection connec = DriverManager.getConnection("jdbc:mysql://localhost:3306/alertsystem", "root", "1234");
	Statement st=connec.createStatement();
	int i =st.executeUpdate("update test_request_record set testname ='"+params[0]+"', testrequestername = '"+params[1]+"',testrequestdate='"+params[2]+"',expectedresultdate='"+params[3]+"',expectedresult='"+params[4]+"',istesttaken='"+params[5]+"',istestresultsubmitted = '"+params[6]+"', remindernote = '"+params[7]+"',reminderdate = '"+params[8]+"',comments = '"+params[9]+"',userid = '"+params[10]+"' where testrequestid="+utestrequestid);
	*/
	Controller.getDBManager().updateTestRequest(utestrequestid,params);
    out.println("test request has been updated successfully");
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