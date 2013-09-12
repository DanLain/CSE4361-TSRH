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
<link href="css/calendar.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/help.css" type="text/css" media="all">        
<script type="text/javascript" src="js/jquery.pageslide.min.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
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

function gotoParent()
{
	
	//var form = document.getElementById( 'test_request_record' );
	//form.submit();
	var parentRef = window.opener;
	$.post("inserttestresult.jsp", $('test_result_record').serialize(),function(data){
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
                $("#DOB2").kendoDatePicker({
                    format: "yyyy-MM-dd"
                });
                $("#DOB3").kendoDatePicker({
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
               var test =document.forms["test_result_record"]["test"].value;
               var testtakendate =document.forms["test_result_record"]["testtakendate"].value;
               var resultdate =document.forms["test_result_record"]["resultdate"].value;
               var result =document.forms["test_result_record"]["result"].value;
               var resultfilepath =document.forms["test_result_record"]["resultfilepath"].value;
               var stafftobeinformed =document.forms["test_result_record"]["stafftobeinformed"].value;
               var datetoinformstaff =document.forms["test_result_record"]["datetoinformstaff"].value;
               var otherstobeinformed =document.forms["test_result_record"]["otherstobeinformed"].value;
              var datetoinformothers =document.forms["test_result_record"] ["datetoinformothers"].value;
               var comments =document.forms["test_result_record"]["comments"].value;
               var userid =document.forms["test_result_record"]["userid"].value;
               
               
               if (test==null || test=="")
               { 
                   document.getElementById('msg1').color = "red";
                   document.getElementById('msg1').innerHTML = 'Enter test result number!';
                   return false;
               }
                else if(IsNumeric(test))
                {
                   document.getElementById('msg1').color = "red";
                   document.getElementById('msg1').innerHTML = 'Enter a number!';
                   return false;
                }
               else if(testtakendate==null||testtakendate=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "red";
                   document.getElementById('msg2').innerHTML = 'Enter test taken date!';
                   return false;
               }
               else if(resultdate==null||resultdate=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "red";
                   document.getElementById('msg3').innerHTML = 'Enter result date!';
                   return false;
               }
               else if(result==null||result=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "red";
                   document.getElementById('msg4').innerHTML = 'Enter result!';
                   return false;
               }
               else if(resultfilepath==null||resultfilepath=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "red";
                   document.getElementById('msg5').innerHTML = 'Enter result file path!';
                   return false;
               }
               else if(stafftobeinformed==null||stafftobeinformed=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "red";
                   document.getElementById('msg6').innerHTML = 'Enter staff to be informed!';
                   
                   return false;
               }
               else if(datetoinformstaff==null||datetoinformstaff=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "red";
                   document.getElementById('msg7').innerHTML = 'Enter date to inform staff!';
                   return false;
               }
               else if(otherstobeinformed==null||otherstobeinformed=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "white";
                   document.getElementById('msg8').color = "red";
                   document.getElementById('msg8').innerHTML = 'Enter others to be informed!';
                   return false;
               }
                else if(datetoinformothers==null||datetoinformothers=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "white";
                   document.getElementById('msg8').color = "white";
                   document.getElementById('msg9').color = "red";
                   document.getElementById('msg9').innerHTML = 'Enter date to inform others!';
                   return false;
               }
              
               
                else if(comments==null||comments=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "white";
                   document.getElementById('msg8').color = "white";
                  document.getElementById('msg9').color = "white";
                   document.getElementById('msg11').color = "red";
                   document.getElementById('msg11').innerHTML = 'Enter comments!';
                   return false;
               }
               else if(userid==null||userid=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "white";
                   document.getElementById('msg8').color = "white";
                   document.getElementById('msg9').color = "white";
                   document.getElementById('msg11').color = "white";
                   document.getElementById('msg12').color = "red";
                   document.getElementById('msg12').innerHTML = 'Enter user id!';
                   return false;
               }
               else
                   {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "white";
                   document.getElementById('msg8').color = "white";
                  document.getElementById('msg9').color = "white";
              
                   document.getElementById('msg11').color = "white";
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
    <a href="javascript:$.pageslide({ direction: 'right', href: 'help/Test.html' })" class="first">Help</a>
                <%@ include file="headers.jsp" %>
                                  <%
        //check if a user has logged in. If not redirect to home page
     String currentUser = (String) session.getAttribute("user");        
        if(currentUser == null){            
            String redirectURL = "index.jsp";
           response.sendRedirect(redirectURL);
        } 
        %>		
<!-- content -->
	<section id="content">
    <div class="inside">
        <div class="container">
                        <div class="wrapper indent">
                          <article class="col-0"> 
     
<FORM name= "test_result_record"  method="post" onSubmit="return validateForm()" action="inserttestresult.jsp">
<%
String pid = request.getParameter("pid");
String testreqId = request.getParameter("test_requestid");
String test = " ";
String testtakendate  = " ";
String resultdate        = " ";
String result   = " ";
String resultfilepath        = " ";
String stafftobeinformed = " ";
String datetoinformstaff = " ";
String otherstobeinformed= " ";
String datetoinformothers= " ";
String comments= " ";
String userid= " ";
String bttn_value = "Save";
String button_value = "cancel";
Connection conne = null;

try
{
    Class.forName("com.mysql.jdbc.Driver");
    
    conne = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement st=conne.createStatement();
    ResultSet res = null;
    res= st.executeQuery("select lastName,firstName from user");

%>

            <h2> Create New Test Result </h2>      

 <table >
 

<tr>
          <td width = "200"> <h3> Test Result Number <font color="RED">*</font> </h3></td>
          <td>
             <p>
                 <input name="test" readonly="readonly" type="text" class ="textbox" size="20" id="test" value="<%=testreqId%>">
             <td> <font size="5" color="white" id="msg1">Enter test result number!</font></td>
             </p>
            
          </td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>          
          <td width = "200"> <h3> Test Taken Date <font color="RED">*</font> </h3></td>
          <td><p>
             <input name="testtakendate" id="DOB" type="text" class ="textbox" size="20" readonly="readonly">
             <td> <font size="5" color="white" id="msg2">Enter test taken date!</font></td>
          </p>
          
          <tr></tr>
 
 </table>
            <table>
<tr>
          <td width = "200"> <h3> Result Date <font color="RED">*</font> </h3></td>
          <td><p>
             <input name="resultdate" id="DOB1" type="text" class ="textbox" size="20" readonly="readonly">
             <td> <font size="5" color="white" id="msg3">Enter result date!</font></td>
          </p>
          </td>
           
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td width = "200"> <h3> Result <font color="RED">*</font>      </h3></td>
          <td><p>
             <input name="result" type="text" class ="textbox" size="20">
             <td> <font size="5" color="white" id="msg4" width="200">Enter result!</font></td>
          </p>
           
          <tr></tr>
            </table>
            <table>
<tr>
          <td width = "200"> <h3> Result File Location <font color="RED">*</font>      </h3></td>
          <td> <p>
             <input name="resultfilepath" type="text" class ="textbox" size="20">
             <td> <font size="5" color="white" id="msg5" width="200">Enter result file location!</font></td>
             </p>
             </td>
         
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td width = "200"> <h3> Staff to be Informed <font color="RED">*</font>    </h3></td>
          <td> <select name="stafftobeinformed" size=4 multiple>
                  <%
                  while(res.next())
                  {
                     
                  
                  %>
<option><%=res.getString(1)%>,<%=res.getString(2)%></option>
<%
                  }

  }
catch(Exception e){
    System.out.println("Exception:"+e);
    e.printStackTrace();
}
finally{
    if(null!= conne)
               {
        conne.close();
       }
    }

    %> </select>
             </td>
<td> <font size="5" width = "250" color="white" id="msg6">Enter Staff to be Informed!</font></td>           
          <tr></tr>
            </table>
            <table>
<tr>
          <td width = "200"> <h3> Date to Inform Staff <font color="RED">*</font>     </h3></td>
          <td><p>
             <input name="datetoinformstaff" id="DOB2"type="text" class ="textbox" size="20" readonly="readonly">
             <td> <font size="5" color="white" id="msg7">Enter date to inform staff!</font></td>
          </p>
          
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td width = "200"> <h3>Others to be Informed<font color="RED">*</font></h3></td>
          <td><p>
             <input name="otherstobeinformed" type="text" class ="textbox" size="20">
             <td> <font size="5" color="white" id="msg8">Enter others to be informed!</font></td>
          </p>
           
          </td>
          <tr></tr>
            </table>
            
            <table>
<tr>
          <td width = "200"> <h3> Date to Inform Others<font color="RED">*</font></h3></td>
          <td><p>
             <input name="datetoinformothers" type="text" id="DOB3" class ="textbox" size="20"readonly="readonly">
              <td> <font size="5" color="white" id="msg9">Enter date to inform others!</font></td>
          </p>
          </td>
         
        

          
<td width = "200"> <h3> Comments <font color="RED">*</font>     </h3></td>
          <td><p>
             <input name="comments" type="text" class ="textbox" size="20">
          <td> <font size="5" color="white" id="msg11">Enter comments!</font></td>
          </p>
          </td>
<tr></tr>
          
            </table>
             
             <table>
                 <tr>
                     <td width = "200"> <h3>User ID     </h3></td>
          <td><p>
                  <input name="userid" type="text" class ="textbox" size="20"  value="<%= (String) session.getAttribute("user")%>">
             <td> <font size="5" color="white" id="msg12">Enter user ID!</font></td>
          </p>
          </td>
            </table>
             <br>
             <br>
             <br>
             
             
<table align="center">
   <tr>
         
        
          <td colspan=2><input type="submit" name = "submit" class="blue button" value="<%=bttn_value%>" >  
                  
          <td colspan=2>&nbsp;</td>
          <td colspan=2> <input type="Button" onclick="window.location='/TSRH/testrequest.jsp?pid=<%=Controller.getCurrentPatient().getPatientId() %>'" class="blue button"  value="Cancel" ></td>
           
          </tr>        
        </table>

     
</article>
        </div> </div></div></section>

          
    <br>
    
                <%@ include file="footers.jsp" %>
</tr>
<script type="text/javascript">Cufon.now();</script>
<script src="js/jquery.pageslide.min.js"></script>
</body>
</html>
