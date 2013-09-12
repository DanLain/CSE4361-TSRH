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


function gotoParent()
{
	
	//var form = document.getElementById( 'test_request_record' );
	//form.submit();
	var parentRef = window.opener;
	$.post("edittestrequest.jsp", $('test_request_update').serialize(),function(data){
		parentRef.location.reload();
		close();
	});
	
	//window.opener.location.reload();
	//close();
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
String utestname =" ";
String utestrequestername = " ";
String utestrequestdate=" ";
String uexpectedresultdate= " ";
String uexpectedresult= " ";
String uistesttaken= " ";
String uistestresultsubmitted= " ";
String uremindernote= " ";
String ureminderdate= " ";
String ucomments= " ";
String uuserid= " ";
int utestrequestid = 0;
String bttn_value ="save";
String button_value= "cancel";
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
	utestrequestid= res.getInt(1);
	utestname = res.getString(3);
	utestrequestername = res.getString(4);
	utestrequestdate= res.getString(5);
	uexpectedresultdate = res.getString(6);
	uexpectedresult = res.getString(7);
	uistesttaken =res.getString(8);
	uistestresultsubmitted = res.getString(9);
	uremindernote = res.getString(10);
	ureminderdate = res.getString(11);
	ucomments = res.getString(12);
	uuserid = res.getString(13);
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
<form id ="test_request_update" action = edittestrequest.jsp method =post>
<strong>
<table>
<h3>&nbsp;</h3>
  <table><tr><td>
            <h2> Edit Test Request </h2> </td></tr>    &nbsp; &nbsp;&nbsp;        <br/> <br/>       
 <table width="500">
 <tr>
          <td width = "200"> <h3>Test Request ID      </h3></td>
          <td><p>
             <input name="utestrequestid" type="text" value ="<%=utestrequestid%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3>Test Name      </h3></td>
          <td><p>
             <input name="utestname" type="text" value ="<%=utestname%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
          
<tr>
          <td width = "200"> <h3> Test Requester Name     </h3></td>
          <td><p>
             <input name="utestrequestername" type="text" value ="<%=utestrequestername%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
         <tr>
          <td width = "200"> <h3> Test Request Date     </h3></td>
          <td><p>
             <input name="utestrequestdate" type="text" value ="<%=utestrequestdate%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>

         <tr>
          <td width = "200"> <h3> Expected result Date     </h3></td>
          <td><p>
             <input name="uexpectedresultdate" type="text" value ="<%=uexpectedresultdate%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Expected Result     </h3></td>
          <td><p>
             <input name="uexpectedresult" type="text" value ="<%=uexpectedresult%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>

<tr>
          <td width = "200"> <h3> Is Test Taken    </h3></td>
          <td><p>
             <input name="uistesttaken" type="text" value ="<%=uistesttaken%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Is Test Result Submitted     </h3></td>
          <td><p>
             <input name="uistestresultsubmitted" type="text" value ="<%=uistestresultsubmitted%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Reminder Note    </h3></td>
          <td><p>
             <input name="uremindernote" type="text" value ="<%=uremindernote%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>

<tr>
          <td width = "200"> <h3> Reminder Date </h3></td>
          <td><p>
             <input name="ureminderdate" type="text" value ="<%=ureminderdate%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
<tr>
          <td width = "200"> <h3> Comments     </h3></td>
          <td><p>
             <input name="ucomments" type="text" value ="<%=ucomments%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
          
 <tr>
          <td width = "200"> <h3> User ID    </h3></td>
          <td><p>
             <input name="uuserid" type="text" value ="<%=uuserid%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr><table>
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