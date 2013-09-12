<%-- 
    Document   : PatientProfile
    Created on : Apr 1, 2012, 12:41:45 PM
    Author     : David
--%>

<%@page import="java.util.HashSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="edu.uta.tsrh.notes.controllers.NoteController"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientRecord"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientNote"%>
<%

    int noteId = Integer.parseInt(request.getParameter("id"));
    String patientId = request.getParameter("patient");
    String patientName = request.getParameter("patientName");
    String DOB = request.getParameter("DOB");
    PatientRecord pRecord = RecordController.getPatientRecord(patientId);
    PatientNote note = NoteController.getPatientNote(noteId);
    String time = new SimpleDateFormat("EEE, MM/d/yyyy 'at' kk:mm zzzz").format(note.getDate());
%>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.Date"%>
<%@page import="model.PatientInfo" %>

<div class="mainPanel">   
    <div class="panel">
        <form method="get" action="?page=EditNote">
            <h2>Note <%= note.getTitle()%> for <%= pRecord.getFirstName()%> <%= pRecord.getLastName()%></h2>
            <% HashSet<Integer> noteSet = (HashSet<Integer>) session.getAttribute("noteID");
                if (noteSet.contains(noteId)) {
                    out.println("<input type=\'submit\' class=\"blue button\" value=\"Edit\" />");
                }
            %>
               

            <ul class="infoPanel">
                <li><div class='name'>Date/Time:</div> <div class='value'><%= time%></div></li>
                <li><div class='name'>Source:</div> <div class='value'><%= note.getSource()%></div></li>
                <li><div class='name'>Content of Note:</div> <div class='value'><%= note.getContent()%></div></li>
                <li><input type="hidden" name='patient' value="<%= patientId%>" /></li>
                <li><input type="hidden" name='id' value="<%= noteId%>" /></li>
                <li><input type="hidden" name='page' value="EditNote" /></li>
                <li></li>
            </ul> 
        </form>
        <form method="get" action="">
            <input type='submit' class="blue button" style="width: 200px" value="<< Back to Patient Record" />
            <input type="hidden" name='patient' value="<%= patientId%>" />
            <input type="hidden" name='page' value="PatientProfile" />
        </form>
    </div>
</div>
