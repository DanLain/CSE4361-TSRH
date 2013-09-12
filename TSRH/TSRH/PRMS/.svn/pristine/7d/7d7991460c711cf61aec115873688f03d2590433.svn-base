<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%> 
<%@page import="model.PatientInfo" %>
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
function openConsult(){
var checked = false, radios = document.getElementsByName('radios');
for (var i = 0, radio; radio = radios[i]; i++) {
    if (radio.checked) {
        checked = true;
        window.location = '/TSRH/testconsultation.jsp?pid='+radios[i].id;
        break;
    }
}
  if(checked==false)
      {
          alert("Please select a record");
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
<![endif]--></head>
<jsp:useBean id="Controller" class="controller.Controller" scope="session" />
<body id="page5" onLoad="new ElementMaxHeight();">
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/Consult.html' })" class="first">Help</a>
<div class="wrap">
<!-- header -->
                  <%
        //check if a user has logged in. If not redirect to home page
String currentUser = (String) session.getAttribute("user");        
        if(currentUser == null){            
            String redirectURL = "index.jsp";
            response.sendRedirect(redirectURL);
        }
     %>			
 <%@ include file="headers.jsp" %>
	
<section id="content">
    <div class="inside">
        <div class="container">
                        <div class="wrapper indent">
                          <article class="col-0"> 
 

<%
//String patient_idnumber = request.getParameter("patient_idnumber");
//session.setAttribute("patient_idnumber", patient_idnumber);

String patient_idnumber="";

String patientName="";

String DOB="";


//if(Controller.getCurrentPatient()==null){
patient_idnumber = request.getParameter("patient_idnumber");
patientName = request.getParameter("patientName");
DOB = request.getParameter("DOB");
Connection con = null;

try
{
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection(Controller.getDBManager().getDBAccess().getConStr(), Controller.getDBManager().getDBAccess().getUserName(), Controller.getDBManager().getDBAccess().getPwd());
    Statement st=con.createStatement();
    ResultSet rs = null;    
    String[] name = null;
    String query="";
    
     if(!patient_idnumber.isEmpty())
    {
        if(!patient_idnumber.toUpperCase().contains("TSRH"))
            patient_idnumber = "TSRH" + patient_idnumber;
                 
    }
    
  
    if(!patientName.isEmpty())
    {
        if(patientName.contains(","))
           {
            name = patientName.split(",");
            if(!patient_idnumber.isEmpty()&&!patientName.isEmpty()&&!DOB.isEmpty())
    {
        //query = "select * from patientrecord where patientid = '"+patient_idnumber+"'";
        query = "select * from patientrecord where patientid '"+patient_idnumber+"' and firstname = '"+name[1]+"' and lastname = '" +name[0]+"' and dateofbirth = '"+DOB+"' ";
        //rs= st.executeQuery("select * from patientrecord where patientid = '"+patient_idnumber+"'");
    }
      if(!patient_idnumber.isEmpty()&&!patientName.isEmpty())
    {
        //query = "select * from patientrecord where patientid = '"+patient_idnumber+"'";
        query = "select * from patientrecord where patientid = '"+patient_idnumber+"' and firstname = '"+name[1]+"' and lastname = '" +name[0]+"'";
        //rs= st.executeQuery("select * from patientrecord where patientid = '"+patient_idnumber+"'");
    }
            if(!patientName.isEmpty()&&!DOB.isEmpty())
    {
        //query = "select * from patientrecord where patientid = '"+patient_idnumber+"'";
        query = "select * from patientrecord where dateofbirth = '"+DOB+"' and firstname = '"+name[1]+"' and lastname = '" +name[0]+"'";
        //rs= st.executeQuery("select * from patientrecord where patientid = '"+patient_idnumber+"'");
    }
        if(!patientName.isEmpty())
    {
        query = "select * from patientrecord where firstname = '"+name[1]+"' and lastname = '" +name[0]+"' ";
         //rs= st.executeQuery("select * from patientrecord where firstname = '"+name[1]+"' and lastname = '" +name[0]+"' ");
    }   
        }
        
    }
    
    
    
    if(!patient_idnumber.isEmpty()&&!patientName.isEmpty()&&!DOB.isEmpty())
    {
        //query = "select * from patientrecord where patientid = '"+patient_idnumber+"'";
        query = "select * from patientrecord where patientid '"+patient_idnumber+"' and firstname = '"+patientName+"' or lastname = '" +patientName+"' and dateofbirth = '"+DOB+"' ";
        //rs= st.executeQuery("select * from patientrecord where patientid = '"+patient_idnumber+"'");
    }
       else if(!patient_idnumber.isEmpty()&&!patientName.isEmpty())
    {
        //query = "select * from patientrecord where patientid = '"+patient_idnumber+"'";
        query = "select * from patientrecord where patientid = '"+patient_idnumber+"' and firstname = '"+patientName+"' or lastname = '" +patientName+"'";
        //rs= st.executeQuery("select * from patientrecord where patientid = '"+patient_idnumber+"'");
    }
     else if(!patient_idnumber.isEmpty()&&!DOB.isEmpty())
    {
        //query = "select * from patientrecord where patientid = '"+patient_idnumber+"'";
        query = "select * from patientrecord where patientid = '"+patient_idnumber+"' and dateofbirth= '" +DOB+"'";
        //rs= st.executeQuery("select * from patientrecord where patientid = '"+patient_idnumber+"'");
    }
    else if(!patientName.isEmpty()&&!DOB.isEmpty())
    {
        //query = "select * from patientrecord where patientid = '"+patient_idnumber+"'";
        query = "select * from patientrecord where dateofbirth = '"+DOB+"' and firstname = '"+patientName+"' and lastname = '" +patientName+"'";
        //rs= st.executeQuery("select * from patientrecord where patientid = '"+patient_idnumber+"'");
    }
    
     else if(!patient_idnumber.isEmpty())
    {
        query = "select * from patientrecord where patientid = '"+patient_idnumber+"'";
         //rs= st.executeQuery("select * from patientrecord where firstname = '"+name[1]+"' and lastname = '" +name[0]+"' ");
    }
    
       else if(!patientName.isEmpty())
    {
        query = "select * from patientrecord where firstname = '"+patientName+"' or lastname = '" +patientName+"' ";
         //rs= st.executeQuery("select * from patientrecord where firstname = '"+name[1]+"' and lastname = '" +name[0]+"' ");
    }
    
          else 
               {
        query = "select * from patientrecord where dateofbirth = '"+DOB+"'";
    }
    rs = st.executeQuery(query);
    
    int count = 0;
    while(rs.next())
    {
     count = 1;
    }
    if(count==1)
               {
  
    Controller.createCurrentPatient();
    PatientInfo currentPatient = Controller.getCurrentPatient();
    //rs= st.executeQuery("select * from patientrecord where patientid = '"+patient_idnumber+"'");
    rs = st.executeQuery(query);
    while(rs.next())
	{
		currentPatient.setPatientId(rs.getString(1));
		currentPatient.setLastName(rs.getString(2));
		currentPatient.setFirstName(rs.getString(3));
		currentPatient.setBirthDate(rs.getString(4));
		currentPatient.setHouseNumber(rs.getString(6));
		currentPatient.setSSN(rs.getString(5));
		currentPatient.setContactPerson(rs.getString(7));
                
    }
    
	
   
   
  
//}
%>


  

<br/>
 <h2> Patient Details</h2> 

<table class="bordered" >
	<strong>
        <tr>
			<th align='center'>Patient ID</th>			
			<th align='center'>Last Name</th>
			<th align='center'>First Name</th>
			<th align='center'>Date of Birth</th>
			<th align='center'>Phone Number</th>
			<th align='center'>Address</th>
			<th align='center'>Mother's Name</th>		
			</tr>
					</strong>	
<%
rs = st.executeQuery(query);
while(rs.next())
    {
 %>	
				<tr>
                                    <td><INPUT TYPE="radio" NAME="radios" id="<%=rs.getString(1)%>"><%=rs.getString(1)%></td>    
                                    <td align='center'><%=rs.getString(2)%></td>
				<td align='center'><%=rs.getString(3)%></td>
				<td align='center'><%=rs.getString(4)%></td> 
				<td align='center'><%=rs.getString(5)%></td>  
				<td align='center'><%=rs.getString(6)%></td>  
				<td align='center'><%=rs.getString(7)%></td> 
				</tr>
    
    
    <%
   }
%>		</table>
                <br>
                
                <input type="button" class="blue button" onclick="window.location = '/TSRH/consult.jsp'" value="Back">
                <input type="button" class="blue button" onclick="openConsult();" value="Consultations">



</font>



<%
}
  else
  {
        %>
        <div align="center">
            <br>
<br>
<br>
         <% 
         out.println("NO RECORDS FOUND");
         %>
         <br>
         <br><br>
         <br>

         <Button class="blue button" onclick="window.location = '/TSRH/consult.jsp?pid=<%=patient_idnumber%>'">Back</Button>
         <br>
                  <br>
                           <br>
                           <br>
                           <br>
        </div>
         <%
  }
}
 catch(Exception e)
 {%>
     <div align="center">
            <br>
<br>
<br>
    <% out.println("NO RECORDS FOUND");
       System.out.print(e);
       e.printStackTrace();
   }
finally{
    if(null!= con)
               {
        con.close();
       }
    }
%>      
<font size="+3" color="red"></b>

    </div>
	<br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
                          </article>
                        </div>
        </div>
    </div>
        </section>
     <%@ include file="footers.jsp" %>
     
   
<script type="text/javascript">Cufon.now();</script>
<script src="js/jquery.pageslide.min.js"></script>
</body>
</html>
