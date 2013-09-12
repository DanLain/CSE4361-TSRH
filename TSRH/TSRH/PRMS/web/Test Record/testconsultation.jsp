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
					<li ><a href="search.jsp"><strong>Search</strong></a></li>
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
	
	
	<%
//String patient_idnumber = request.getParameter("rs.getString(1)");
//String patient_idnumber = (String)session.getAttribute("patient_idnumber");
String patient_idnumber = Controller.getCurrentPatient().getPatientId();

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement stmt=conn.createStatement();
    ResultSet res = null;
    res= stmt.executeQuery("select * from consultation_record"+ " where patientid_consultation = '"+patient_idnumber+"'");
%>
<h3>&nbsp;</h3>
  <table><tr><td>
            <h2> Test Consultations  </h2> </td></tr>    &nbsp; &nbsp;&nbsp;        <br/> <br/>       
 
<strong>
<table border='1'>
			<tr>
			<th align='center'>Consultation ID</th>
			<th align='center'>Patient ID</th>
			<th align='center'>Date Of Consultation</th>	
			<th align='center'>Consulted By</th>		
			<th align='center'>Consulted for</th>
			<th align='center'>Prescription</th>
			<th align='center'>Reminder Note</th>
			<th align='center'>Reminder Date</th>
			<th align='center'>Comments</th>
			<th align='center'>User ID</th>
								
			</tr>
<%
 while(res.next()){
%>


	<% 		
			//while(res.next()){
			
		%>
				<tr>		
				<td align='center'><%=res.getInt(1)%></td>		
				<td align='center'><%=res.getInt(2)%></td>
				<td align='center'><%=res.getDate(3)%></td> 
				<td align='center'><%=res.getString(4)%></td>  
				<td align='center'><%=res.getString(5)%></td>  
				<td align='center'><%=res.getString(6)%></td> 
				<td align='center'><%=res.getString(7)%></td>  
				<td align='center'><%=res.getDate(8)%></td>
				<td align='center'><%=res.getString(9)%></td>
				<td align='center'><%=res.getString(10)%></td>
					
				
				
		
<td><div align="center"><td width="80"> <form name="form2"><a href="updatetestconsultation.jsp?consultation_id=<%=res.getInt(1)%>" onClick="return popup(this,'Expanded View')" ><h3><input type="submit" name="submit" style="background-image:url(images/button.gif)"value= "Update"></h3></a></div></td>
 
</tr>
</strong>

<% 
} 

 res.close();
 stmt.close();
 conn.close();
}
catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    }
%>
</table>
<br>
</br>
<TABLE>
<TR>
<TD>
<td width="80"> <form name="form2" method="post" action="">
<a href="search.jsp" >   <h3><input type="submit" name="submit" style="background-image:url(images/button.gif)"value= "Back"></h3>
                               </a>

</TD>
<TD>

<!-- <INPUT TYPE="submit" VALUE="new test consultation " onclick="location.href='recordtestconsultation.jsp' " > -->
 <td width="80"> <form name="form2" method="post" action="">
<a href="recordtestconsultation.jsp"  onClick="return popup(this, 'Expanded View')">   <h3><input type="submit" name="submit" style="background-image:url(images/button.gif)"value= "New Test Consultation"></h3>
</TD>
</TR>
</TABLE>
</div>
	
	
	
	
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