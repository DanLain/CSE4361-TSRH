<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%> 

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="description" content="Place your description here">
<meta name="keywords" content="put, your, keyword, here">
<meta name="author" content="Templates.com - website templates provider">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
<link rel="stylesheet" href="css/help.css" type="text/css" media="all">        
<script type="text/javascript" src="js/jquery.pageslide.min.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
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
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/Test.html' })" class="first">Help</a>
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
String staff[] = request.getParameterValues("stafftobeinformed");
String stafflist=new String();
for(int i=0;i<staff.length;i++){  
     
    stafflist=stafflist.concat(staff[i]);
    if(i!=staff.length-1){
        stafflist=stafflist.concat("; ");
    }
}
String ttest = request.getParameter("test");
//String test_requestid = (String)session.getAttribute("test_requestid");
String ttesttakendate= request.getParameter("testtakendate");
String tresultdate = request.getParameter("resultdate");
String tresult= request.getParameter("result");
String tresultfilepath = request.getParameter("resultfilepath");
String tstafftobeinformed = stafflist;
String tdatetoinformstaff = request.getParameter("datetoinformstaff");
String totherstobeinformed= request.getParameter("otherstobeinformed");
String tdatetoinformothers=request.getParameter("datetoinformothers");

//String tremindernote = request.getParameter("remindernote");
//String treminderdate = request.getParameter("reminderdate");
String tcomments = request.getParameter("comments");
String tuserid = request.getParameter("userid");
Connection con = null;

try{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement st=con.createStatement();
    System.out.println("insert into test_result_record(test_result_requestid, testtakendate, resultdate, result, resultfilepath, stafftobeinformed, datetoinformstaff, otherstobeinformed,datetoinformothers, comments, userid) values('"+ttest+"',STR_TO_DATE('"+ttesttakendate+"','%Y-%m-%d'),STR_TO_DATE('"+tresultdate+"','%Y-%m-%d'),'"+tresult+"','"+tresultfilepath+"','"+tstafftobeinformed+"',STR_TO_DATE('"+tdatetoinformstaff+"','%Y-%m-%d'),'"+totherstobeinformed+"',STR_TO_DATE('"+tdatetoinformothers+"','%Y-%m-%d'),'"+tcomments+"','"+tuserid+"')");
    int i =st.executeUpdate("insert into test_result_record(test_result_requestid, testtakendate, resultdate, result, resultfilepath, stafftobeinformed, datetoinformstaff, otherstobeinformed,datetoinformothers, comments, userid) values('"+ttest+"',STR_TO_DATE('"+ttesttakendate+"','%Y-%m-%d'),STR_TO_DATE('"+tresultdate+"','%Y-%m-%d'),'"+tresult+"','"+tresultfilepath+"','"+tstafftobeinformed+"',STR_TO_DATE('"+tdatetoinformstaff+"','%Y-%m-%d'),'"+totherstobeinformed+"',STR_TO_DATE('"+tdatetoinformothers+"','%Y-%m-%d'),'"+tcomments+"','"+tuserid+"')");
   out.println("Test Result is successfully inserted.");
    }
    catch(Exception e){
    System.out.print(e);
    out.println(e.getMessage());
    e.printStackTrace();    
}
finally{
    if(null!= con)
               {
        con.close();
       }
    }
%>



        </div>
<br>
        <br>

<div align="center">


        
   
        <input type="button" class="blue button" onclick="window.location = '/TSRH/testrequest.jsp?pid=<%=Controller.getCurrentPatient().getPatientId()  %>'" value="OK">
    </div></section>

      <tr>
      </tr>
      <br>
      </br>
      <br>
      </br>

<%@ include file="footers.jsp" %>

</tr>
<script type="text/javascript">Cufon.now();</script>
<script src="js/jquery.pageslide.min.js"></script>
</body>
</html>