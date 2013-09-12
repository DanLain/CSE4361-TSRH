

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.filetracking.pendingfiles.DisplayDetails"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="edu.uta.tsrh.filetracking.pendingfiles.PatientRecor"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientRecord"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
    
    
        <title>Home - Home Page |</title>
        <meta charset="utf-8">

        <meta name="description" content="Place your description here">
        <meta name="keywords" content="put, your, keyword, here">
        <meta name="author" content="Templates.com - website templates provider">
        <link rel="stylesheet" href="/TSRH/css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="/TSRH/css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="/TSRH/css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="/TSRH/css/basic.css" type="text/css" media="all">
        <link rel="stylesheet" href="/TSRH/css/buttonCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="/TSRH/css/tableCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="/TSRH/css/comboCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="/TSRH/css/radioCSS.css" type="text/css" media="all">
                <link rel="stylesheet" href="css/help.css" type="text/css" media="all">

       
        <script type="text/javascript" src="js/cufon-yui.js"></script>
                <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>

        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>        

    
<meta http-equiv="Content-Script-Type" content="text/javascript" /> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Patient Details</title>
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
            
            <div id="user_status">
        
        Welcome rocker!
        <table>
            <tr>
                <td><a href="/TSRH/changePassword.jsp">Change Password</a></td><td></td>
                <td><a href="/TSRH/logout.jsp">Logout</a></td>
            </tr>
        </table>


        
    </div> 
		<div class="container">
			<h1><a href="/TSRH/index.jsp">TSRHC</a></h1>
			<nav>
				<ul>
					
                                        <li><a href="/TSRH/index.jsp"><strong>Home</strong></a></li>
                                        <li><a href="/TSRH/ReportSelection.jsp"><strong>Reports</strong></a></li>
                                        <li><a href="/TSRH/consult.jsp"><strong>Consult</strong></a></li>
                                        <li class="current"><a href="/TSRH/FileTracking"><strong>File Tracking</strong></a></li>
                                        <li><a href="/TSRH/notification.jsp"><strong>Set Alert</strong></a></li>
                                        <li><a href="/TSRH/phone.jsp"><strong>Phone Record</strong></a></li>
                                        <li><a href="/TSRH/PatientManagement"><strong>Patient Management</strong></a></li>
                                        <li><a href="/TSRH/test.jsp"><strong>Tests</strong></a></li>
                                        
		
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
<div id="tbltxt">			
<table class="bordered">
    <thead>
        <tr>
            <th>Patient ID</th>
            <th>Patient Name</th>
            <th>Date of Birth</th>
        </tr>
    </thead>
    <tbody>
        <%
            String patientId = request.getParameter("fileID");
            System.out.println("------------>"+patientId);
            String patientName ="";
            String DOB = "";
            
            
            if(patientId.contains("tsrh") || patientId.contains("TSRH")) {
                patientId = patientId.substring(4, patientId.length());
            }

            ArrayList<PatientRecor> somerec = DisplayDetails.getPatientRecordLis(patientId);
            PatientRecor pRec =null;
            for (int ix = 0; ix < somerec.size(); ix++) {
                pRec = (PatientRecor) somerec.get(ix);
            
            }
              String somet = pRec.getId();
            System.out.println("<<<<<<<<<<------------------>>>>>"+somet);
        ArrayList<PatientRecord> pRecordList = RecordController.getPatientRecordList(somet, patientName, DOB);
           System.out.println("------------->>>>"+pRecordList.size());
            for (int i = 0; i < pRecordList.size(); i++) {
                PatientRecord pRecord = (PatientRecord) pRecordList.get(i);
                patientName = pRecord.getFirstName() + " " + pRecord.getLastName();
               
        %>
         <tr>
            <td>
                <h3 class="active">
                    TSRH<%=pRecord.getId()%><br />
                </h3>
            </td>
            <td class="patname">
                    <%=patientName%></a>
            </td>
            <td class="location">
                <%=new SimpleDateFormat("EEE, MM/d/yyyy 'at' kk:mm zzzz").format(pRecord.getDOB())%>
            </td>
        </tr>
        <%}%>
        </table>
 <p>&nbsp;</p>
        
        <form action="/TSRH/FileTracking" method="post">
    <input type="submit" class="blue button" align="center" style="width:150px" value="File Tracking Home" />
</form>
        
      </div>  
     </article>
<ul class="banners col-2">
 <p>&nbsp;</p>
  <p>&nbsp;</p>
   <p>&nbsp;</p>
    </ul>
<ul class="articles">
                        <li>
                            <div class="box">
                                <span class="icon">
                                    <img src="/TSRH/images/icon2.png"></span>
                                <div class="inner">
                                    <h3>Lab Test</h3>
                                    <p>Lab test enumerat tentationes deduxit pro singulis patiens. Test details mutari possunt et sic probabis possunt updated quando available</p>
                                    <!-- <p>Sed ut perspiciatis ungomnis iste natus error sit volup tiatem lautium, totam rem aperiam.<br>& nbsp;<br></p>
                                    <div>
                                        <a href="#http://www.tsrhc.org/" class="link1"><span><span><strong>Main Page</strong></span></span></a>
                                    </div> -->
                                </div>
                            </div>
                          
                        </li>
                        <li>
                            <div class="box">
                                <span class="icon">
                                    <img src="/TSRH/images/icon3.png"></span>      
                                <div class="inner">
                                    <h3>Consultation</h3>
                                    <p>Consultations providebit retineo of consultationes pro singulis patiens quos possidet date consultationis, ratio, praescriptio etc</p>
                                    <!--<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium vo- luptatum deleniti.</p>
                                    <div>
                                        <a href="#" class="link1"><span><span><strong>Read More</strong></span></span></a>
                                    </div>-->
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="box">
                                <span class="icon">
                                    <img src="/TSRH/images/icon4.png"></span>           
                                <div class="inner">
                                    <h3>Track File</h3>
                                    <p>Track file page potest dici vestigent lima. Users can reprehendo-in, reprehendo sicco lima Vide album of pendente files etc</p>
                                    <!--<p>Temporibus autem quibusdam et aut officiis <a href="#">debitis aut rerum</a> necessitatibus saepe eveniet ut et voluptates.</p>
                                    <div>
                                        <a href="#" class="link1"><span><span><strong>Read More</strong></span></span></a>
                                    </div>-->
                                </div>
                            </div>
                        </li>
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
    </tbody>
</table>