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
	
	<div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
<%

try
{
	/*Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alertsystem","root","1234");
    Statement stmt=conn.createStatement();
    ResultSet res = null;
    String test_requestid1=request.getParameter("test_requestid");
    int ttest_requestid=Integer.parseInt(test_requestid1);
    res= stmt.executeQuery("select * from test_result_record"+ " where test_result_requestid ="+ttest_requestid);
    */
    String test_requestid1=request.getParameter("test_requestid");
    int ttest_requestid=Integer.parseInt(test_requestid1);
    ResultSet res = Controller.getDBManager().getTestResult(ttest_requestid);
%>
<h3>&nbsp;</h3>
  <table><tr><td>
            <h2> Test Results   </h2> </td></tr>    &nbsp; &nbsp;&nbsp;        <br/> <br/>
<strong>
<table border='1'>
			<tr>
			<th align='center'>Test Result ID</th>
			<th align='center'>Test Request ID</th>
			<th align='center'>Test Taken Date</th>	
			<th align='center'>Result Date</th>		
			<th align='center'>Result</th>
			<th align='center'>Result File Path</th>
			<th align='center'>Who Is To Be Informed</th>
			<th align='center'>When To Be Informed</th>						
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
				<td align='center'><%=res.getDate(4)%></td>  
				<td align='center'><%=res.getString(5)%></td>  
				<td align='center'><%=res.getString(6)%></td> 
				<td align='center'><%=res.getString(7)%></td>  	
				<td align='center'><%=res.getString(8)%></td>											
				
				
		
<td><div align="center"><td width="80"> <form name="form2"><a href="moreinfoontestresult.jsp?test_resultid=<%=res.getInt(1)%>" onClick="return popup(this,'Expanded View')" ><h3><input type="submit" name="submit" style="background-image:url(images/button.gif)"value= "MoreInfo"></h3></a></div></td>
 <td><div align="center"><td width="80"> <form name="form2"><a href="updatetestresult.jsp?test_resultid=<%=res.getInt(1)%>" onClick="return popup(this,'Expanded View')" ><h3><input type="submit" name="submit" style="background-image:url(images/button.gif)"value= "Update"></h3></a></div></td>


</tr>
</strong>

<% 
} 

 //res.close();
 //stmt.close();
 //conn.close();
 Controller.getDBManager().closeConnection();
}
catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    }
%>
</table>
<br>
</br>
<br>
</br>
<TABLE>
<TR>
<td width="80"> <form name="form2" method="post" action="">
<a href="search.jsp" >   <h3><input type="submit" name="submt" style="background-image:url(images/button.gif)"value= "Back"></h3>
                               </a>


<!--  <INPUT TYPE="submit" VALUE="new test request " onclick="location.href='recordtestrequest.jsp' " >-->
<!--  <td width="80"> <form name="form2" method="post" action="">
<a href="recordtestresult.jsp"   onClick="return popup(this,'Expanded View')">   <h3><input type="submit" name="submit" style="background-image:url(images/button.gif)"value= "New Test Result"></h3>
                               </a>-->
                               

                             
                             
                            </form>     </td> 
</TD>
</TR>
</TABLE>
</div>
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