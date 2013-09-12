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
	$.post("edittestconsultation.jsp", $('consultation_update').serialize(),function(data){
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
String udateofconsultation =" ";
String uwhomconsulted = " ";
String uconsultedfor=" ";
String uprescription= " ";
String uconsultationremindernote= " ";
String uconsultationreminderdate= " ";
String uconsultationcomments= " ";
String uuserid= " ";
int uconsultationid = 0;
String bttn_value ="save";
String button_value = "cancel";
//String test_requestid = (String)session.getAttribute("test_requestid");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conne = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement st=conne.createStatement();
    ResultSet res = null;
    String consultation_id1=request.getParameter("consultation_id");
    int consultation_id=Integer.parseInt(consultation_id1);
    res= st.executeQuery("select * from consultation_record"+ " where consultationid="+consultation_id);
    
if(res.next())
{
	uconsultationid= res.getInt(1);
	udateofconsultation = res.getString(3);
	uwhomconsulted= res.getString(4);
	uconsultedfor = res.getString(5);
	uprescription = res.getString(6);
	uconsultationremindernote =res.getString(7);
	uconsultationreminderdate = res.getString(8);
	uconsultationcomments = res.getString(9);
	uuserid = res.getString(10);
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
<form id = "consultation_update" action = edittestconsultation.jsp method =post>
<strong>
<table>
 
</header>
<!-- content -->
	<section id="content">
    
  <h3>&nbsp;</h3>
  <table><tr><td>
            <h2> Edit Test Consultation </h2> </td></tr>    &nbsp; &nbsp;&nbsp;        <br/> <br/>       
 <table width="500">
 <tr>
          <td width = "200"> <h3>Test Consultation ID     </h3></td>
          <td><p>
             <input name="uconsultationid" type="text" value ="<%=uconsultationid%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
 <tr>
          <td width = "200"> <h3>Date Of Consultation      </h3></td>
          <td><p>
             <input name="udateofconsultation" type="text" value ="<%=udateofconsultation%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
 <tr>
          <td width = "200"> <h3>Whom Consulted      </h3></td>
          <td><p>
             <input name="uwhomconsulted" type="text" value ="<%=uwhomconsulted%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
 <tr>
          <td width = "200"> <h3>Consulted For     </h3></td>
          <td><p>
             <input name="uconsultedfor" type="text" value ="<%=uconsultedfor%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
 <tr>
          <td width = "200"> <h3>Prescription      </h3></td>
          <td><p>
             <input name="uprescription" type="text" value ="<%=uprescription%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
 <tr>
          <td width = "200"> <h3>Consultation Reminder Note    </h3></td>
          <td><p>
             <input name="uconsultationremindernote" type="text" value ="<%=uconsultationremindernote%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
 <tr>
          <td width = "200"> <h3>Consultation Reminder Date     </h3></td>
          <td><p>
             <input name="uconsultationreminderdate" type="text" value ="<%=uconsultationreminderdate%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
 <tr>
          <td width = "200"> <h3>Consultation Comments     </h3></td>
          <td><p>
             <input name="uconsultationcomments" type="text" value ="<%=uconsultationcomments%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
 <tr>
          <td width = "200"> <h3>User ID      </h3></td>
          <td><p>
             <input name="uuserid" type="text" value ="<%=uuserid%>" size="20">
          </p>
           <p>&nbsp; </p></td>
          <tr></tr>
</tr>  
           
        
          <tr>
         
        
          <td colspan=2><input type="submit" name = "submit" style = "background-image:url(images/button.gif)"  value="<%=bttn_value%>" >  
         
          
          <td colspan=2>&nbsp;</td>
          <td colspan=2><input type="button"  style = "background-image:url(images/button.gif)"  onClick="window.close()" value="<%=button_value%>">
          
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