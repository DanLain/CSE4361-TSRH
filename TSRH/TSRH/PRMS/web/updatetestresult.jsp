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

function IsNumeric(input)
{
    if((input - 0) == input && input.length > 0)
        return false;
    else 
        return true;
}

function validateForm()
          {  
                  var utestresultid =document.forms["test_result_update"]["utestresultid"].value;
               var utesttakendate =document.forms["test_result_update"]["utesttakendate"].value;
               var uresultdate =document.forms["test_result_update"]["uresultdate"].value;
               var uresult =document.forms["test_result_update"]["uresult"].value;
               var uresultfilepath =document.forms["test_result_update"]["uresultfilepath"].value;
               var uwhoistobeinformed =document.forms["test_result_update"]["uwhoistobeinformed"].value;
               var uwhentobeinformed =document.forms["test_result_update"]["uwhentobeinformed"].value;
               var uinformed =document.forms["test_result_update"]["uinformed"].value;
               var ucomments =document.forms["test_result_update"]["ucomments"].value;
               var uuserid =document.forms["test_result_update"]["uuserid"].value;
               
               
               if (utestresultid==null || utestresultid=="")
               { 
                   document.getElementById('msg1').color = "red";
                   document.getElementById('msg1').innerHTML = 'Enter test result number!';
                   return false;
                   return false;
               }
              else if(IsNumeric(utestresultid))
              {
                   document.getElementById('msg1').color = "red";
                   document.getElementById('msg1').innerHTML =  'Enter a number!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                   return false;
              }        
               else if(utesttakendate==null||utesttakendate=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "red";
                   document.getElementById('msg2').innerHTML = 'Enter test taken date!';
                   return false;
               }
               else if(uresultdate==null||uresultdate=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "red";
                   document.getElementById('msg3').innerHTML =  'Enter result date!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                   return false;
               }
               else if(uresult==null||uresult=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "red";
                   document.getElementById('msg4').innerHTML = 'Enter result!';
                   return false;
               }
               else if(uresultfilepath==null||uresultfilepath=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "red";
                   document.getElementById('msg5').innerHTML =  'Enter result file path!';
                   return false;
               }
               else if(uwhoistobeinformed==null||uwhoistobeinformed=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "red";
                   document.getElementById('msg6').innerHTML = 'Enter who is to be informed!';
                   return false;
               }
               else if(uwhentobeinformed==null||uwhentobeinformed=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "red";
                   document.getElementById('msg7').innerHTML = 'Enter when to be informed!';
                   return false;
               }
               else if(uinformed==null||uinformed=="")
               {
                   document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "white";
                   document.getElementById('msg8').color = "red";
                   document.getElementById('msg8').innerHTML = 'Enter informed!';
                   return false;
               }
                else if(ucomments==null||ucomments=="")
               {
                    document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "white";
                   document.getElementById('msg8').color = "white";
                   document.getElementById('msg11').color = "red";
                   document.getElementById('msg11').innerHTML = 'Enter comments!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
                   return false;
               }
               else if(uuserid==null||uuserid=="")
               {
                    document.getElementById('msg1').color = "white";
                   document.getElementById('msg2').color = "white";
                   document.getElementById('msg3').color = "white";
                   document.getElementById('msg4').color = "white";
                   document.getElementById('msg5').color = "white";
                   document.getElementById('msg6').color = "white";
                   document.getElementById('msg7').color = "white";
                   document.getElementById('msg8').color = "white";
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
                   document.getElementById('msg11').color = "white";
                   }
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
}
function gotoParent()
{
	
	//var form = document.getElementById( 'test_request_record' );
	//form.submit();
	var parentRef = window.opener;
	$.post("edittestresult.jsp", $('test_result_update').serialize(),function(data){
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
<body id="page1" onLoad="new upgradepicker();">
<div class="wrap">
<!-- header -->
<%@ include file="headers.jsp" %>

                  <%
       // check if a user has logged in. If not redirect to home page
       String currentUser = (String) session.getAttribute("user");        
       if(currentUser == null){            
            String redirectURL = "index.jsp";
         response.sendRedirect(redirectURL);
     }%>
<!-- content -->
<section id="content">
    <div class="inside">
        <div class="container">
                        <div class="wrapper indent">
                          <article class="col-0"> 
                              
        <%
        
String utesttakendate =" ";
String uresultdate = " ";
String uresult=" ";
String uresultfilepath= " ";
String uwhoistobeinformed= " ";
String uwhentobeinformed= " ";
String uinformed= " ";
String uremindernote= " ";
String ureminderdate= " ";
String ucomments= " ";
String uuserid= " ";
int utestresultid = 0;
int utestrequestid = 0;
String bttn_value ="Save";
String button_value = "Cancel";
//String test_requestid = (String)session.getAttribute("test_requestid");
String test_resultid1="";
Connection conne = null;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	conne = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement st=conne.createStatement();
    ResultSet res = null;
    test_resultid1=request.getParameter("test_resultid");
    int test_resultid=Integer.parseInt(test_resultid1);
    res= st.executeQuery("select * from test_result_record"+ " where testresultid="+test_resultid);
    
if(res.next())
{
	utestresultid= res.getInt(1);
        utestrequestid = res.getInt(2);
	utesttakendate = res.getString(3);
	uresultdate = res.getString(4);
	uresult= res.getString(5);
	uresultfilepath = res.getString(6);
	uwhoistobeinformed = res.getString(7);
	uwhentobeinformed =res.getString(8);
	uinformed = res.getString(9);
	//uremindernote = res.getString(10);
	//ureminderdate = res.getString(11);
	ucomments = res.getString(10);
	uuserid = res.getString(11);
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
    <form name= "test_result_update" id = "test_result_update" onSubmit="return validateForm()" action = edittestresult.jsp?testrequest_id=<%=utestrequestid%> method =post>


 
              <h2> Edit Test Result</h2>    
 <table>
<tr>
          <td width = "200"> <h3>*Test Result Number    </h3></td>
          <td><p>
             <input id="utestresultid" name="utestresultid" type="text" class ="textbox" value ="<%=utestresultid%>" size="20">
             <td> <font size="5" color="white" id="msg1"> 'Enter test result number!</font></td>
          </p>
           
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td width = "200"> <h3>*Test Taken Date      </h3></td>
          <td><p>
             <input name="utesttakendate" id="DOB" type="text" class ="textbox" value ="<%=utesttakendate%>" size="20">
             <td> <font size="5" color="white" id="msg2"></font></td>
          </p>
           
          <tr></tr>
 </table>
             <table>
<tr>
          <td width = "200"> <h3>*Result Date   </h3></td>
          <td><p>
             <input name="uresultdate" id="DOB1" type="text" class ="textbox" value ="<%=uresultdate%>" size="20">
             <td> <font size="5" color="white" id="msg3"></font></td>
          </p>
           
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td width = "200"> <h3>*Result      </h3></td>
          <td><p>
             <input name="uresult" type="text" class ="textbox" value ="<%=uresult%>" size="20">
             <td> <font size="5" color="white" id="msg4"></font></td>
          </p>
         
          <tr></tr>
             </table>
             <table>
<tr>
          <td width = "200"> <h3>*Result File Path      </h3></td>
          <td><p>
             <input name="uresultfilepath" type="text" class ="textbox" value ="<%=uresultfilepath%>" size="20">
             <td> <font size="5" color="white" id="msg5">Enter result file path!</font></td>
          </p>
          
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td width = "200"> <h3>*Who Is To Be Informed    </h3></td>
          <td><p>
             <input name="uwhoistobeinformed" type="text" class ="textbox" value ="<%=uwhoistobeinformed%>" size="20">
             <td> <font size="5" color="white" id="msg6"></font></td>
          </p>
          
          <tr></tr>
             </table>
             <table>
<tr>
          <td width = "200"> <h3>*When To Be Informed     </h3></td>
          <td><p>
             <input name="uwhentobeinformed" type="text" class ="textbox" value ="<%=uwhentobeinformed%>" size="20">
             <td> <font size="5" color="white" id="msg7">Enter when to be informed!</font></td>
          </p>
          
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td width = "200"> <h3>*Informed      </h3></td>
          <td><p>
             <input name="uinformed" type="text" class ="textbox" value ="<%=uinformed%>" size="20">
             <td> <font size="5" color="white" id="msg8"></font></td>
          </p>
           
          <tr></tr>
             </table>
             
             <table>
<tr>
          <td width = "200"> <h3>*Comments      </h3></td>
          <td><p>
             <input name="ucomments" type="text" class ="textbox" value ="<%=ucomments%>" size="20">
             <td> <font size="5" color="white" id="msg11">Enter comments!</font></td>
          </p>
           
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>          
<td width = "200"> <h3>*User ID     </h3></td>
          <td><p>
             <input name="uuserid" type="text" class ="textbox" value ="<%=uuserid%>" size="20">
             <td> <font size="5" color="white" id="msg12"></font></td>
          </p>
          
             </table>
   <table align ="center">
<tr>
    
   <tr>
         
        
          <td ><input type="submit" name = "submit" class="blue button"  value="<%=bttn_value%>" >  
         
          
          <td colspan=2>&nbsp;</td>
          <td><input type="button" class="blue button" onClick="window.location = '/TSRH/testresult.jsp?test_requestid=<%=utestrequestid%>'" value="<%=button_value%>">
          
          </tr>
        
        </table>
</form>
                        
          </article>
        </div>
          </div>
        </div>
</section>
<%@ include file="footers.jsp" %>
</tr>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>