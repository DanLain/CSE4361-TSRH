<!DOCTYPE html>
<html lang="en">
<%@page import="edu.uta.tsrh.db.*"
        import="edu.uta.tsrh.model.Patient"
        import="java.util.ArrayList"%>
    <head>
    <title>TSRHC - Phone Management - Select</title>
    <meta charset="utf-8">
    <meta name="description" content="Place your description here">
    <meta name="keywords" content="put, your, keyword, here">
    <meta name="author" content="Templates.com - website templates provider">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
    <script type="text/javascript" src="/TSRH/js/head.min.js"></script>

         <!-- Help files -->

            <link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>

        <script type="text/javascript" src="js/maxheight.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <%--Date picker script files--%>
        <link rel="stylesheet" href="themes/forest.css" />
        <link rel="stylesheet" href="themes/layouts/small.css" />
        <link href="DatePicker/kendo.common.min.css" rel="stylesheet">
        <link href="DatePicker/kendo.blueopal.min.css" rel="stylesheet">
        <script src="DatePicker/jquery.min.js"></script>
        <script src="DatePicker/kendo.web.min.js"></script>

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
        <script type="text/javascript">

            function upgradepicker() {
                var date= new Date();
                $("#DOB").kendoDatePicker();
            }
        </script>
        <%--<script>
           function validateForm()
           {

               var x=document.forms["selectpatientform"]["patient"].value;

               if (x=="-1")
                   {

                   document.getElementById('msg').color = "red";
                   document.getElementById('msg').innerHTML = '&nbsp;&nbsp;&nbsp;Please Select a Patient !';
                   return false;
                   }
           }

       </script>--%>

    <!--[if lt IE 7]>
        <link rel="stylesheet" href="css/ie/ie6.css" type="text/css" media="screen">
        <script type="text/javascript" src="js/ie_png.js"></script>
        <script type="text/javascript">
            ie_png.fix('.png, #slogan, header nav ul li a, .icon img, .link1, .link1 span');
        </script>
    <![endif]-
 ->
    <!--[if lt IE 9]>
        <script type="text/javascript" src="js/html5.js"></script>
    <![endif]-->
    </head>
         <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
    %>

    <body id="page1" onLoad="new ElementMaxHeight(); upgradepicker()">
        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/phoneeditselector.html' })" class="first">help</a>

      <div class="wrap">
        <!-- header -->
        <%@ include file="headers.jsp" %>
         <section id="content">
                <div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
                    <div class="inside">
                        <div class="wrapper indent">
                               <div id="content_main">
                            <article class="col-1">
<div class="box" style="width:500px;background-color: #F0F0F0;">
     <form action="PatientPhoneList.jsp" method="post">
        <% String patient = "";%>
        <table align="center" border='0' style="border: 0;border-color: #FFFFFF">
            <tr style="text-align: left;vertical-align: central">
                <td style="border: 0;border-color: #FFFFFF">
                    <h3>Patient ID Number</h3>
                </td>
                <td style="border: 0;border-color: #FFFFFF">
                    <p>
                        <input name="patient" class="textbox" type="text" value="<%=patient%>" size="20">
                    </p>
                </td>
            </tr>
            <tr>
                <td style="border: 0px none;">
                    <h3>Patient Name:(LastName,FirstName)</h3>
                </td>
                <td style="border: 0px none;">
                    <input type="text" class="textbox" name="patientName"/>
                </td>
            </tr>
            <tr>
                <td style="border: 0px none;">
                    <h3>Date of Birth:</h3>
                </td>
                <td style="border: 0px none;">
                       <input type="text" readonly id="DOB" name ="DOB" value="" style="width:165px;height: 19px;padding-top: 1px" />
                </td>
            </tr>
        </table>
        <input type="submit" class="blue button" value="Submit" />
        <input type="reset" class="blue button" value="Reset"  />

    </form>
</div>
                            </article>
                    
    </div>
                    </div></div></div>
            </section>
        </div>
    <!-- footer -->
    <jsp:include page="footer.jsp" />
    <script type="text/javascript">Cufon.now();</script>
        <script src="js/jquery.pageslide.min.js"></script>
    </body>
</html>