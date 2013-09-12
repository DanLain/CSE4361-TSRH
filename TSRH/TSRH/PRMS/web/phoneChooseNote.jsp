
<%@page import="edu.uta.tsrh.model.Patient"%>
<%@page import="javax.swing.text.Document"%>
<jsp:include page="checkpermissions.jsp"/>


<!DOCTYPE html>
<html lang="en">
    <%@page import="edu.uta.tsrh.db.*"
            import="edu.uta.tsrh.model.PhoneConvRecord"
            import="java.util.ArrayList"
            %> 

    <head>
        <title>TSRHC - Select Phone Record</title>
        <meta charset="utf-8">
        <meta name="description" content="Place your description here">
        <meta name="keywords" content="put, your, keyword, here">
        <meta name="author" content="Templates.com - website templates provider">
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/tableCSS.css" type="text/css" media="all">
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
	
        <script type="text/javascript">
            function validateForm()
            {
                    var checked = false, same = document.getElementsByName('same');
                    for (var i = 0, radio; radio = same[i]; i++) 
                    {
                        if (radio.checked) {
                                checked = true;
                                return true;
                                             }
                        
                    }
                    if(checked==false)
                                {
                                alert('Please select a record');
                                return false;
                                }
  
            }
 

 

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
    </head>
    <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
    %>
    <body id="page1" onLoad="new ElementMaxHeight();">
         <a href="javascript:$.pageslide({ direction: 'right', href: 'help/phonechoosenote.html' })" class="first">help</a>
        
        <div class="wrap">	    
            <!-- header -->
            <%@ include file="headers.jsp" %>

            <!-- content -->
            <section id="content">
                <div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
                    <div class="inside">
                        <div class="wrapper indent">
                            <article class="col-1">

                                				
                                <form name="note" method="post" action="/TSRH/phoneConvView.jsp">
                                        <%
                                            MySQLDBServices dbservices = new MySQLDBServices();
                                           System.out.println(request.getParameter("patient"));
                                            ArrayList<PhoneConvRecord> phoneRecords = dbservices.getPatientPhoneConvs(request.getParameter("patient"));
                                         
                                            //String record = "";
                                            if( phoneRecords.isEmpty())
                                              {%>
                                </form>
                                              <h2>No records found  !</h2>
                                    <form name="PhoneChooseNote" action="phoneEditSelector.jsp">
                                        <input type="submit" value="<< Go Back" class="blue button" style="width: 160px"/>
                                    </form>

                                        <%    }
                                        else{                                                
                                        %>
                                        <h2>Select a Note To Modify</h2>       
                                        <table class="bordered"> 
                                        <tr>
                                            <th>Select </th>
                                            <th>Last</th>
                                            <th>First</th>
                                            <th>Caller</th>
                                            <th>Subject</th>
                                            <th>Date Called</th>
                                        </tr>
                                        <%
                                           for (PhoneConvRecord p : phoneRecords) {
                                        %>                
                                               <tr><td><input name="same" type = "radio" value = "<%= p.getPCID()%>"></td>
                                                <td> <%= p.getLastName()%> </td>
                                                <td> <%= p.getFirstName()%> </td>
                                                <td> <%= p.getWhoCalled()%> </td>
                                                <td> <%= p.getSubject()%> </td>
                                                <td> <%= p.getTimeMade()%> </td>
                                               </tr>
                                        <% } %>
                                        <tr><td></td></tr>
                                        
                                    </table>
                                               <input name="View" type="submit" class="blue button"  onclick ="return validateForm();" value="View Selected"/>
                                        <% } %>       
                                </form>                              
                            </article>


                        </div>

                    </div>
                </div>
            </section>
        </div>
        <!-- footer -->
        <%@ include file="footers.jsp" %>
         <script src="js/jquery.pageslide.min.js"></script>
        <script type="text/javascript">Cufon.now();</script>
    </body>
</html>