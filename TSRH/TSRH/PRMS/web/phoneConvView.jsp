<!DOCTYPE html>

<%@page import="edu.uta.tsrh.db.*"
        import="edu.uta.tsrh.model.PhoneConvRecord"
        import="java.util.ArrayList"
        %> 

<%    
            MySQLDBServices dbservices = new MySQLDBServices();
            PhoneConvRecord pcr = dbservices.getPhoneConversation(Integer.parseInt(request.getParameter("same")));                                             
             
            String optype = request.getParameter("View");
            int pcid = pcr.getPCID();
            String pid = pcr.getPID();
            
            String fName = pcr.getFirstName();
            String lName = pcr.getLastName();
            String dob = pcr.getDOB();
            String caller = pcr.getWhoCalled();
            String subj = pcr.getSubject();
            String body = pcr.getBody();
            String created = pcr.getTimeMade();
            String lastUpdate = pcr.getLastUpdated();
            
            pcr = null;         
            

%>
<html lang="en">
    <head>
	<title>TSRHC - Phone Management</title>
	<meta charset="utf-8">
	<meta name="description" content="Place your description here">
	<meta name="keywords" content="put, your, keyword, here">
	<meta name="author" content="Templates.com - website templates provider">
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/tableCSS.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/bkp/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/bkp/style.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/buttonCSS.css" type="text/css" media="all">
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
			<div class="wrapper" >
			    <article class="col-3" >
                                <% 
                                        if(optype.equalsIgnoreCase("View Selected"))
                                            {
                                %>
                                
                                <h2>View Conversation Record</h2>	
                               
                                <form name="newconversationform" method="post" action="phone.jsp" >
				    <table class="bordered" style="border-style: groove">
					
                                        <tr>			
					    <td><label for="fName"><h3>Patient First Name:</h3></label></td>                                            
					    <td style="max-width: 150px"><%=fName%></td>
					</tr>
                                        <tr>			
					    <td><label for="lName"><h3>Patient Last Name:</h3></label></td>                                            
					    <td style="max-width: 150px"><%=lName%></td>
					</tr>
                                        <tr>
					    <td><label for="DOB"><h3>Date of Birth:</h3></label></td>
					    <td  style="max-width: 150px"><%=dob%></td>
					</tr>
                                        <tr>			
					    <td><label for="caller"><h3>Caller:</h3></label></td>
					    <td  style="max-width: 150px"><%=caller%></td>
					</tr>
                                        <tr>
					    <td><label for="ph_subject"><h3>Subject:</h3></label></td>
					    <td  style="max-width: 150px"><%=subj%></td>
					</tr>    
                                        <tr>
					    <td><label for="ph_body"><h3>Body:</h3></label></td>
                                            <td> <%=body%></td>
					</tr>
					<tr>
					    <td><h3>Created:</h3></td>
					    <td style="max-width: 150px"><%=created%></td>
					</tr>
					
				    </table>		                                   
                                        <br/>

				    <input type="submit" name ="edit" class="blue button1" value="Back" />
                                </form>
                                                                               
                                        
                                <% 
                                     }
                                        
                                if(optype.equalsIgnoreCase("Edit Selected"))        
                                        
                                     {   
                                        
                                %>        
				<h2>Edit Conversation Record</h2>	
                               
                                <form name="newconversationform" method="post" action="phoneEditConfirmed.jsp?nVal=<%=pcid%>" >
    
                                    
				    <table class="bordered">
					
					<tr>			
					    <td><label for="fName"><h3>Patient First Name:</h3></label></td>                                            
					    <td><%=fName%></td>
					</tr>
                                        
                                        <tr>			
					    <td><label for="lName"><h3>Patient Last Name:</h3></label></td>                                            
					    <td><%=lName%></td>
					</tr>
                                        
                                        <tr>
					    <td><label for="DOB"><h3>Date of Birth:</h3></label></td>
					    <td><%=dob%></td>
					</tr>
                                                                                
                                        <tr>			
					    <td><label for="caller"><h3>Caller:</h3></label></td>
					    <td><input type="text" class ="textbox" name="caller" size ="40" value ="<%=caller%>"/></td>
					</tr>
                                               
                                        <tr>
					    <td><label for="ph_subject"><h3>Subject:</h3></label></td>
					    <td><input type="text"  class ="textbox" name="ph_subject"  size ="40" value ="<%=subj%>"/></td>
					</tr>    
                                        
                                        <tr>
					    <td><label for="ph_body"><h3>Body:</h3></label></td>
                                            <td><textarea type="text" class ="textbox" cols="30" rows="6" style="height:120px;width:270px;resize:none" name="ph_body"  cols ="37" rows ="10" /><%=body%></textarea></td>
					</tr>
					
                                        <tr>
					    <td><h3>Created:</h3></td>
					    <td><%=created%></td>
					</tr>
				    </table>		                                   
                                        <br>
				    <input type="submit" name ="edit" class="blue button1" value="Submit Changes" />
                                    <input type="submit" name ="delete" class="blue button1" value="Delete Note"  />
                                </form>  
                                <%
                                }
            
                                %>    
                                                      
                                </article>
			</div>
			
		    </div>
		</div>
	    </section>
	</div>
                                <br>
                                        <br>
                                        <br>
<br>
                                        <br>
                                        <br><br>
                                        <br>
                                        <br><br>
                                        <br>
                                        <br><br>
                                        <br>
                                        <br> 
	<!-- footer -->
	<%@ include file="footers.jsp" %>
        
	<script type="text/javascript">Cufon.now();</script>
    </body>
</html>
