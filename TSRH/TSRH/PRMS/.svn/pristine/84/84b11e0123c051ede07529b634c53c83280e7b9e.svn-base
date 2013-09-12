<%-- 
    Document   : PatientPhoneList
    Created on : Dec 4, 2012, 1:34:01 PM
    Author     : Vikas
--%> 
<!DOCTYPE html>
<html lang="en">

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientRecord"%>


<head>
	<title>TSRHC - Phone Management - Select</title>
	<meta charset="utf-8">
	<meta name="description" content="Place your description here">
	<meta name="keywords" content="put, your, keyword, here">
	<meta name="author" content="Templates.com - website templates provider">
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/tableCSS.css" type="text/css" media="all">
	<script type="text/javascript" src="/TSRH/js/head.min.js"></script>
	
         <!-- Help files -->
            
        <link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>
            
        <script type="text/javascript" src="js/maxheight.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        
</head>
<body>
    
<div class="wrap">	    
	    <!-- header -->
	    <%@ include file="headers.jsp" %>
            
<table class="bordered" align="center">
    <thead>
        <tr>
            <th>Patient ID</th>
            <th>Patient Name</th>
            <th>Date of Birth</th>
        </tr>
    </thead>
    <tbody>
        <%
            String patientId = request.getParameter("patient");
            String patientName = request.getParameter("patientName");
            String DOB = request.getParameter("DOB");
            
            ArrayList<PatientRecord> pRecordList = RecordController.getPatientRecordList(patientId, patientName, DOB);
            String url;
            for (int i = 0; i < pRecordList.size(); i++) {
                url = "phoneChooseNote.jsp?patient=";
                PatientRecord pRecord = (PatientRecord) pRecordList.get(i);
                url = url + pRecord.getId();
                patientName = pRecord.getFirstName() + " " + pRecord.getLastName();
                
        %>
        <tr>
            <td>
                <h3 class="active">
                    <%=pRecord.getId()%><br />
                </h3>
            </td>
            <td class="patname">
                <a href="<%=url%>"><%=patientName%></a>
            </td>
            <td class="location">
                <%=new SimpleDateFormat("EEE, MM/d/yyyy 'at' kk:mm zzzz").format(pRecord.getDOB())%>
            </td>
        </tr>
        <%}%>
    </tbody>
</table>
    
    
    <br></br> 
    <br></br>
    <br></br> 
    <br></br>
    
<!-- footer -->
	<jsp:include page="footer.jsp" />
	<script type="text/javascript">Cufon.now();</script>
        <script src="js/jquery.pageslide.min.js"></script>
    </body>
</html>
