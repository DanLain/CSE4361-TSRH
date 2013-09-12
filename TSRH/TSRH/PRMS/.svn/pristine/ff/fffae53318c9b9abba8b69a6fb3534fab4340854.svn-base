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
<![endif]-->
</head>
<jsp:useBean id="Controller" class="controller.Controller" scope="session" />
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
        
	
	
	<%
String mtestrequestid = " ";
String mpatientid_testrequest = " ";
String mtestname = " ";
String mtestrequestername = " ";
String mtestrequestdate = " ";
String mexpectedresultdate = " ";
String mexpectedresult = " ";
String mistesttaken = " ";
String mistestresultsubmitted = " ";
String mremindernote =  " ";
String mreminderdate = " ";
String mcomments = " ";
String muserid = " ";

//String test_requestid = (String)session.getAttribute("test_requestid");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conne = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement st=conne.createStatement();
    ResultSet res = null;
    String test_requestid1=request.getParameter("test_requestid");
    int test_requestid=Integer.parseInt(test_requestid1);
    res= st.executeQuery("select * from test_request_record"+ " where testrequestid="+test_requestid);
    
if(res.next())
{
	mtestrequestid = res.getString(1);
	mpatientid_testrequest = res.getString(2);
	mtestname = res.getString(3);
	mtestrequestername = res.getString(4);
	mtestrequestdate = res.getString(5);
	mexpectedresultdate = res.getString(6);
	mexpectedresult = res.getString(7);
	mistesttaken = res.getString(8);
	mistestresultsubmitted = res.getString(9);
	mremindernote = res.getString(10);
	mreminderdate = res.getString(11);
	mcomments = res.getString(12);
	muserid = res.getString(13);
}
   res.close();
   st.close();
   conne.close();
}
catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    }
	
%>
<table>
<h3>&nbsp;</h3>
  <table><tr><td>
            <h2> Inforamation Of Test Request </h2> </td></tr>    &nbsp; &nbsp;&nbsp;        <br/> <br/>       
 <table width="500">

<tr>
          <td width = "200"> <h3>Test Name      </h3></td>
          <td><p>
             <input name="mtestname" type="text" value ="<%=mtestname%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
          
<tr>
          <td width = "200"> <h3> Test Requester Name     </h3></td>
          <td><p>
             <input name="mtestrequestername" type="text" value ="<%=mtestrequestername%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
         <tr>
          <td width = "200"> <h3> Test Request Date     </h3></td>
          <td><p>
             <input name="mtestrequestdate" type="text" value ="<%=mtestrequestdate%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>

         <tr>
          <td width = "200"> <h3> Expected result Date     </h3></td>
          <td><p>
             <input name="mexpectedresultdate" type="text" value ="<%=mexpectedresultdate%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Expected Result     </h3></td>
          <td><p>
             <input name="mexpectedresult" type="text" value ="<%=mexpectedresult%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>

<tr>
          <td width = "200"> <h3> Is Test Taken    </h3></td>
          <td><p>
             <input name="mistesttaken" type="text" value ="<%=mistesttaken%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Is Test Result Submitted     </h3></td>
          <td><p>
             <input name="mistestresultsubmitted" type="text" value ="<%=mistestresultsubmitted%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Reminder Note    </h3></td>
          <td><p>
             <input name="mremindernote" type="text" value ="<%=mremindernote%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>

<tr>
          <td width = "200"> <h3> Reminder Date </h3></td>
          <td><p>
             <input name="mreminderdate" type="text" value ="<%=mreminderdate%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Comments     </h3></td>
          <td><p>
             <input name="mcomments" type="text" value ="<%=mcomments%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
          
 <tr>
          <td width = "200"> <h3> User ID    </h3></td>
          <td><p>
             <input name="muserid" type="text" value ="<%=muserid%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr><table>
<tr>
 <td colspan=2>&nbsp;</td>
          <td colspan=2><input type="submit"  name ="submit" style = "background-image:url(images/button.gif)"  onClick="window.close()" value="cancel">
          
          </tr>

</table>
<table>

   </strong>
</table>
</form>
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