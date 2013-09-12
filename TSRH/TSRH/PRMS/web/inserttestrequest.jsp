<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
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
<link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
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

String[] params = new String[13];

params[0] = Controller.getCurrentPatient().getPatientId();


//params[8] = request.getParameter("remindernote");
//params[9] = request.getParameter("reminderdate");
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
  ArrayList al = new ArrayList();
  while (itr.hasNext()) {
        FileItem item = (FileItem) itr.next();
        
        if(!item.isFormField())
                       {
            
             String contenttype = item.getContentType();
             
            if ((contenttype.contains("pdf")))
                               {
                
            String itemName = new File(item.getName()).getName();
            itemName="Userpictures/"+params[0]+"/"+params[0]+"_tests"+itemName.substring(itemName.indexOf("."),itemName.length());
                params[12]=itemName;
            File savedFile = new File(config.getServletContext().getRealPath("/")+itemName);      
         if(savedFile.exists())
              {
              savedFile.delete();
            }
            item.write(savedFile);
            }  
       else
       {
                 params[12]="null";
       }                                   
        }
               else if(item.isFormField())
                       {
                    if(item.getFieldName().equals("testname"))
                                   {
                        params[1]=item.getString();
                    }
                   else if(item.getFieldName().equals("testrequestername"))
                    {
                    params[2]=item.getString();                       
                    }
                    else if(item.getFieldName().equals("testrequestdate"))
                    {
                    params[3]=item.getString();                       
                    }
                    else if(item.getFieldName().equals("expectedresultdate"))
                    {
                    params[4]=item.getString();                       
                    }
                    else if(item.getFieldName().equals("datetoinformstaff"))
                    {
                    params[6]=item.getString();                       
                    }
                    else if(item.getFieldName().equals("otherstobeinformed"))
                    {
                    params[7]=item.getString();                       
                    }
                    else if(item.getFieldName().equals("datetoinformothers"))
                    {
                    params[8]=item.getString();                       
                    }
                    else if(item.getFieldName().equals("comments"))
                    {
                    params[10]=item.getString();                       
                    }
                    else if(item.getFieldName().equals("userid"))
                    {
                    params[11]=item.getString();                       
                    }
                    else if(item.getFieldName().equals("stafftobeinformed"))
                    {
                      al.add(item.getString());
                      
                      
 
                    }
                                               
                        
                    
        }
        
               }
  String staffList=null;
  staffList=al.get(0).toString();
  System.out.println(al.size());
  for(int i=1;i<al.size();i++)
           {
      System.out.println(al.get(i).toString());
      staffList = staffList+";"+al.get(i).toString();
           }
  System.out.println(staffList);
  params[5]=staffList;
try{
	/*
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/alertsystem", "root", "1234");
    Statement st=con.createStatement();
    int i =st.executeUpdate("insert into test_request_record(patientid_testrequest, testname, testrequestername, testrequestdate, expectedresultdate, expectedresult, istesttaken, istestresultsubmitted, remindernote, reminderdate, comments, userid) values('"+patient_idnumber+"','"+tname+"','"+trequestername+"','"+trequestdate+"','"+expresultdate+"','"+expresult+"','"+isttaken+"','"+istresultsubmitted+"','"+remnote+"','"+remdate+"','"+comm+"','"+uid+"')");
    out.println("data is successfully inserted");
    */
    Controller.getDBManager().insertTestRequest(params);
    //Controller.getDBManager().closeConnection();
    out.println("Test Request entered successfully.");
    }
    catch(Exception e){
    System.out.print(e);
    out.println(e);
    e.printStackTrace();
    
}
%>
    </div>>
         <br>
         <br><br>      
<div align="center">
<td colspan=2>  <input type="button" class="blue button" onclick="window.location = '/TSRH/testrequest.jsp?pid=<%=Controller.getCurrentPatient().getPatientId()%>'" value="OK" >
</td>
</div>
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