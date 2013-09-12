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
<link href="css/calendar.css" rel="stylesheet" type="text/css">
<script language="javaScript" type="text/javascript" src="js/calendar.js"></script>
<script type="text/javascript" src="js/maxheight.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<SCRIPT TYPE="text/javascript">

function gotoParent()
{
	
	//var form = document.getElementById( 'test_request_record' );
	//form.submit();
	var parentRef = window.opener;
	$.post("inserttestrequest.jsp", $('test_request_record').serialize(),function(data){
		parentRef.location.reload();
		close();
	});
	
	//window.opener.location.reload();
	//close();
}




 

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
<![endif]-->
</head>
<body id="page1" onLoad="new ElementMaxHeight();">
<div class="wrap">
<!-- header -->
	<header>
	 

	      <h1><a href="index.jsp">Helllooooo</a></h1>
	      
<br /><br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />



	</header>
<!-- content -->
	<section id="content">	
	     <div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
        
        <FORM id="test_request_record" action="inserttestrequest.jsp" method="post">
<%
String testname =" ";
String testrequestername = " ";
String testrequestdate = " ";
String expectedresultdate = " ";
String expectedresult = " ";
String istesttaken = " ";
String istestresultsubmitted = " ";
String remindernote =  " ";
String reminderdate = " ";
String comments = " ";
String userid = " ";
String bttn_value = "save";
String button_value = "cancel";
%>
</header>
<!-- content -->
	<section id="content">
    
  <h3>&nbsp;</h3>
  <table><tr><td>
            <h2> Create New Test Request </h2> </td></tr>    &nbsp; &nbsp;&nbsp;        <br/> <br/>       
 <table width="500">
 
         <tr>
          <td width = "200"> <h3>Test Name      </h3></td>
          <td><p>
             <input name="testname" type="text" value ="<%=testname%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Test Requester Name     </h3></td>
          <td><p>
             <input name="testrequestername" type="text" value ="<%=testrequestername%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
         <tr>
          <td width = "200"> <h3> Test Request Date     </h3></td>
          <td><p>
             <input name="testrequestdate" type="text" value ="<%=testrequestdate%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>

         <tr>
          <td width = "200"> <h3> Expected result Date     </h3></td>
          <td><p>
             <input name="expectedresultdate" type="text" value ="<%=expectedresultdate%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Expected Result     </h3></td>
          <td><p>
             <input name="expectedresult" type="text" value ="<%=expectedresult%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>

<tr>
          <td width = "200"> <h3> Is Test Taken    </h3></td>
          <td><p>
             <input name="istesttaken" type="text" value ="<%=istesttaken%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Is Test Result Submitted     </h3></td>
          <td><p>
             <input name="istestresultsubmitted" type="text" value ="<%=istestresultsubmitted%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Reminder Note    </h3></td>
          <td><p>
             <input name="remindernote" type="text" value ="<%=remindernote%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<!-- <tr>
<td width="150px" ><strong>Reminder date</strong></td>
 <!--    <td width="200px">
    <input type="text" name="reminderdate" value="<%//=reminderdate%>"> 
</td> -->
<!-- <td> 
     <input type="text" name="reminderdate" ><a href="#" 
       onClick="setYears(1947, 2008);
       showCalender(this, 'reminderdate');"  
       >
      <img src="C:\Users\satya\workspace\sdp\WebContent\images\calender.png"></a>
   
    <th><!-- Calender Script  --> 
    <!-- <table id="calenderTable">
       <tbody id="calenderTableHead"><th>
      
           <th><td colspan="4" align="center">
	     <select onChange="showCalenderBody(
                   createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));"
                   id="selectMonth">
	              <option value="0">Jan</option>
	              <option value="1">Feb</option>
	              <option value="2">Mar</option>
	              <option value="3">Apr</option>
	              <option value="4">May</option>
	              <option value="5">Jun</option>
	              <option value="6">Jul</option>
	              <option value="7">Aug</option>
	              <option value="8">Sep</option>
	              <option value="9">Oct</option>
	              <option value="10">Nov</option>
	              <option value="11">Dec</option>
	          </select>
            </td>
            <td colspan="2" align="center">
	    <select onChange="showCalenderBody(createCalender(this.value, 
	      document.getElementById('selectMonth').selectedIndex, false));"
              id="selectYear">
	    </select>
			</td></th>
           <th><td align="center">
	    <a href="#" onClick="closeCalender();">
              <font color="#003333" size="+1">X</font>
            </a>
	   </td></th>
	</tr>
       </tbody>
       <tbody id="calenderTableDays">
         <tr style="">
           <td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td>
           <td>Thu</td><td>Fri</td><td>Sat</td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>
</td>   
</tr>
</th>-->
<tr>
          <td width = "200"> <h3> Reminder Date </h3></td>
          <td><p>
             <input name="reminderdate" type="text" value ="<%=reminderdate%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Comments     </h3></td>
          <td><p>
             <input name="comments" type="text" value ="<%=comments%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
          
 <tr>
          <td width = "200"> <h3> User ID    </h3></td>
          <td><p>
             <input name="userid" type="text" value ="<%=userid%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
</table>
<table align="center">
<tr>
    
   <tr>
         
        
          <td colspan=2><input type="submit" name = "submit" style = "background-image:url(images/button.gif)"  value="<%=bttn_value%>" >  
         
          
          <td colspan=2>&nbsp;</td>
          <td colspan=2><input type="submit"  name ="submit" style = "background-image:url(images/button.gif)"  onClick="window.close()" value="<%=button_value%>">
          
          </tr>
        
        </table>
</form>
     
</div>
	</section>
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