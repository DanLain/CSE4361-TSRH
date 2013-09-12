
<!DOCTYPE html>
<%-- 
    Document   : phoneaddMgr
    Created on : Mar 31, 2012, 7:05:59 PM
    Author     : Jason Phipps
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="edu.uta.tsrh.db.*"%> 


<%

            String first =  request.getParameter( "fName" );
            String last = request.getParameter( "lName" );
            String bday = request.getParameter( "DOB" );
            String callerName = request.getParameter( "caller" );
            String subject = request.getParameter( "ph_subject" );
            String body =  request.getParameter( "ph_body" );
            
            session.setAttribute("firstName",first);
            session.setAttribute("lastName", last );
            session.setAttribute("birthday", bday);
            session.setAttribute("whocalled", callerName);            
            session.setAttribute("callSubj",subject);
            session.setAttribute("callBody", body);   
    
            //retrieve PID will manage nulls in the input
            MySQLDBServices dbservices = new MySQLDBServices();
            String pID = dbservices.retrievePID(first, last,bday);
            
            
            if(pID.equals(null)){
                
                
                 response.sendRedirect("phoneadd.jsp");
            }
            
            else{
                String result = dbservices.insertNewPhoneConversation(pID, callerName,subject,body);
                session.setAttribute("PID",pID);
                response.sendRedirect("phoneaddconfirm.jsp");              
            }          
          
            
            
             
%>

