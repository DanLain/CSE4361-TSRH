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
<link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
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
<![endif]--></head>
<jsp:useBean id="Controller" class="controller.Controller" scope="session" />
<body id="page5" onLoad="new ElementMaxHeight();">
<div class="wrap">
<!-- header -->
	<%@ include file="headers.jsp" %>
	
                 <%
        //check if a user has logged in. If not redirect to home page
      String currentUser = (String) session.getAttribute("user");        
        if(currentUser == null){            
            String redirectURL = "index.jsp";
            response.sendRedirect(redirectURL);
        }
        %>		
        <div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
        
        <div align="center">
        <% 
String utestresultid1 = request.getParameter("utestresultid");
String utestresult_requestid = request.getParameter("testrequest_id");
        		
String utesttakendate= request.getParameter("utesttakendate");
String uresultdate= request.getParameter("uresultdate");
String uresult = request.getParameter("uresult");
String uresultfilepath = request.getParameter("uresultfilepath");
String uwhoistobeinformed = request.getParameter("uwhoistobeinformed");
String uwhentobeinformed = request.getParameter("uwhentobeinformed");
String uinformed= request.getParameter("uinformed");
//String uremindernote = request.getParameter("uremindernote");
//String ureminderdate = request.getParameter("ureminderdate");
String ucomments = request.getParameter("ucomments");
String uuserid = request.getParameter("uuserid");
Connection connec = null;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	connec = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
	Statement st=connec.createStatement();
	int i =st.executeUpdate("update test_result_record set testtakendate =STR_TO_DATE('"+utesttakendate+"','%Y-%m-%d'), resultdate= STR_TO_DATE('"+uresultdate+"','%Y-%m-%d'),result='"+uresult+"',resultfilepath='"+uresultfilepath+"',whoistobeinformed='"+uwhoistobeinformed+"',whentobeinformed='"+uwhentobeinformed+"',informed = '"+uinformed+"', comments = '"+ucomments+"',userid = '"+uuserid+"'where testresultid="+utestresultid1);
    out.println("Test Result has been updated successfully.");
	}
catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    }
finally{
    if(null!= connec)
               {
        connec.close();
       }
    }
%>


   
<br>
<br>



<table>

<td colspan=2>  <input type="button" class="blue button" onclick="window.location = '/TSRH/testresult.jsp?test_requestid=<%=utestresult_requestid%> '" value="OK" >

</td>
<tr>
</table>        
</div>
        <tr>
        </tr>
        <br>
        <br>
        <br>
         
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        
       <%@ include file="footers.jsp" %>

</tr>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>
