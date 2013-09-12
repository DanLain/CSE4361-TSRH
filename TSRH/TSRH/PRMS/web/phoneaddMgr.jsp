
<%@page import="alertsystemdatabase.Alert"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat" import="java.sql.Timestamp" import="java.util.Calendar" import="java.text.SimpleDateFormat"%>



<!DOCTYPE html>
<%-- 
    Document   : phoneaddMgr
    Created on : Mar 31, 2012, 7:05:59 PM
    Author     : Jason Phipps
--%>
<%@page import="edu.uta.tsrh.db.*"%> 


<%
            String first =  request.getParameter( "fName" );
            String last = request.getParameter( "lName" );
            String bday = request.getParameter( "DOB" );
            
             Date patientDateOfBirth = null;
             if (bday != null) {
            if (!bday.isEmpty()) {
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                try {
                    patientDateOfBirth = new Date(dateFormat.parse(bday).getTime());
                } catch (ParseException ex) {
                    Logger.getLogger(RecordController.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                patientDateOfBirth = null;
            }
        }
            String callerName = request.getParameter( "caller" );
            String subject = request.getParameter( "ph_subject" );
            String body =  request.getParameter( "ph_body" );
            
            session.setAttribute("firstName",first);
            session.setAttribute("lastName", last );
            session.setAttribute("birthday", patientDateOfBirth);
            session.setAttribute("whocalled", callerName);            
            session.setAttribute("callSubj",subject);
            session.setAttribute("callBody", body);  
            session.setAttribute("Alertfromphone","False");            
    
            //retrieve PID will manage nulls in the input
            MySQLDBServices dbservices = new MySQLDBServices();
            String pID = dbservices.retrievePID(first, last, patientDateOfBirth);
            
            
            if(pID.equals("")){
                
                
                 response.sendRedirect("phoneadd.jsp");
            }
            
            else{
                String result = dbservices.insertNewPhoneConversation(pID, callerName,subject,body);
                session.setAttribute("PID",pID);
                if(request.getParameter("SetAlertPhone") != null) {
                //out.println("Checkbox 1 was checked.<BR>");
                      session.setAttribute("Alertfromphone","True");  
                    Alert newAlert = new Alert(); 
                    //String doc=newAlert.ReturnUserIdfromPatient(pID);
                   
                    
                   //String[] useriddd=doc;
                   //String[] useriddd = new String[] {doc};
                      String[] useriddd =request.getParameterValues("to");
                    
                    Calendar c = Calendar.getInstance();
//c.setTime(yourdate);
    c.add(Calendar.DATE, 1);
java.util.Date newDate = c.getTime();
                     java.util.Date today = new java.util.Date();
                     //today=today.plusDays(1);
       // System.out.println(new java.sql.Timestamp(today.getTime()));
                     java.sql.Timestamp sqlDate = new java.sql.Timestamp(newDate.getTime());
                     //sqlDate=(Timestamp)currentDate;
                    String title="A new phone Conversation has been recorded for "+first+","+last +";Please check phone recored section to view the Phone Coversation";
            newAlert.setAlert(sqlDate, "Admin",title, "Phone call recorded for your patient",1 , 1, useriddd);
                       }
                response.sendRedirect("phoneaddconfirm.jsp");              
               
            }          
          
            
            
             
%>
