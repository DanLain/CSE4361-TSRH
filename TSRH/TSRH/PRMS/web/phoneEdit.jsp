<!DOCTYPE html>
<html lang="en">
    <head>
	<title>TSRHC - Phone Management - Edit</title>
	<meta charset="utf-8">
	<meta name="description" content="Place your description here">
	<meta name="keywords" content="put, your, keyword, here">
	<meta name="author" content="Templates.com - website templates provider">
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
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
    </head>
     <%
     if(session.getAttribute("user") == null){
         response.sendRedirect("/TSRH/index.jsp");
     }
    %>
    <body id="page1" onLoad="new ElementMaxHeight();">
	<div class="wrap">	    
	    <!-- header -->
	    <%@ include file="headers.jsp" %>
            
	    <!-- content -->
	    <section id="content">
		<div class="container"><div class="ic">More Website Templates at TemplateMonster.com!</div>
		    <div class="inside">
			<div class="wrapper indent">
			    <article class="col-1">
                                
				<h2>Select a patient</h2>				
				<form name="selectpatientform" method="post" action="" >
    
                                    
				    <table>
					
					<tr>			
					    <td><label for="fName"><h3>Patient First Name:</h3></label></td>                                            
                                            <td><%=request.getParameter("patient")%></td>
                                                    
					</tr>
                                        <tr></tr>
                                        <tr>			
					    <td><label for="lName"><h3>Patient Last Name:</h3></label></td>                                            
					    <td>temp</td>
					</tr>
                                        <tr></tr>
                                        <tr>
					    <td><label for="DOB"><h3>Date of Birth:</h3></label></td>
					    <td>temp</td>
					</tr>
                                        <tr></tr>    
                                        <tr>			
					    <td><label for="caller"><h3>Caller:</h3></label></td>
					    <td>temp</td>
					</tr>
                                        <tr></tr>        
                                        <tr>
					    <td><label for="ph_subject"><h3>Subject:</h3></label></td>
					    <td>temp</td>
					</tr>    
                                        <tr></tr>
                                        <tr>
					    <td><label for="ph_body"><h3>Body:</h3></label></td>
                                            <td>temp</td>
					</tr>
                                        
				    </table>		                                   

				    <input type="submit" value="Submit" />

				</form>
			    </article>
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
