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
<link rel="stylesheet" href="css/tableCSS.css" type="text/css" media="all">
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
function openMoreInfo(){
var checked = false, radios = document.getElementsByName('radios');
for (var i = 0, radio; radio = radios[i]; i++) {
    if (radio.checked) {
        checked = true;
        window.location = '/TSRH/moreinfoontestresult.jsp?test_resultid='+radios[i].id;
        break;
    }
    
}
  if(checked==false)
        {
            alert('Please select a record');
            
        }
}

function openAlert(){
var checked = false, radios = document.getElementsByName('radios');
for (var i = 0, radio; radio = radios[i]; i++) {
    if (radio.checked) {
        checked = true;
        window.location = '/TSRH/notification.jsp';//?test_resultid='+radios[i].id;
        break;
    }
   
}
  if(checked==false)
        {
            alert('Please select a record');
            
        }
}
window.tableSearch = {};

        //initialize the search, setup the current object
        tableSearch.init = function() {
           
            //define the properties I want on the tableSearch object
            this.Rows = document.getElementById('data').getElementsByTagName('tr');
            this.RowsLength = tableSearch.Rows.length;
            this.RowsText = [];
           
            //loop through the table and add the data to the table search object
            for (var i = 0; i < tableSearch.RowsLength; i++) {
                
                this.RowsText[i] = (tableSearch.Rows[i].innerText) ? tableSearch.Rows[i].innerText.toUpperCase() : tableSearch.Rows[i].textContent.toUpperCase();
            }
        }
         tableSearch.runSearch = function() {
           
            //loop through the table and add the data to the table search object
            for (var i = 0; i < tableSearch.RowsLength; i++) {
                this.RowsText[i] = (tableSearch.Rows[i].innerText) ? tableSearch.Rows[i].innerText.toUpperCase() : tableSearch.Rows[i].textContent.toUpperCase();
                
            }
            this.Term = document.getElementById('textBoxSearch').value.toUpperCase();
           
            //loop through the rows and hide rows that do not match the search query
            for (var i = 0, row; row = this.Rows[i], rowText = this.RowsText[i]; i++) {
                row.style.display = ((rowText.indexOf(this.Term) != -1) || this.Term === '') ? '' : 'none';
            }
        }
tableSearch.search = function(e) {
            //checks if the user pressed the enter key, and if they did then run the search
            //loop through the table and add the data to the table search object
            for (var i = 0; i < tableSearch.RowsLength; i++) {
                this.RowsText[i] = (tableSearch.Rows[i].innerText) ? tableSearch.Rows[i].innerText.toUpperCase() : tableSearch.Rows[i].textContent.toUpperCase();
            }
            var keycode;
            if (window.event) { keycode = window.event.keyCode; }
            else if (e) { keycode = e.which; }
            else { return false; }
            if (keycode == 13) {
                tableSearch.runSearch();
            }
            else { return false; }
        }

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
<body id="page5" onLoad="tableSearch.init();">
        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/Test.html' })" class="first">Help</a>
<div class="wrap">
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
<%
String test_requestid1="";
Connection conn = null;
try
{
    //int ttest_requestid=0;
//String test_requestid1=request.getParameter("test_requestid");
  //   ttest_requestid=Integer.parseInt(test_requestid1);
  // ResultSet res = Controller.getDBManager().getTestResult(ttest_requestid);
   // out.println(ttest_requestid);   
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement stmt=conn.createStatement();
    ResultSet res = null;
    test_requestid1=request.getParameter("test_requestid");
    int ttest_requestid=Integer.parseInt(test_requestid1);
    res= stmt.executeQuery("select * from test_result_record where test_result_requestid ="+ttest_requestid);
    int count = 0;
    while(res.next())
    {
     count = 1;
    }
    if(count==1)
               {
%>
<section id="content">
    <div class="inside">
        <div class="container">
                        <div class="wrapper indent">
                          <article class="col-0">
<h3>&nbsp;</h3>
<div align="left">
    <tr>
        <td>
            
    <h2>Test Results</h2> </td>
    </tr>

</div>
<div align="right">
                    <input class="textbox" type="text" size="20" value="" id="textBoxSearch" onkeyup="tableSearch.search(event);" />
                    <input class="blue button" type="button" value="Filter" onclick="tableSearch.runSearch();" />
                    <input type="text" size="1" style=" background-color: transparent; border: 0px"/>
                </td>
            </tr>
        </tbody>
    </table>
  
</div>
      
      <div align="left">


 
<table class="bordered">
			<tr>
			<th align='center'>Test Result ID</th>
			<th align='center'>Test Request ID</th>
			<th align='center'>Test Taken Date</th>	
			<th align='center'>Result Date</th>		
			<th align='center'>Result</th>
			<th align='center'>Result File Path</th>
			<th align='center'>Staff to be Informed</th>
			<th align='center'>Date to Inform Staff </th>						
			</tr>
<%
res= stmt.executeQuery("select * from test_result_record where test_result_requestid ="+ttest_requestid);

%>
<tbody id="data">
    <%while(res.next())
    {%>

	
				<tr>
                                <td>
				<INPUT TYPE="radio" NAME="radios" id="<%=res.getInt(1)%>"><%=res.getInt(1)%></td>
				<td align='center'><%=res.getInt(2)%></td>
				<td align='center'><%=res.getDate(3)%></td> 
				<td align='center'><%=res.getDate(4)%></td>  
				<td align='center'><%=res.getString(5)%></td>  
				<td align='center'><%=res.getString(6)%></td> 
				<td align='center'><%=res.getString(7)%></td>  	
				<td align='center'><%=res.getString(8)%></td>											
				
				
		
</tr>
<% 
}%>
</tbody>

</table>
      <br>
      
<input type="button" class="blue button" onclick="openMoreInfo();" value="View">
<input type="button" class="blue button" onclick="openAlert();" value="Alert">
<br>
<br>
<br>
<br>

<input type="button" class="blue button" onClick="window.location='/TSRH/testrequest.jsp?pid=<%=Controller.getCurrentPatient().getPatientId()%>'" value="Back"> 
    </div>

<%
 Controller.getDBManager().closeConnection();
}      

else
       {
%>
<div align="center">
<label>NO RECORDS FOUND </label><br>
<br>
<br>

<input type="button" class="blue button"  onClick="window.location='/TSRH/testrequest.jsp?pid=<%=Controller.getCurrentPatient().getPatientId()%>'" value="Back">
</div>
    
<%}
}      
catch(Exception e){
   
    System.out.print(e);
    e.printStackTrace();
    }
finally{
    if(null!= conn)
               {
        conn.close();
       }
    }
%>


</div>
</div>
</article>
                        </div>
</p>
        </div>

<br>
<br>
<br>
<br>

	
</section>
        </div>

    

	<%@ include file="footers.jsp" %>

</tr>
<script type="text/javascript">Cufon.now();</script>
<script src="js/jquery.pageslide.min.js"></script>
</body>
</html>
