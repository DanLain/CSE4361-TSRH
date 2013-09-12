<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="dbmanager.DBConfig"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientRecord"%>
<%@page import="controller.Controller"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=8" />


<html lang="en">
    <head>
	<title>TSRH - Add New Phone Conversation </title>
	<meta charset="utf-8">
	<meta name="description" content="Place your description here">
	<meta name="keywords" content="put, your, keyword, here">
	<meta name="author" content="Templates.com - website templates provider">
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
	<script type="text/javascript" src="/TSRH/js/head.min.js"></script>
        <link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>
         <link href="DatePicker/kendo.common.min.css" rel="stylesheet">
        <link href="DatePicker/kendo.blueopal.min.css" rel="stylesheet">
        <script src="DatePicker/jquery.min.js"></script>
        <script src="DatePicker/kendo.web.min.js"></script>
        
        
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

        <%
            String patientId = request.getParameter("pId");
            
            PatientRecord pRecord = RecordController.getPatientRecord(patientId);
        %>
        <script type="text/javascript">
            
            function upgradepicker() {
                var date= new Date();
                date.toString('yyyy-MM-dd');
                $("#DOB").kendoDatePicker({
                    max:date
                });
                
                }
        </script>

	
	<script type="text/javascript">
	    head.js("/TSRH/js/maxheight.js",
		    "/TSRH/js/jquery-1.4.2.min.js",
		    "/TSRH/js/cufon-yui.js",
		    "/TSRH/js/cufon-replace.js",
		    "/TSRH/js/Myriad_Pro_400.font.js",
		    "/TSRH/js/script.js",
		    "/TSRH/js/cal.js",
		    
		    function() {
			// Do nothing (for now)
		    });
	</script>

	<SCRIPT LANGUAGE=JavaScript>
	    /* intImage = 2;
	function swapImage() {
	switch (intImage) {
	 case 1:
	   IMG1.src = "index.jsp"
	   intImage = 2
	   return(false);
	case 2:
	   IMG1.src = "Displayalert.jsp"
	   intImage = 1
	   return(false);
	 }
	} */
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
   <script>
                function validateForm()
                    {
                    var a=document.forms["form2"]["fName"].value;
                    var b=document.forms["form2"]["lName"].value;
                    var c=document.forms["form2"]["DOB"].value;
                    var d=document.forms["form2"]["caller"].value;
                    var e=document.forms["form2"]["ph_subject"].value;
                    var f=document.forms["form2"]["ph_body"].value;
                    var g=document.forms["form2"]["to"].value;
                    var h=document.forms["form2"]["checkbox11"];
                    

                    if (a==null || a=="" )
                      { document.getElementById('text1').style.visibility='visible';
                      document.getElementById('text1').color = "red";
                      document.getElementById('text1').innerHTML = 'Patient First Name is Required*';
                      return false;
                      }
                      else if(b==null || b=="")
                      {document.getElementById('text2').style.visibility='visible';
                      document.getElementById('text2').color = "red";
                      document.getElementById('text2').innerHTML = 'Patient Last Name is Required*';
                      document.getElementById('text1').style.visibility='hidden';
                      return false;
                      }
                      else if(c==null || c=="")
                      {document.getElementById('text3').style.visibility='visible';
                      document.getElementById('text3').color = "red";
                      document.getElementById('text3').innerHTML = 'Date Of Birth is Required*';
                      document.getElementById('text1').style.visibility='hidden';
                      document.getElementById('text2').style.visibility='hidden';
                      return false;
                      }
                        else if(d==null || d=="")
                      {document.getElementById('text4').style.visibility='visible';
                      document.getElementById('text4').color = "red";
                      document.getElementById('text4').innerHTML = 'Caller is Required*';
                      document.getElementById('text1').style.visibility='hidden';
                      document.getElementById('text2').style.visibility='hidden';
                      document.getElementById('text3').style.visibility='hidden';
                      return false;
                      }
                       else if(e==null || e=="")
                      {document.getElementById('text5').style.visibility='visible';
                      document.getElementById('text5').color = "red";
                      document.getElementById('text5').innerHTML = 'Subject is Required*';
                      document.getElementById('text1').style.visibility='hidden';
                      document.getElementById('text2').style.visibility='hidden';
                      document.getElementById('text3').style.visibility='hidden';
                      document.getElementById('text4').style.visibility='hidden';
                      return false;
                      }
                       else if(f==null || f=="")
                      {document.getElementById('text6').style.visibility='visible';
                      document.getElementById('text6').color = "red";
                      document.getElementById('text6').innerHTML = 'Body is Required*';
                      document.getElementById('text1').style.visibility='hidden';
                      document.getElementById('text2').style.visibility='hidden';
                      document.getElementById('text3').style.visibility='hidden';
                      document.getElementById('text4').style.visibility='hidden';
                      document.getElementById('text5').style.visibility='hidden';
                      return false;
                      }
                      else if(h.checked==true)
                        {
                            if(g==null || g==""){
                                
                           document.getElementById('text10').style.visibility='visible';
                            document.getElementById('text10').color = "red";
                            document.getElementById('text10').innerHTML = 'Please select a user*';
                            document.getElementById('text1').style.visibility='hidden';
                      document.getElementById('text2').style.visibility='hidden';
                      document.getElementById('text3').style.visibility='hidden';
                      document.getElementById('text4').style.visibility='hidden';
                      document.getElementById('text5').style.visibility='hidden';
                      document.getElementById('text6').style.visibility='hidden';
                            return false;
                            }
                        }
                      
                      else
                      {
                      document.getElementById('text1').style.visibility='hidden';
                      document.getElementById('text2').style.visibility='hidden';
                      document.getElementById('text3').style.visibility='hidden';
                      document.getElementById('text4').style.visibility='hidden';
                      document.getElementById('text5').style.visibility='hidden';
                      document.getElementById('text6').style.visibility='hidden';
                      document.getElementById('text10').style.visibility='hidden';
                      
                      
                      }
                              
                  }
                  
                  function Visible(){
                      //alert("Hi");
                  
    if(document.getElementById("checkbox11").checked==true)
        {
        document.getElementById("Alerttotext").style.visibility='visible';
        document.getElementById("Alertto").style.visibility='visible';
        document.getElementById("usermessage").style.visibility='visible';
        //alert("Hi inside if");
        }
        else{
        document.getElementById("Alertto").style.visibility='hidden';
    document.getElementById("Alerttotext").style.visibility='hidden';
    document.getElementById("usermessage").style.visibility='hidden';
    document.getElementById("text10").style.visibility='hidden';
    }
        }
                      
</script>
            
    </head>
    <body id="page1" onLoad="upgradepicker()">

        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/phoneadd.html' })" class="first">help</a>

        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/phone.html' })" class="first">help</a>

        <div class="wrap">	    
	    <!-- header -->
	    <%@ include file="headers.jsp" %>
            
	    <!-- content -->
	    <section id="content">
		<div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
		    <div class="inside">
			<div class="wrapper indent">
			    <article class="col-1">

                                <h2>Create a new Conversation Record</h2>				
                                <form name="form2" method="post" action="phoneaddMgr.jsp" onsubmit="return validateForm()" >
    
                                    
				    <table class="padded_table">
					
					<tr>			
					    <td><label for="fName"><h3>Patient First Name:</h3></label></td>                                            
                                            <td><input type="text" class="textbox" readonly name="fName" size ="40" value='<%= pRecord.getFirstName()%>' style="width:250px; height:25px"></td>
                                     
                                            <td> <font size="5" color="white" readonly id="text1"></font></td>
					</tr>
                                        
                                        <tr>			
					    <td><label for="lName"><h3>Patient Last Name:</h3></label></td>                                            
					    <td><input type="text" class="textbox" readonly name="lName" size ="40" value='<%= pRecord.getLastName() %>' style="width:250px; height:25px"></td>
                                            <td> <font size="5" color="white" id="text2"></font></td>
					</tr>
                                       
                                        <tr>
					    <td><label for="DOB"><h3>Date of Birth:</h3></label></td>
					    <!-- <td><input type="text" name="DOB" size ="40"/></td>  -->
                                            
                                             <td><input type="text" class="textbox" readonly value='<%= pRecord.getDOB() %>' name="DOB" />
                                            </td>
        
                                            <td> <font size="5" color="white" id="text3"></font></td>
					</tr>

					    <td><label for="caller"><h3> <font color="red">*</font> Caller:</h3></label></td>
					    <td><input type="text" class="textbox"  name="caller" size ="40" maxlength="50" style="width:250px; height:25px"/></td>
                                            <td> <font size="5" color="white" id="text4"></font></td>
					</tr>

                                        <tr>
					    <td><label for="ph_subject"><h3><font color="red">*</font> Subject:</h3></label></td>
					    <td><input type="text" class="textbox" name="ph_subject"  size ="40" maxlength="50" style="width:250px; height:25px"/></td>
                                            <td> <font size="5" color="white" id="text5"></font></td>
					</tr>    

                                        <tr>
					    <td><label for="ph_body"><h3><font color="red">*</font> Message:</h3></label></td>
                                            <td><textarea type="text" class="textbox" name="ph_body"  cols ="37" rows ="10" maxlength="10000" style="height: 150px ;width:250px ;resize:none "/></textarea></td>
                                            <td> <font size="5" color="white" id="text6"></font></td>
					</tr>
                                        <tr>
                                            <td><h3>Send Alert to Doctor:</h3> </td><td><input type="checkbox" name="SetAlertPhone" id="checkbox11" checked onclick="Visible()"/></td>
                                            </tr>
                                           <tr>
                                            <td><div ><h3 id="Alerttotext"><font color="red">*</font> Alert To: </h3></div> </td>
                                            <td><table><td>
                                                    <select multiple="multiple" name="to" id="Alertto"  size="4" style="width:200px; height:100px" >
                                                                <%
                                                               
                                                                java.sql.Connection conuser;
                                                                java.sql.Statement suser;
                                                                java.sql.ResultSet rsuser;
                                                                    
                                                                conuser = null;
                                                                suser = null;
                                                                rsuser = null;
                                                                    
                                                           /*     String url1user = "jdbc:mysql://localhost:3306/alertsystem";
                                                                //String id = "root";
                                                                //String pass = "1234";
                                                                
                                                                String id1user="root";
                                                                String pass1user;//=Controller.getDBManager().getDBAccess().getPwd();
                                                                pass1user="1234";
                                                                try {
                                                                    
                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                    conuser = java.sql.DriverManager.getConnection(url1user, id1user, pass1user);
                                                                        
                                                                } catch (ClassNotFoundException cnfex) {
                                                                    cnfex.printStackTrace();
                                                                        
                                                                }//end */
                                                      //          Controller dba = new Controller();
                                                    // conuser = dba.getConnection();
                                                     
                                                      DBConfig cfg = new DBConfig();
                            String ipAddress = cfg.getProperty("ipAddress");
                String dbPort = cfg.getProperty("mDbPort");
                String dbName = cfg.getProperty("mDbName");
                String dbUserName = cfg.getProperty("mDbUser");
                String dbPassword = cfg.getProperty("mDbPwds");
                
// creating connection string
                String dbUrl = "jdbc:mysql://"+ipAddress+":"+dbPort+"/"+dbName;                
                
                Class.forName(cfg.getProperty("dbConnect"));
                
                conuser = (Connection) DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
                
                                                                String usernamee= (String)session.getAttribute("user");
                                                               // String sqlq = "SELECT firstName,lastname,userId FROM user where userName != 'Admin' and userName !='"+usernamee+"' ";
                                                                 String sqlquser = "SELECT firstName,lastname,userId FROM user where userName != 'Admin'";
                                                                try {
                                                                    
                                                                    suser = conuser.createStatement();
                                                                    rsuser = suser.executeQuery(sqlquser);
                                                                    String names = null;
                                                                   // String id1= rs.getString(3);
                                                                        
                                                                    while (rsuser.next()) {
                                                                        String idq= rsuser.getString(3);
                                                                        names = rsuser.getString(2)+","+rsuser.getString(1);
                                                                        out.println("<option value=");
                                                                        out.println(idq);
                                                                        
                                                                        out.println(">");
                                                                        out.println(names);
                                                                        out.println("</option>");
                                                                            
                                                                    }//end of while
                                                                        
                                                                }//end of try
                                                                catch (Exception e) {
                                                                    e.printStackTrace();
                                                                } finally {
                                                                    if (rsuser != null) {
                                                                        rsuser.close();
                                                                    }
                                                                    if (suser != null) {
                                                                        suser.close();
                                                                    }
                                                                    if (conuser != null) {
                                                                        conuser.close();
                                                                    }
                                                                }//end of catch
                                                                    
                                                            %>
                                                    </select>
                                                           
                                                </td><td id="usermessage" style="width:100px"">Press the 'Ctrl' key to select multiple users</td></table></td>
                                                <td> <font size="5" color="white" readonly id="text10"></font></td>
                                         </tr> 
				    </table>
                                            <br>
                                     <div style="color: red;font:italic" align="center"> &nbsp;Fields Marked in * are Mandatory</div>
                                    <tr>
				    <input type="submit" class="blue button" value="Submit " style="margin-left: 340px" />
                                    </tr>
				</form>
			    </article>
			</div>
			
		    </div>
		</div>
	    </section>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp" />
	<script type="text/javascript">Cufon.now();</script>
        <script src="js/jquery.pageslide.min.js"></script>
    </body>
</html>