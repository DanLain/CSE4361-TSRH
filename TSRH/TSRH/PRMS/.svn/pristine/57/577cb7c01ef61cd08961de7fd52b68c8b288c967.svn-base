<%-- 
    Document   : PatientProfile
    Created on : Apr 1, 2012, 12:41:45 PM
    Author     : David
    Modified by: Rakesh
    Modified on: Mar 18,2012, 1:00:30 PM
--%>

<%@page import="edu.uta.tsrh.patient.misc.Address"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientPhoneCall"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientNote"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientRecord"%>
<!DOCTYPE html>
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>
<%@page import="java.sql.*"%> 
<%@page import="model.PatientInfo" %>

<%
    String patientId = request.getParameter("patient");
    PatientRecord pRecord = RecordController.getPatientRecord(patientId);
     String[] add = pRecord.getAddress().split("!");
     //Address addr = new Address(add[0],add[1],add[2],add[3],add[4],add[5]);
     String url = "No attachement";
     String name="No attachement";
     if(!pRecord.getpdfURL().equals("null"))
     {
       url = pRecord.getpdfURL(); 
    name="click here to view the attached file";             
     }
     ILogger logger = Log4JLogger.GetLoggerObject();
     logger.LogMessage(session.getAttribute("user").toString(), "PatientProfile.jsp",
                        "Displaying the patient records");
%>
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpPatientInformation.html' })" class="first">help</a>
<div class="mainPanel">   
    <div class="panel" style="height:500px">
        <h2>Patient Information</h2>
        <img width="150" height="150" src=<%= pRecord.getURL()%>>
        <ul class="infoPanel">            
            <li><div class='name'>First Name:</div> <div><%= pRecord.getFirstName()%></div></li>
            <li><div class='name'>Last Name:</div> <div class='value'><%= pRecord.getLastName()%></div></li>
            <li><div class='name'>Patient ID:</div> <div class='value'><%= pRecord.getId()%></div></li>
            <li><div class='name'>Date of Birth:</div> <div class='value'><%= new SimpleDateFormat("EEE, MM/d/yyyy 'at' kk:mm zzzz").format(pRecord.getDOB())%></div></li>
            <li><div class='name'>Contact Phone:</div> <div class='value'><%= pRecord.getContactPhone()%></div></li>
            <li><div class='name'>Address:</div> <div class='value'><%= add[0]%></br><span style="position:absolute;left:432px"><%= add[1]%></span></br><span style="position:absolute;left:432px"><%= add[2]%></span></br><span style="position:absolute;left:432px"><%= add[3]%></span></br><span style="position:absolute;left:432px"><%= add[4]%> <%= add[5]%></span></div></li>
            <li><div class="name">Attachedfile:</div> <div class='value'><a href=<%=url%> target="_blank"><%=name%></a></div></li>
        </ul>
    </div>

    <div class="panel phonePanel">
        <h2>Phone Calls</h2>
        <ul>
            <%
                ArrayList<PatientPhoneCall> calls = pRecord.getPhoneCalls();
                for (int i = 0; i < calls.size(); i++) {
            %>
            <li>

                <ul class="infoPanel">
                    <li><h3><%= calls.get(i).getTitle()%></h3></li>
                    <li><strong><%= new SimpleDateFormat("EEE, MM/d/yyyy 'at' kk:mm zzzz").format(calls.get(i).getDate())%></strong></li>
                    <li><div class="name">Caller:</div> <div class="value"><%= calls.get(i).getCaller()%></div> </li>
                    <li><div class="name">Source Number:</div><div class="value"> <%= calls.get(i).getSourceNumber()%></div></li>
                    <li><p><%= calls.get(i).getContent()%></p></li>
                </ul>
            </li>
            <%}%>

        </ul>
        <form method="GET" action="/TSRH/phoneadd.jsp">
            <input type='hidden' name="pId" value='<%= pRecord.getId()%>' />
            
            <input type='submit' class='linkButton blue button' value="Add Phone Call" />
            <input type="hidden" name='page' value="AddPhoneCall" />

        </form>
    </div>
</div>

<div class="panel notesPanel" style="height: 460px;overflow: auto">
    
    <form method="GET" action='/TSRH/'>
        <input type='hidden' name="patient" value='<%= pRecord.getId()%>' />
        <input type='submit' class='linkButton blue button' value="Add Note" />
        <input type="hidden" name='page' value="AddNote" />

    </form>
    <h2>Notes</h2>
    <ul>
        <%
            ArrayList<PatientNote> notes = pRecord.getNotes();
            for (int i = 0; i < notes.size(); i++) {
                out.println("<li>");
                out.println("<h3>" + new SimpleDateFormat("MM/d/yyyy kk:mm").format(notes.get(i).getDate()) + "</h3>");
                out.println("<a href='/TSRH/?page=ViewNote&id=" + notes.get(i).getId() + "&patient=" + pRecord.getId() + "'>" + notes.get(i).getTitle() + "</a>");
                out.println("<p>" + notes.get(i).getContent() + "</p></li>");
            }
        %>
    </ul>
</div>
