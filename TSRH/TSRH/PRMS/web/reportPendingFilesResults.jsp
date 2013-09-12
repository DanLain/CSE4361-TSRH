<%@page import="edu.uta.tsrh.model.PendingFiles"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Script-Type" content="text/javascript" />
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Pending Files Reports</title>
        <!--Cascading Stylesheets-->
        <link rel="stylesheet" href="/TSRH/css/reset.css" type="text/css" media="all"/>
        <link rel="stylesheet" href="/TSRH/css/layout.css" type="text/css" media="all"/>
        <link rel="stylesheet" href="/TSRH/css/style.css" type="text/css" media="all"/>
        <link href="/TSRH/css/calendar.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/basic.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/tableCSS.css" type="text/css" media="all">
        <link href="/TSRH/css/calendar.css" rel="stylesheet" type="text/css" />

        <!-- Javascripts -->
        <script type="text/javascript" src="/TSRH/js/maxheight.js"></script>
        <script type="text/javascript" src="/TSRH/js/jquery-1.4.2.min.js" ></script>
        <script type="text/javascript" src="/TSRH/js/cufon-yui.js"></script>
        <script type="text/javascript" src="/TSRH/js/cufon-replace.js"></script>
        <script type="text/javascript" src="/TSRH/js/Myriad_Pro_400.font.js"></script>
        <script type="text/javascript" src="/TSRH/js/script.js"></script>
        <script type="text/javascript" src="/TSRH/js/jquery-1.js"></script>
        <script type="text/javascript" src="/TSRH/js/jquery.js"></script>
        <script type="text/javascript" src="/TSRH/js/cal.js"></script>



        <script type="text/javascript">
            window.printItn = function() {

                var printContent = document.getElementById('tbltxt');
                    
                var windowUrl = 'hello';
                var uniqueName = new Date();
                var windowName = 'Print' + uniqueName.getTime();

                //  you should add all css refrence for your html. something like.

                var WinPrint= window.open(windowUrl,windowName,'left=300,top=300,right=500,bottom=500,width=1000,height=500');
                WinPrint.document.write('<'+'html'+'><head><link href="cssreference" rel="stylesheet" type="text/css" /></head><'+'body style="background:none !important"'+'>');
                 WinPrint.document.write('<'+'h1 align="center"'+'>Pending Files<'+'/h1'+'>');

                 WinPrint.document.write(printContent.innerHTML);
                    
                WinPrint.document.write('<'+'/body'+'><'+'/html'+'>');
                WinPrint.document.close();
                WinPrint.focus();
                WinPrint.print();
                WinPrint.close();
            }
        </script>

    </head>
    <body id="page1" onLoad="new ElementMaxHeight();">
        <%
            Component component1 = new Component();
            //check if a user has logged in. If not redirect to home page
            String currentUser = (String) session.getAttribute("user");
            if (currentUser == null) {
                String redirectURL = "index.jsp";
                response.sendRedirect(redirectURL);
            }
                     else if(component1.isResourceread(currentUser,"Reports")== false && component1.isResourcewrite(currentUser,"Reports")== false  )
            {                                           
                String redirectURL = "index.jsp";
                response.sendRedirect(redirectURL);              
            }
        %>




        <div class="wrap">
        </header>
        <%@ include file="headers.jsp" %>
        <!-- content -->
        <section id="content">
            <div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
                <div class="inside">
                    <div class="wrapper indent">
                        <article class="col-1">
                            <%
                                ArrayList<PendingFiles> pendingFileList = (ArrayList<PendingFiles>) request.getAttribute("pendingFileList");
                                String url;
                                String id ="";
                                String idString = null;
                                String patientName = null;
                                // System.out.println("---------------------------------------------"+pendingFileList.size());
                                if (pendingFileList != null && pendingFileList.size() > 0) {
                            %>


                            <div>
                                <table border="0" align="right" length="300">
                                    <tr><td><input type='button' class ='blue button' value='Print' onclick='printItn()'/></td></tr>
                                </table>
                            </div>
                            <div id="tbltxt">
                                <h2 align="center">Pending Files</h2>

                                <table class="bordered" align ="center" border="1"  width ="900" style ="table-layout:fixed; border-collapse: collapse; text-align: center" >
                                    <tr>
                                        <th class="fid">File ID</th>
                                        <th class="pname">Patient Name</th>
                                        <th class="pedate">Date</th>
                                        <th class="fstate">File Status</th>
                                        <th class="location">Location</th>
                                        <th class="reason">Reason</th>
                                        <th class="staffname">Staff Name</th>
                                    </tr>
                                    <%
                                        for (int i = 0; i < pendingFileList.size(); i++) {
                                            url = "/TSRH/reportgeneration/testresults.org?fileID=";
                                            PendingFiles pendingFiles = (PendingFiles) pendingFileList.get(i);
                                           id = pendingFiles.getFileId();
                                          //  idString = Integer.toString(id);
                                            url = url + idString;
                                            patientName = pendingFiles.getPatientFirstName() + " " + pendingFiles.getPatientLastName();
                                    %>
                                    <tr>
                                        <td style ="word-wrap:break-word;"class="fid"><%= pendingFiles.getFileId()%></td>
                                        <td style ="word-wrap:break-word;"class="pname"><%=patientName%></td>
                                        <td style ="word-wrap:break-word;"class="pedate"><%=pendingFiles.getPendingDate()%></td>
                                        <td style ="word-wrap:break-word;"class="fstate"><%=pendingFiles.getFileState()%></td>
                                        <td style ="word-wrap:break-word;"class="location"><%=pendingFiles.getPendingLoaction()%></td>
                                        <td style ="word-wrap:break-word;" class="reason"><%= pendingFiles.getReason()%></td>
                                        <td style ="word-wrap:break-word;"class="staffname"><%=pendingFiles.getEmployeeName()%></td>
                                    </tr>
                                    <%
                                            }
                                        } else {
                                            out.println("<h3>No Records have been found using your search criteria </h3>");
                                        }
                                    %>
                                </table>

                            </div>
                            <br><center><a href="ReportSelection.jsp" class=button1><h6>Back</h6></a></center></br>
                        </article>
                        <ul class="banners col-2">
                            <p>&nbsp;</p>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- footer -->
    <%@ include file="footers.jsp" %>

    <script type="text/javascript">Cufon.now();</script>
</body>
</html>
