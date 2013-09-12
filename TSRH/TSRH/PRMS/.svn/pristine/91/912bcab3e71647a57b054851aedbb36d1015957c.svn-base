<%-- 
    Document   : AlertManagement
    Created on : Mar 19, 2013, 5:38:09 PM
    Author     : Sravan
--%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="X-UA-Compatible" content="IE=8" />

<%
  session.setAttribute("selectedLink","Alert Management"); 
%>
<html lang="en">
    <head>
	<title>Alert Management</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="description" content="Place your description here">
	<meta name="keywords" content="put, your, keyword, here">
	<meta name="author" content="Templates.com - website templates provider">
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/help.css" type="text/css" media="all">
        <script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>
        <script type="text/javascript" src="js/jquery.pageslide.min.js"></script>
           
	<script type="text/javascript" src="/TSRH/js/head.min.js"></script>
	
	<script type="text/javascript">
	    head.js("/TSRH/js/maxheight.js",
		    "/TSRH/js/jquery-1.4.2.min.js",
		    "/TSRH/js/cufon-yui.js",
		    "/TSRH/js/cufon-replace.js",
		    "/TSRH/js/Myriad_Pro_400.font.js",
		    "/TSRH/js/script.js",
		    "/TSRH/js/cal.js",
		    
		    function() {
			$('input.three').simpleDatepicker({ startdate: '01/01/1800', enddate: '01/01/2100' });
		    });
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
    </head>
    <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
    %>
    <body id="page1" onLoad="new ElementMaxHeight();">
        <a href="javascript:$.pageslide({ direction: 'right', href: 'help/alertManagement.html' })" class="first">help</a>
	<div class="wrap">

	    <!-- header -->
            <%@ include file="headers.jsp" %>
            
	    <!-- content -->
	    <section id="content">
		<div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
		    <div class="inside">
			<div class="wrapper indent">
                            <div class="box"     style="height:200px; width:350px;background-color: #F0F0F0;" align="center">
			        <table>
                                    <h3>Please select an option :</h3>
                                    <tr>
                                        <td>
                                            <form action="notification.jsp" method="post">
                                                <input type="submit" class="blue button" align="center" style="width:310px" value="Create a new alert" />
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <form action="AlertMessages.jsp" method="post">
                                                <input type="submit" class="blue button" align="center" style="width:310px" value="Alert Messages" />
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <form action="AlertList.jsp" method="post">
                                                <input type="submit" class="blue button" align="center" style="width:310px" value="Alerts Created" />
                                            </form>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <form action="VacationManagement.jsp" method="post">
                                                <input type="submit" class="blue button" align="center" style="width:310px" value="Vacation Management" />
                                            </form>
                                        </td>
                                    </tr>
                                </table>
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