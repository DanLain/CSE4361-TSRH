<%-- 
    Document   : setNewVacaton
    Created on : Apr 19, 2013, 3:32:36 PM
    Author     : Sravan
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=8" />


<html lang="en">

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@page import="controller.Controller" import="dbmanager.DBConfig"%>
    <%@page import ="java.util.*" import="PRMSalert.*"%> <%--import="PRMSAlertDatabase.*" --%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Set New Vacation</title>
        <meta charset="utf-8">
        <meta name="description" content="Place your description here">
        <meta name="keywords" content="put, your, keyword, here">
        <meta name="author" content="Templates.com - website templates provider">
        
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/basic.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/tableCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/comboCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/radioCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <link href="DatePicker/kendo.common.min.css" rel="stylesheet">
        <link href="DatePicker/kendo.blueopal.min.css" rel="stylesheet">

        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>
        <script src="DatePicker/jquery.min.js"></script>
        <script src="DatePicker/kendo.web.min.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>   




        <script type="text/javascript">

            function upgradepicker() {
                var date= new Date();
                $("#alertdate").kendoDatePicker({
                    min:date
                    
                });
                 $("#alertdate1").kendoDatePicker({
                    min:date
                    
                });
            }
        </script>

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
               
               var t=document.forms["form1"]["vacationTitle"].value;
               var a=document.forms["form1"]["todate"].value;
               var b=document.forms["form1"]["fromdate"].value;
               var x=document.forms["form1"]["to"].value;
               var y=document.forms["form1"]["vacationMessage"].value;
                 if (t==null || t=="")
                   {
                   document.getElementById('msg9').style.visibility ='visible';
                   document.getElementById('msg9').color = "red";
                   document.getElementById('msg9').innerHTML = 'Please Select Vacation Title !';
                        
                   return false;
                   }
              else if (b==null || b=="")
                   {
                   document.getElementById('msg1').style.visibility ='visible';
                   document.getElementById('msg1').color = "red";
                   document.getElementById('msg1').innerHTML = 'Please Select start date !';
                   
                   document.getElementById('msg9').style.visibility='hidden';
                   return false;
                   }
              else if (a==null || a=="")
               {
                   document.getElementById('msg2').style.visibility ='visible';
                   document.getElementById('msg2').color = "red";
                   document.getElementById('msg2').innerHTML = 'Please Select end date !';
                   document.getElementById('msg9').style.visibility='hidden';
                   document.getElementById('msg1').style.visibility='hidden';
                   return false;
                }
               else if (x==null || x=="" )
               {
                   document.getElementById('msg3').style.visibility ='visible';
                   document.getElementById('msg3').color = "red";
                   document.getElementById('msg3').innerHTML = 'Please select user !';
                   document.getElementById('msg9').style.visibility='hidden';
                   document.getElementById('msg2').style.visibility='hidden';
                   document.getElementById('msg1').style.visibility='hidden';
                   return false;
               }
          

               else if(y==null || y=="")
               {   
                   document.getElementById('msg4').style.visibility ='visible';
                   document.getElementById('msg4').color = "red";
                   document.getElementById('msg4').innerHTML = 'Enter vacation Message';
                   document.getElementById('msg9').style.visibility='hidden';
                   document.getElementById('msg1').style.visibility='hidden';
                   document.getElementById('msg2').style.visibility='hidden';
                   document.getElementById('msg3').style.visibility='hidden';
 
                   return false;
               }
               else
               {
                   document.getElementById('msg1').style.visibility='hidden';
                   document.getElementById('msg2').style.visibility='hidden';
                   document.getElementById('msg3').style.visibility='hidden';
                   document.getElementById('msg4').style.visibility='hidden';
                   document.getElementById('msg9').style.visibility='hidden';

               }
           }   
       </script>

        </head>
     <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
    %>
    <jsp:useBean id="Controller" class="controller.Controller" scope="session" />
    <body id="page1" onLoad="upgradepicker()">
        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/setVacation.html' })" class="first">help</a>
        <div class="wrap">
            <!-- header -->
                 <%@ include file="headers.jsp" %>

            <!-- content -->
            <section id="content">
                <div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
                    <div class="inside">
                        <div class="wrapper indent">
                               <div id="content_main">
                            <article class="col-1">
                                <div class="box"  style="width:800px;background-color: #F0F0F0;" align="center">
                                    <h2>Enter vacation Details</h2>
                                <p>
                                <form name="form1" method="post" onSubmit="return validateForm()" action="setVacation.jsp">
                                    <table width="700" >
                                          <tr>
                                            <td width="200"><h3><font color="red">*</font>Vacation Title:</h3></td>
                                            <td width="400"><p>
                                                <input type="text" class="textbox" name="vacationTitle" maxlength="50" id="vacationTitle" style="height:25px;width:250px ">
                                                 <td> <font size="5" color="white" id="msg9"></font></td>
                                                </p>
                                                </td>
                                        </tr>
                                            <tr>
                                                <td><h3><font color="red">*</font>Vacation from:</h3></td>
                                                <td><p>
                                                        <input name="fromdate"  type="text" id="alertdate" />
                                                        <td>
                                                            <font size="5" color="white" id="msg1"></font>
                                                        </td>
                                                    </p>
                                                </td>
                                            </tr><tr>

                                        </tr> 
                                         <tr>
                                                <td><h3><font color="red">*</font>Vacation to:</h3></td>
                                                <td><p>
                                                        <input name="todate"  type="text" id="alertdate1"  />
                                                        <td>
                                                            <font size="5" color="white" id="msg2"></font>
                                                        </td>
                                                    </p>
                                                </td>
                                            </tr>
                                            <tr>
                                            <td><h3><font color="red">*</font>Alert To:</h3></td>
                                            <td width="200">
                                                    <table><td>
                                                    <select  name="to"  size="4" style="width:200px; height:100px" >
                                                                <%

                                                                java.sql.Connection con;
                                                                java.sql.Statement s;
                                                                java.sql.ResultSet rs;

                                                                con = null;
                                                                s   = null;
                                                                rs  = null;
                                                          
                                                       DBConfig cfg = new DBConfig();
                                                  String ipAddress = cfg.getProperty("ipAddress");
                                                  String dbPort = cfg.getProperty("mDbPort");
                                                  String dbName = cfg.getProperty("mDbName");
                                                  String dbUserName = cfg.getProperty("mDbUser");
                                                  String dbPassword = cfg.getProperty("mDbPwds");

                                       // creating connection string
                    String dbUrl = "jdbc:mysql://"+ipAddress+":"+dbPort+"/"+dbName;                

                    Class.forName(cfg.getProperty("dbConnect"));

                    con = (Connection) DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
            
                                                     
                                                                String usernamee= (String)session.getAttribute("user");
                                                                String sqlq = "SELECT firstName,lastname,userId FROM user where userName != 'Admin' and userName !='"+usernamee+"' ";
                                                                try {

                                                                    s = con.createStatement();
                                                                    rs = s.executeQuery(sqlq);
                                                                    String names = null;
                                                                   // String id1= rs.getString(3);

                                                                    while (rs.next()) {
                                                                        String idq= rs.getString(3);
                                                                        names = rs.getString(2)+","+rs.getString(1);
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
                                                                    if (rs != null) {
                                                                        rs.close();
                                                                    }
                                                                    if (s != null) {
                                                                        s.close();
                                                                    }
                                                                    if (con != null) {
                                                                        con.close();
                                                                    }
                                                                }//end of catch

                                                            %>
                                                    </select>
                                                            <%--</td><td> --%>
                                                </td></table></td>
                                            <td> <font size="5" color="white" id="msg3"></font></td>

                                        </tr>
                                       
                                         <tr>
                                            <td><h3><font color="red">*</font>Message:</h3></td>
                                            <td width="200"><p>
                                                    <textarea name="vacationMessage" class="textbox" maxlength="500" cols="30" rows="6" style="height:100px;width:250px;resize:none"></textarea>
                                                <td> <font size="5" color="white" id="msg4"></font></td>
                                                </p>
                                            </td>
                                        </tr>
                                         <tr>

                                        </tr> 

                                            
                                    </table>
                                           <div style="color: red;font:italic"> &nbsp;Fields Marked in * are Mandatory</div>
                                    <table>
                                        <br>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td  colspan="2"><h3><input type="submit" align="right" class="blue button"  value="Set Vacation">   </h3>       </tr>
                                      </table>
                                </form>
                                </p>
                            </article>
  </div>
                          
                        </div>
                        <ul class="articles">
                            <li class="maxheight"></li>
                            <li class="maxheight"></li>
                            <li class="maxheight last"></li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
        <!-- footer -->
             <%@ include file="footers.jsp" %>
    <script type="text/javascript">Cufon.now();</script>
    <script src="js/jquery.pageslide.min.js"></script>

    </body>
</html>