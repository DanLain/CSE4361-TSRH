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
<link href="css/calendar.css" rel="stylesheet" type="text/css">
<script language="javaScript" type="text/javascript" src="js/calendar.js"></script>
<script type="text/javascript" src="js/maxheight.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<link href="DatePicker/kendo.common.min.css" rel="stylesheet">
        <link href="DatePicker/kendo.blueopal.min.css" rel="stylesheet">
        <script src="DatePicker/jquery.min.js"></script>
        <script src="DatePicker/kendo.web.min.js"></script>
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
function upgradepicker() {
                var date= new Date();
                date.toString('yyyy-MM-dd');
                $("#DOB").kendoDatePicker({
                    format: "yyyy-MM-dd"
                });
                $("#DOB1").kendoDatePicker({
                    format: "yyyy-MM-dd"
                });
}

function IsNumeric(input)
{
    if((input - 0) == input && input.length > 0)
        return false;
    else 
        return true;
}

function validateForm()
{
               var uconsultationid = document.forms["consultation_update"]["uconsultationid"].value;
               var udateofconsultation =document.forms["consultation_update"]["udateofconsultation"].value;
               var uwhomconsulted =document.forms["consultation_update"]["uwhomconsulted"].value;
               var uconsultedfor =document.forms["consultation_update"]["uconsultedfor"].value;
               var uprescription =document.forms["consultation_update"]["uprescription"].value;
               var uconsultationremindernote =document.forms["consultation_update"]["uconsultationremindernote"].value;
               var uconsultationreminderdate =document.forms["consultation_update"]["uconsultationreminderdate"].value;
               var uconsultationcomments =document.forms["consultation_update"]["uconsultationcomments"].value;
               var uuserid =document.forms["consultation_update"]["uuserid"].value;
                              
               if (uconsultationid ==null || uconsultationid =="")
                {
                   document.getElementById('msg0').color = "red";
                   document.getElementById('msg0').innerHTML = 'Enter consultation number!';
                   return false;
                }
                else if(IsNumeric(uconsultationid))
                {
                   document.getElementById('msg0').color = "red";
                   document.getElementById('msg0').innerHTML = 'Enter a number!';
                   return false;
                }
                else if (udateofconsultation==null || udateofconsultation=="")
               { 
                   document.getElementById('msg0').color = "white";
                   document.getElementById('msg1').color = "red";
                   document.getElementById('msg1').innerHTML = 'Enter date of consultation!';
                   return false;
               }
               else if(uwhomconsulted==null||uwhomconsulted=="")
               {
                   document.getElementById('msg0').color = "white";
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "red";
                   document.getElementById('msg2').innerHTML = 'Enter whom consulted!';
                   return false;
               }
               else if(uconsultedfor==null||uconsultedfor=="")
               {
                   document.getElementById('msg0').color = "white";
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "red";
                   document.getElementById('msg3').innerHTML = 'Enter consulted for!';
                   return false;
               }
               else if(uprescription==null||uprescription=="")
               {
                   document.getElementById('msg0').color = "white";
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "red";
                   document.getElementById('msg4').innerHTML = 'Enter prescription!';
                   return false;
               }
               else if(uconsultationremindernote==null||uconsultationremindernote=="")
               {
                   document.getElementById('msg0').color = "white";
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "red";
                   document.getElementById('msg5').innerHTML = 'Enter consultation reminder note!';
                   return false;
               }
               else if(uconsultationreminderdate==null||uconsultationreminderdate=="")
               {
                   document.getElementById('msg0').color = "white";
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "red";
                   document.getElementById('msg6').innerHTML = 'Enter consultation reminder date!';
                   return false;
               }
               else if(uconsultationcomments==null||uconsultationcomments=="")
               {
                   document.getElementById('msg0').color = "white";
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "red";
                   document.getElementById('msg7').innerHTML = 'Enter consultation comments!';
                   return false;
               }
               else if(uuserid==null||uuserid=="")
               {
                   document.getElementById('msg0').color = "white";
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "white";
                   document.getElementById('msg8').color = "red";
                   document.getElementById('msg8').innerHTML = 'Enter user id!';
                   return false;
               }
               
               else
                   {
                   document.getElementById('msg0').color = "white";
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "white";
                   document.getElementById('msg8').color = "white";
                   }
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
<body id="page1" onLoad="new upgradepicker();">
<div class="wrap">
<!-- header -->
<%@ include file="headers.jsp" %>
<section id="content">
    <div class="inside">
        <div class="container">
                        <div class="wrapper indent">
                          <article class="col-0">
                  <%
        //check if a user has logged in. If not redirect to home page
    String currentUser = (String) session.getAttribute("user");        
      if(currentUser == null){            
            String redirectURL = "index.jsp";
            response.sendRedirect(redirectURL);
        }
      %>		
<!-- content -->



        
        <%
String udateofconsultation =" ";
String uwhomconsulted = " ";
String uconsultedfor=" ";
String uprescription= " ";
//String uconsultationremindernote= " ";
//String uconsultationreminderdate= " ";
String uconsultationcomments= " ";
String uuserid= " ";
int uconsultationid = 0;
String bttn_value ="Save";
String button_value = "Cancel";
String consultation_id1="";
//String test_requestid = (String)session.getAttribute("test_requestid");
Connection conne = null;
try
{
    Class.forName("com.mysql.jdbc.Driver");
    conne = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement st=conne.createStatement();
    ResultSet res = null;
    consultation_id1=request.getParameter("consultation_id");
    int consultation_id=Integer.parseInt(consultation_id1);
    res= st.executeQuery("select * from consultation_record"+ " where consultationid="+consultation_id);
    
if(res.next())
{
	uconsultationid= res.getInt(1);
	udateofconsultation = res.getString(3);
	uwhomconsulted= res.getString(4);
	uconsultedfor = res.getString(5);
	uprescription = res.getString(6);
	//uconsultationremindernote =res.getString(7);
	//uconsultationreminderdate = res.getString(8);
	uconsultationcomments = res.getString(7);
	uuserid = res.getString(8);
}
   res.close();
   st.close();
}
catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    }
finally{
    if(null!= conne)
               {
        conne.close();
       }
    }
	
%>
<form id = "consultation_update" method ="post" onSubmit="return validateForm()" action = edittestconsultation.jsp >

    <h3> &nbsp; </h3>
    <h2> Edit Consultation </h2>
 
   
            
<!-- content -->
	
   
  
 
 <table>
 <tr>
          <td width = "250"> <h3>Test Consultation Number</h3></td>
          <td>
             <input readonly="readonly" name="uconsultationid" type="text" class ="textbox" value ="<%=uconsultationid%>" size="20">
             <td> <font size="5" color="white" id="msg0" width="220">Enter consultation number!</font></td>
          
           </td>
<!--<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>-->
          <td width = "250"> <h3>*Date Of Consultation</h3></td>
          <td><p>
             <input name="udateofconsultation" id="DOB" type="text" class ="textbox" value ="<%=udateofconsultation%>" size="20" readonly="readonly">
             <td> <font size="5" color="white" id="msg1"></font></td>
          </p>
           </td>
         
 </table>
             <table>
 <tr>
          <td width = "250"> <h3>*Whom Consulted</h3></td>
          <td><p>
             <input name="uwhomconsulted" type="text" class ="textbox" value ="<%=uwhomconsulted%>" size="20">
             <td> <font size="5" color="white" id="msg2">Enter whom consulted!</font></td>
          </p>
          </td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td width = "250"> <h3>*Consulted For </h3></td>
          <td><p>
             <input name="uconsultedfor" type="text" class ="textbox" value ="<%=uconsultedfor%>" size="20"></td>
             <td> <font size="5" color="white" id="msg3" ></font></td>
          </p>
           </td>
          
             </table>
             <table>
 <tr>
          <td width = "250"> <h3>*Prescription      </h3></td>
          <td><p>
             <input name="uprescription" type="text" class ="textbox" value ="<%=uprescription%>" size="20">
             <td> <font size="5" color="white" id="msg4">Enter prescription!</font></td>
          </p>
           </td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      
<td width = "250"> <h3>*Consultation Comments     </h3></td>
          <td><p>
             <input name="uconsultationcomments" type="text" class ="textbox" value ="<%=uconsultationcomments%>" size="20">
             <td> <font size="5" color="white" id="msg7"></font></td>
          </p>
           </td>
          
             </table>
             <table>
 <tr>
          <td width = "250"> <h3>*User Name     </h3></td>
          <td><p>
             <input name="uuserid" type="text" class ="textbox" value ="<%=uuserid%>" size="20">
             <td> <font size="5" color="white" id="msg8"></font></td>
          </p>
           </td>
          
</tr>  
           
        
          <tr>
                   
          </tr>
          
        </table>
              <table align="center">
                  <tr> <tr>
          <td colspan=2><input type="submit" name = "submit" class="blue button"  value="<%=bttn_value%>" >  
         
            <td colspan=2>&nbsp;</td>
           
            <td colspan=2> <input type="Button" name = "submit" class="blue button"  value="Cancel" onclick="window.location='/TSRH/testconsultation.jsp?pid=<%=Controller.getCurrentPatient().getPatientId()%> '" > </td>
                  </tr> </table>
                  </article>
                  
        </div>
             </div>
                  </div>
                  
          <br>
          <br>
        </div></div>

	</section>

<%@ include file="footers.jsp" %>
</tr>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>
