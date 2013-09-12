<%@page import="edu.uta.tsrh.model.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--?xml version="1.0" encoding="UTF-8"?-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>

<title>File tracking Page | Add pending date form</title>
<meta charset="utf-8"/>
<meta name="description" content="Place your description here"/>
<meta name="keywords" content="put, your, keyword, here"/>
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
<script type="text/javascript" src="/TSRH/js/cal.js"></script>
<!--Script for datepicker function-->
<script type="text/javascript">

jQuery(document).ready(function () {
	
	$('input.three').simpleDatepicker({ startdate: '01/01/1800', enddate: '01/01/2100' });
	
});
</script>
<!--Script for dynamic select boxes function-->
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
                <li class="sub"><a href="<%=fileDetailsUrl%>">File Details</a></li>					
			 </ul>
		</nav>
		<div id="slogan">
		</div>
	 </div>
</header>
<!-- content -->
<section id="content">
	<div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
		<div class="inside">
			<div class="wrapper indent">
				<article class="col-1">
					<% String fileId = (String) request.getAttribute("fileId");
  						String url = "/TSRH/filetracking/file/pendingdates/addDates.org?fileId=" + fileId;
  						ArrayList<Employee> staffList = (ArrayList<Employee>) request.getAttribute("staffList");
  					%>
					<h2>Add pending dates</h2>
						<form name="addpendingdatesform" action="<%=url %>" method="post">
							<table>
								<tr>
									<td ><h3>File to be given to:</h3></td>
									<td>
										<select name="staffId">
							            	<% 
								            	String staffName = null;
								            	for(int i=0;i<staffList.size();i++) { 
								            	staffName = staffList.get(i).getFirstName() + " " + staffList.get(i).getLastName();
							            	%>
							  				<option  value="<%= staffList.get(i).getId()%>"><%=staffName%></option>
											<%} %>
										</select> 
									</td>
								</tr>
								<tr>
									<td><h3>Date:</h3></td>
									<td><input name="date" value="yyyy-mm-dd" type="text" id="date2" class="three" /></td>
								</tr>
								<tr>
									<td><h3>Time: (hh:mm) </h3></td>
									<td><select name="timeh" >
											<option value="--">--</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>				
										</select>
										<select name="timem" >
											<option value="--">--</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>	
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
											<option value="32">32</option>
											<option value="33">33</option>
											<option value="34">34</option>
											<option value="35">35</option>
											<option value="36">36</option>
											<option value="37">37</option>
											<option value="38">38</option>
											<option value="39">39</option>
											<option value="40">40</option>
											<option value="41">41</option>
											<option value="42">42</option>
											<option value="43">43</option>
											<option value="44">44</option>
											<option value="45">45</option>
											<option value="46">46</option>
											<option value="47">47</option>
											<option value="48">48</option>
											<option value="49">49</option>
											<option value="50">50</option>
											<option value="51">51</option>
											<option value="52">52</option>
											<option value="53">53</option>
											<option value="54">54</option>
											<option value="55">55</option>
											<option value="56">56</option>
											<option value="57">57</option>
											<option value="58">58</option>
											<option value="59">59</option>
											<option value="60">60</option>								
										</select>
									</td>
								</tr>
								<tr>
									<td><h3>Notes:</h3></td> 
									<td><input name="notes" value="notes"type="text" size="45" /></td>
								</tr>
								<tr>
									<td><h3>Reason:</h3></td>
									<td>
										<select name="reason" id="reason">
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
										</select>
									</td>
								</tr>
								<tr>
									<td height="30"><h3>File location:</h3></td>
									<td><select name="locationlevel1" id="location" onchange="locationChange(this);">
										<option value="empty">Select a location</option>
										<option selected="selected" value="Clinic">Clinic</option>
										<option value="Research Office">Research Office</option>
										<option value="Office">Office</option>
										<option value="Other">Other</option>
										</select>
									</td>
								</tr>
								<tr>
									<td height="50"><h3>Specific file location:</h3></td> 
									<td><select name="locationlevel2" id="locationoption">
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
										</select>
									</td>
								</tr>
								<tr>
									<td height="50"><h3>Specify here (if other)</h3></td>
									<td><input type="text" name="locationOther" size="45" /></td>
								</tr>
							</table>
							<br /><br /><br />
							<input type="submit"  value="add pending date" />
						</form>
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