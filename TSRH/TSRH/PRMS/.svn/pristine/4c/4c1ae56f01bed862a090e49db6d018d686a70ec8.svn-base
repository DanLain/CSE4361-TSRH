<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%> 
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
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
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/Consult.html' })" class="first">Help</a>
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
String patient_idnumber = Controller.getCurrentPatient().getPatientId();
String cdateofconsultation = null;
String cwhomconsulted = null;
String cconsultedfor= null;
String cprescription = null;
//String cconsultationremindernote = request.getParameter("consultationremindernote");
//String cconsultationreminderdate = request.getParameter("consultationreminderdate");
String cconsultationcomments= null;
String cuserid = null;
String savefile="null";
Connection con = null;
 FileItemFactory factory = new DiskFileItemFactory();
  ServletFileUpload upload = new ServletFileUpload(factory);
  List items = null;
   try {
        items = upload.parseRequest(request);
    } catch (Exception e) {
        e.printStackTrace();
        //logger.LogError(session.getAttribute("user").toString(),"SaveNewPatient.jsp",e,"fileupload ");
    }
  Iterator itr = items.iterator();
  while (itr.hasNext()) {
        FileItem item = (FileItem) itr.next();
        if(!item.isFormField())
                       {
             String contenttype = item.getContentType();
            if (contenttype.contains("pdf")) 
                               {
            String itemName = new File(item.getName()).getName();
            itemName="Userpictures/"+patient_idnumber+"/"+patient_idnumber+"_Consulation"+itemName.substring(itemName.indexOf("."),itemName.length());
                savefile=itemName;
            File savedFile = new File(config.getServletContext().getRealPath("/")+itemName);      
         if(savedFile.exists())
              {
              savedFile.delete();
            }
            item.write(savedFile);
            }               
        }
               else if(item.isFormField())
                       {
                    if(item.getFieldName().equals("dateofconsultation"))
                                   {
                        cdateofconsultation=item.getString();
                    }
                   else if(item.getFieldName().equals("whomconsulted"))
                    {
                    cwhomconsulted=item.getString();                       
                    }
                    else if(item.getFieldName().equals("consultedfor"))
                    {
                    cconsultedfor=item.getString();                       
                    }
                    else if(item.getFieldName().equals("prescription"))
                    {
                    cprescription=item.getString();                       
                    }
                    else if(item.getFieldName().equals("consultationcomments"))
                    {
                    cconsultationcomments=item.getString();                       
                    }
                    else if(item.getFieldName().equals("userid"))
                    {
                    cuserid=item.getString();                       
                    }
        }
        
               }
try{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement st=con.createStatement();
    int i =st.executeUpdate("insert into consultation_record(patientid_consultation, dateofconsultation,whomconsulted, consultedfor, prescription,consultationcomments, userid, recordlink) values('"+patient_idnumber+"',STR_TO_DATE('"+cdateofconsultation+"','%Y-%m-%d'),'"+cwhomconsulted+"','"+cconsultedfor+"','"+cprescription+"','"+cconsultationcomments+"','"+cuserid+"','"+savefile+"')");
   out.println("Consultation was successfully inserted.");
    }
    catch(Exception e){
    System.out.print(e);
    out.println(e);
    e.printStackTrace();    
}
finally{
    if(null!= con)
               {
        con.close();
       }
    }
%>



<br>
<br>


<table>

<td colspan=2>  <input type="button" class="blue button" onclick="window.location = '/TSRH/testconsultation.jsp?pid=<%=patient_idnumber%> '" value="OK" >
</td>
<tr>
</table>
</div>

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
<script src="js/jquery.pageslide.min.js"></script>
</body>
</html>