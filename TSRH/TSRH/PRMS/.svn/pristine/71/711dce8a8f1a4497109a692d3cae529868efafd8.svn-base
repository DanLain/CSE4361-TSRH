<%@page import="edu.uta.tsrh.model.Employee"%>
<%@page import="edu.uta.tsrh.db.MySQLDBServices"%>
<%@page import="edu.uta.tsrh.db.DBServices"%>
<%@page import="edu.uta.tsrh.model.Transaction"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--?xml version="1.0" encoding="UTF-8"?-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />

<title>File tracking Page | History form</title>
<meta charset="utf-8" />
<!--Cascading Stylesheets-->
<link rel="stylesheet" href="/TSRH/css/reset.css" type="text/css" media="all" />
<link rel="stylesheet" href="/TSRH/css/layout.css" type="text/css" media="all" />
<link rel="stylesheet" href="/TSRH/css/style.css" type="text/css" media="all" />
<link href="/TSRH/css/calendar.css" rel="stylesheet" type="text/css" />
<!--Javascripts-->
<script type="text/javascript" src="/TSRH/js/maxheight.js"></script>
<script type="text/javascript" src="/TSRH/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/TSRH/js/cufon-yui.js"></script>
<script type="text/javascript" src="/TSRH/js/cufon-replace.js"></script>
<script type="text/javascript" src="/TSRH/js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="/TSRH/js/script.js"></script>
<script type="text/javascript" src="/TSRH/js/jquery-1.js"></script>
<script type="text/javascript" src="/TSRH/js/cal.js"></script>
<!--Function for datepicker-->
<script type="text/javascript">
	jQuery(document).ready(function() {

		$('input.three').simpleDatepicker({
			startdate : '01/01/1800',
			enddate : '01/01/2100'
		});

	});
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
		<% String FileID = (String) request.getAttribute("fileId");
 String fileDetailsUrl = "/TSRH/filetracking/search/results.org?fileID=" + FileID;
%>
		<header>
		<div class="container">
			<h1><a href="/TSRH/index.jsp">TSRHC</a></h1>
			<nav>
				<ul>
					<li><a href="/TSRH/index.jsp"><strong>Home</strong></a></li>
					<li><a href="/TSRH/test.jsp"><strong>Test/Consultation</strong></a></li>
					<li class="current"><a href="/TSRH/filetrackingpage.org"><strong>File Tracking</strong></a></li>
					<li><a href="/TSRH/notification.jsp"><strong>Set Alert</strong></a></li>
					<li class="sub"><a href="<%=fileDetailsUrl%>">File Details</a></li>
 				</ul>
			</nav>
			<div id="slogan"></div>
		</div>
		</header>
		<!-- content -->
		<section id="content">
		<div class="container">
			<div class="ic">More Website Templates at TemplateMonster.com!</div>
			<div class="inside">
				<div class="wrapper indent">
					<article class="col-1">
					<table>
						<tr>
							<th height="20" width ="800"><h3>Date</h3>
							</th>

							<th height="20" width="800"><h3>Staff Name</h3>
							</th>

							<th height="20" width="800"><h3>Type</h3>
							</th>

							<th height="20" width="800"><h3>Location</h3>
							</th>

							<th height="20" width="800"><h3>Notes</h3>
							</th>

							<th height="20" width="800"><h3>Reason</h3>
							</th>

							<th height="20" width="800"><h3>Return Date</h3>
							</th>
						</tr>
						<%
ArrayList<Transaction> history = (ArrayList<Transaction>) request.getAttribute("history");
DBServices dbServices = new MySQLDBServices();
for(int i=0; i<history.size();i++)
{
    Transaction historyElement = history.get(i);
    String employeeName = null ;
    Employee employee = dbServices.getEmployee(historyElement.getEmployeeID());
    employeeName = employee.getFirstName()+" "+employee.getLastName();
%>
						<tr>
							<td height="20" width="800"><%= historyElement.getDate() %></td>
							<td height="20" width="800"><%= employeeName%></td>
							<td height="20" width="800"><%= historyElement.getType() %></td>
							<td height="20" width="800"><%= historyElement.getLocation() %></td>
							<td height="20" width="800"><%= historyElement.getNotes() %></td>
							<td height="20" width="800"><%= historyElement.getReason() %></td>
							<td height="20" width="800"><%= historyElement.getReturnDate() %></td>
						</tr>
						<%} %>
					</table>

					</article>
					<ul class="banners col-2">
						<p>&nbsp;</p>


					</ul>
				</div>
			</div>
		</div>
		</section>
	</div>
	<!-- footer -->
	<footer>
	<div class="container">
		<div class="left">
			<div class="right">
				<div class="inside">
					<a rel="nofollow" >Website template</a> designed by
					TemplateMonster.com<br />
					<a href="http://www.templates.com/product/illustrations/"
						class="new_window">Vector Illustrations</a> provided by
					Templates.com
				</div>
			</div>
		</div>
	</div>
	</footer>
	<script type="text/javascript">
		Cufon.now();
	</script>
</body>
</html>