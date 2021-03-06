<%-- 
    Document   : PatientProfile
    Created on : Apr 1, 2012, 12:41:45 PM
    Author     : David
--%>

<%@page import="edu.uta.tsrh.notes.controllers.NoteController"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientRecord"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientNote"%>
<%
    String patientId = request.getParameter("patient");
    String patientName = request.getParameter("patientName");
    String DOB = request.getParameter("DOB");
    PatientRecord pRecord = RecordController.getPatientRecord(patientId);

    int noteId = Integer.parseInt(request.getParameter("id"));
    PatientNote note = NoteController.getPatientNote(noteId);
%>
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/editNote.html' })" class="first">help</a>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<script>
    function validateForm() {
        var subject = document.getElementById("subject");
        var content = document.getElementById("note");
        var errorSpan = document.getElementById("errorspan");
        var errorString = "";
        
        if (subject.value ==null || subject.value == "")
        {
            errorString+="Subject, ";
        }
        
        if (content.value ==null || content.value == "")
        {
            errorString+="Content, ";
        }
        if(errorString == "") {
            
            return true;
        }        
        else {
            errorSpan.innerHTML = "Please enter " + errorString.substring(0, errorString.length - 2);
            return false;
            
        }
    }
</script>
<div class="mainPanel">   
    <div class="panel">

        <form method="post" action="EditNote"  onsubmit="return validateForm()">
            <h2>Edit Note for <%= pRecord.getFirstName()%> <%= pRecord.getLastName()%>
                <input type='submit' class="blue button" value="Save" />
            </h2>
            <ul class="infoPanel">
                <li>
                    <div class='name'>Date/Time:</div> 
                    <div class='value'><%= note.getDate()%></div>
                </li>
                <li>
                    <div class='name'>Source:</div> 
                    <div class='value'><%= note.getSource()%></div>
                </li>
                <li>
                    <div class='name'>Subject/Title:</div> 
                    <div class='value'><input value='<%= note.getTitle().replaceAll("[^\\']'", "\\'")%>' type='text' name='title' id ="subject" class="textbox"/></div>
                </li>
                <li>
                    <div class='name'>Content of Note:</div> 
                    <div class='value'><textarea name='content' class='textarea' id="note"><%= note.getContent().replaceAll("<", "&lt;")%></textarea></div>
                </li>
                <li>
                    <input type="hidden" name='patient' value="<%= patientId%>" />
                    <input type="hidden" name='id' value="<%= noteId%>" />
                </li>
            </ul>
            <h4><span id="errorspan" style="color:#FF0000;"></span></h4>
        </form>
    </div>
</div>
