<%@page import="edu.uta.tsrh.model.PendingFiles"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--?xml version="1.0" encoding="UTF-8"?-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Script-Type" content="text/javascript" /> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>File tracking Page | Pending files</title>
<!--Cascading Stylesheets-->
<link rel="stylesheet" href="/TSRH/css/reset.css" type="text/css" media="all"/>
<link rel="stylesheet" href="/TSRH/css/layout.css" type="text/css" media="all"/>
<link rel="stylesheet" href="/TSRH/css/style.css" type="text/css" media="all"/>
<link href="/TSRH/css/calendar.css" rel="stylesheet" type="text/css" />

<!-- Javascripts -->
<script type="text/javascript" src="/TSRH/js/maxheight.js"></script>
<script type="text/javascript" src="/TSRH/js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="/TSRH/js/cufon-yui.js"></script>
<script type="text/javascript" src="/TSRH/js/cufon-replace.js"></script>
<script type="text/javascript" src="/TSRH/js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="/TSRH/js/script.js"></script>
<script type="text/javascript" src="/TSRH/js/jquery-1.js"></script>
<script type="text/javascript" src="/TSRH/js/jquery.js"></script>
<script type="text/javascript" src="/TSRH/js/cal.js"></script>

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
		<div class="container">
			<h1><a href="/TSRH/index.jsp">TSRHC</a></h1>
			<nav>
				<ul>
					<li><a href="/TSRH/index.jsp"><strong>Home</strong></a></li>
					<li><a href="/TSRH/test.jsp"><strong>Test/Consultation</strong></a></li>
					<li class="current"><a href="/TSRH/filetrackingpage.org"><strong>File Tracking</strong></a></li>
					<li><a href="/TSRH/notification.jsp"><strong>Set Alert</strong></a></li>
		
 				</ul>
			</nav>
		  <div id="slogan"></div>
	 	</div>
	 </header>
<!-- content -->
	<section id="content">
		<div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
			<div class="inside">
				<div class="wrapper indent">
					<article class="col-1">
	<h2>Today's Pending files</h2>	

	<div id="tbltxt">			
<table border="1">
<tr>
<th class="fid">File ID</th>
<th class="pname">Patient Name</th>
<th class="pedate">Pending Date</th>
<th class="location">Location</th>
<th class="reason">Reason</th>
<th class="staffname">Staff Name</th>
</tr>
<%
ArrayList<PendingFiles> pendingFileList = (ArrayList<PendingFiles>) request.getAttribute("pendingFileList");
        String url;
        int id= 0;
        String idString = null;
        String patientName = null;
        for (int i=0;i<pendingFileList.size();i++)
        {
            url="/TSRH/filetracking/search/results.org?fileID=";
            PendingFiles pendingFiles = (PendingFiles) pendingFileList.get(i);
            id=(int)pendingFiles.getFileId();
            idString = Integer.toString(id);
            url= url+idString;
            patientName = pendingFiles.getPatientFirstName() + " " + pendingFiles.getPatientLastName();
%>
<tr>
<td class="fid"><%= pendingFiles.getFileId()%></td>
<td class="pname"><a href="<%=url%>"><%=patientName%></a></td>
<td class="pedate"><%=pendingFiles.getPendingDate()%></td>
<td class="location"><%=pendingFiles.getPendingLoaction()%></td>
<td class="reason"><%= pendingFiles.getReason()%></td>
<td class="staffname"><%=pendingFiles.getEmployeeName()%></td>
</tr>
<%
}
%>
</table>

</div>
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
<a rel="nofollow" >Website template</a> designed by TemplateMonster.com<br/><a href="http://www.templates.com/product/illustrations/" class="new_window">Vector Illustrations</a> provided by Templates.com
				</div>
			</div>
		</div>
	</div>
</footer>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>