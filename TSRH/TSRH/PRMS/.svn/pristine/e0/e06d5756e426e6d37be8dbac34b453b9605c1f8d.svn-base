<%@page import="edu.uta.tsrh.model.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--?xml version="1.0" encoding="UTF-8"?-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>File tracking Page | Edit Pending Dates form</title>
<meta charset="utf-8"/>
<meta name="description" content="Place your description here"/>
<meta name="keywords" content="put, your, keyword, here"/>
<meta name="author" content="Templates.com - website templates provider"/>
<link rel="stylesheet" href="/TSRH/css/reset.css" type="text/css" media="all"/>
<link rel="stylesheet" href="/TSRH/css/layout.css" type="text/css" media="all"/>
<link rel="stylesheet" href="/TSRH/css/style.css" type="text/css" media="all"/>
<link href="/TSRH/css/calendar.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="/TSRH/js/maxheight.js"></script>
<script type="text/javascript" src="/TSRH/js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="/TSRH/js/cufon-yui.js"></script>
<script type="text/javascript" src="/TSRH/js/cufon-replace.js"></script>
<script type="text/javascript" src="/TSRH/js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="/TSRH/js/script.js"></script>
<script type="text/javascript" src="/TSRH/js/jquery-1.js"></script>
<script type="text/javascript" src="/TSRH/js/cal.js"></script>
<script type="text/javascript">

jQuery(document).ready(function () {
	
	$('input.three').simpleDatepicker({ startdate: '01/01/1800', enddate: '01/01/2100' });
	
});
</script>
<!-- Function for Dynamic select -->
<script type="text/javascript">
//<![CDATA[

var locationLists = new Array(15)
locationLists["empty"] = ["Specific location"];
locationLists["Clinic"] = ["CMT", "HPE", "MC", "Neupa"];
locationLists["Research Office"] = ["Catherine", "Linsley", "Dahlia", "Betsy", "Nancy"];
locationLists["Office"] = ["N/A"];
locationLists["Other"]= ["N/A"];

function locationChange(selectObj) {
	// get the index of the selected option
	var idx = selectObj.selectedIndex;
	// get the value of the selected option
	var which = selectObj.options[idx].value;

	cList = locationLists[which];
	// get the locationoption select element via its known id
	var cSelect = document.getElementById("locationoption");
	// remove the current options from the locationoption select
	var len=cSelect.options.length;
	while (cSelect.options.length > 0) {
		cSelect.remove(0);
	}
	var newOption;
	// create new options
	for (var i=0; i<cList.length; i++) {
		newOption = document.createElement("option");
		newOption.value = cList[i];  // assumes option string and value are the same
		newOption.text=cList[i];
		// add the new option
		try {
			cSelect.add(newOption);  // this will fail in DOM browsers but is needed for IE
		}
		catch (e) {
			cSelect.appendChild(newOption);

		}
	}
}
//]]>

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
					<li class="sub"><a href="<%=fileDetailsUrl%>"><strong>File Details</strong></a></li>
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
									<%
				String url = "/TSRH/filetracking/file/pendingdates/edit.org?pendingId=" + (String) request.getAttribute("pendingId") ;
				url = url + "&fileId="+ FileID;
				String deleteUrl = "/TSRH/filetracking/file/pendingdates/delete.org?pendingId=" + (String) request.getAttribute("pendingId");
				deleteUrl = deleteUrl + "&fileId="+ FileID;
				ArrayList<Employee> staffList = (ArrayList<Employee>) request.getAttribute("staffList");
				%>
								<form action="<%=url %>" method="post" style="display:inline">
			<table>
		    <tr>
				<td ><h3>File given to:</h3></td>
				<td>				<select name="staffId">
				<option value="<%= (String) request.getAttribute("staffId")%>" selected> <%= (String) request.getAttribute("staffName")%></option>
            	<% 
            	String staffName = null;
            	for(int i=0;i<staffList.size();i++) { 
            	staffName = staffList.get(i).getFirstName() + " " + staffList.get(i).getLastName();
            	%>
  				<option  value="<%= staffList.get(i).getId()%>"><%=staffName%></option>
				<%} %>
				</select> </td>
			</tr>
			<tr>
				<td><h3>Date:</h3></td>
				<td><input name="date" value="<%= (String) request.getAttribute("date")%>" type="text" id="date" class="three" /></td>
			</tr>
				<td><h3>Time: (hh:mm) </h3></td>
				<td><input name="time" value ="<%= (String) request.getAttribute("time")%>" type="text"size="45"/></td>
			</tr>

			<tr>
				<td><h3>Notes:</h3></td> 
            	<td><input type="text" value="<%= (String) request.getAttribute("notes")%>" name="notes" size="45"/>  </td>
			</tr>

			<tr>
				<td><h3>Reason:</h3></td>
				<td><select name="reason" id="reason">
						<option value=""> -- please choose -- </option>
						<option value="Lab results">Lab results</option>
						<option value="Medications Status">Medications Status</option>
						<option value="XRays Results">XRays Results</option>
						<option value="Consults/Referrals">Consults/Referrals</option>
						<option value="Surgery Update">Surgery Update</option>
						<option value="Procedures">Procedures </option>
						<option value="Doctors Appts.">Doctors Appts.</option>
						<option value="Condition Status">Condition Status</option>
						<option value="Records">Records</option>
						<option value="OR">OR</option>
						<option value="Parental/Family Studies">Parental/Family Studies</option>
						<option value="EEG Appt.">EEG Appt.</option>
						<option value="Check Return Clinic Appt. Status">Check Return Clinic Appt. Status</option>

					</select></td>
			</tr>
			<tr>
				<td height="30"><h3>File location:</h3></td>
				<td><select name="locationLevel1" id="location" onchange="locationChange(this);">
					<option value="empty">Select a location</option>
					<option selected="selected" value="Clinic">Clinic</option>
					<option value="Research Office">Research Office</option>
					<option value="Office">Office</option>
					<option value="Other">Other</option>
					</select></td>
			</tr>
			<tr>
				<td height="50"><h3>Specific file location:</h3></td> 
				<td><select name="locationLevel2" id="locationoption">
				<option selected="selected" value="empty">-----</option>
					<option value="CMT">CMT</option>
					<option value="HPE">HPE</option>
					<option value="MC">MC</option>
					<option value="Neupa">Neupa</option>
					<option value="TSNE">TSNE</option>
					<option value="BRNNE">BRNNE</option>
					<option value="SALNE-R">SALNE-R</option>
					<option value="SALNE-D">SALNE-D</option>
					<option value="N/A">N/A</option>
					</select></td>
			</tr>
			<tr>
				<td height="50"><h3>Specify here (if other)</h3></td>
				<td><input type="text" name="locationOther" size="45" /></td>
			</tr>
		</table>
			
	
<input type="submit"  value="Edit" />
	
		</form>
			</form>
	<form action="<%=deleteUrl %>" method="post" style="display:inline">	
			<input type="submit" value="Delete" />
			
			
	</form>	<a href="">
	<input type="button" value="Cancel"/></a>
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