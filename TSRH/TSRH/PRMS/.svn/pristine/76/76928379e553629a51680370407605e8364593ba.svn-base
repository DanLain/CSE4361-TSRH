<%@page import="edu.uta.tsrh.model.PendingFiles"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="edu.uta.tsrh.model.Employee"%>
<%@page import="edu.uta.tsrh.db.DBServices"%>
<%@page import="edu.uta.tsrh.db.MySQLDBServices"%>
<%@page import="edu.uta.tsrh.model.Transaction"%>
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/NameDetails.html' })" class="first">help</a>

<%
ArrayList<PendingFiles> pendingFileList = (ArrayList<PendingFiles>) request.getAttribute("pendingFileList");
        String url;
        String id="";
        String idString = null;
        String patientName = null;
        
        if (pendingFileList != null && pendingFileList.size() > 0) {
%>
  
			
<table class="bordered">
<tr>
<th>File ID</th>
<th>Patient Name</th>
<th>Pending Date</th>
<th>Location</th>
<th>Reason</th>
<th>Staff Name</th>
</tr>
<%
for (int i=0;i<pendingFileList.size();i++)
        {
         //   url="/TSRH/filetracking/todaypendingfilespage.org?fileID=";
             url ="PatientProfile?patient="; 
                     PendingFiles pendingFiles = (PendingFiles) pendingFileList.get(i);
                         
           idString=(String)pendingFiles.getFileId();
            url= url+idString;
            patientName = pendingFiles.getPatientFirstName() + " " + pendingFiles.getPatientLastName();
%>
<tr>
<td class="fid"><%= pendingFiles.getFileId()%></td>
<td class="pname"><a href="<%=url%>"><%=patientName%></a></td>
<td class="pedate"><%=pendingFiles.getPendingDates()%></td>
<td class="location"><%=pendingFiles.getPendingLoaction()%></td>
<td class="reason"><%= pendingFiles.getReason()%></td>
<td class="staffname"><%=pendingFiles.getEmployeeName()%></td>
</tr>
 <%
    }
      } else {
         out.println("<h3>No Records have been found using your search criteria. </h3>");
         }
 %>
</table>
<br>
<form action="/TSRH/FileTracking" method="post">
    <input type="submit" class="blue button" align="center" style="width:150px" value="File Tracking Home" />
</form>
