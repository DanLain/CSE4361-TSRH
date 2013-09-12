<%@page import="edu.uta.tsrh.model.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--?xml version="1.0" encoding="UTF-8"?-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>File tracking Page | Check in form</title>
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
<!-- Function for Now or Specific date -->
<script>
function clicked()
{
document.getElementById("datedisplay").style.visibility="visible";
document.getElementById("datedisplay1").style.visibility="visible";
document.getElementById("date1").value = "";
document.getElementById("timeH").value = "--";
document.getElementById("timeM").value = "--";
}
function clicktoday()
{
document.getElementById("datedisplay").style.visibility="hidden";
document.getElementById("datedisplay1").style.visibility="hidden";
var d = new Date();
var hour        = d.getHours();
var minute      = d.getMinutes();

if(hour<10)
{hour="0"+hour;}
if(minute<10)
{minute="0"+minute;}
var thedate = new Date();
var dayD = thedate.getDate();
var monthD = (thedate.getMonth()+1);
var yearD = thedate.getFullYear();
if(dayD<10)
{dayD="0"+dayD;}
if(monthD<10)
{monthD="0"+monthD;}
var todaysdate = yearD  + "-" +monthD+ "-" + dayD  ;


document.getElementById("date1").value = todaysdate;
document.getElementById("timeH").value = hour;
document.getElementById("timeM").value = minute;
}
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
		  <% String fileId = (String) request.getAttribute("fileId");
  String url = "/TSRH/filetracking/file/checkinquery.org?fileId=" + fileId;
  ArrayList<Employee> staffList = (ArrayList<Employee>) request.getAttribute("staffList");
  %>
	<section id="content">
		<div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
			<div class="inside">
				<div class="wrapper indent">
					<article class="col-1">
					<h2>Checkin Form:</h2>
								<form name="cinform" action="<%=url%>" method="post">
			<table>
		    <tr>
				<td width="200"><h3>File returned by:</h3></td>
				<td width= "300">  
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
				<td><h3>Checkin Date:</h3></td>
				
				<td><input type="radio" name="date" onClick="clicktoday()"/> Now (or)
				<input type="radio"  name="date" onClick="clicked()"/>Specify Date:<br/><br/>
				
				<div id="datedisplay" style="visibility:hidden">&nbsp;&nbsp;&nbsp;&nbsp;
				<input name="CIdate" value="yyyy-mm-dd" id="date1" class="three" /></div><br/><br/></td>
				<td><div id="datedisplay1" style="visibility:hidden"><h3>Time: (hh:mm)</h3>
				<select name="CItimeh" id="timeH">
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
				<select name="CItimem" id="timeM">
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
				</select></div></td>
				
			</tr>
			<tr>
			<td><h3>Location:</h3></td>
							<td><select name="location" id="location">
					<option selected="selected" value="empty">Select a location</option>
					<option value="Alpha">Alpha</option>
					<option value="Pending">Pending</option>
					<option value="PRN">PRN</option>
					<option value="Discharged">Discharged</option>
					<option value="Discharged-TS">Discharged-TS</option>
					<option value="Deceased">Deceased</option>
					<option value="Research Office">Research Office</option>
					<option value="Inactive-BRNNE">Inactive-BRNNE</option>
					</select></td>
			</tr>
		</table>
<input type="submit" value="Checkin" />

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
<a rel="nofollow">Website template</a> designed by TemplateMonster.com<br/><a href="http://www.templates.com/product/illustrations/" class="new_window">Vector Illustrations</a> provided by Templates.com
				</div>
			</div>
		</div>
	</div>
</footer>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>