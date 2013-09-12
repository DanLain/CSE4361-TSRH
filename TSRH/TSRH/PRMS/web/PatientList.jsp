
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.notes.controllers.RecordController"%>
<%@page import="edu.uta.tsrh.patient.misc.PatientRecord"%>
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>

<a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpPatientlist.html' })" class="first">help</a>
<table class="bordered">
    <thead>
        <tr>
            <th>Patient ID</th>
            <th>Patient Name</th>
            <th>Date of Birth</th>
        </tr>
    </thead>
    <tbody>
        <%
        ILogger logger = Log4JLogger.GetLoggerObject();
     logger.LogMessage(session.getAttribute("user").toString(), "PatientList.jsp",
                        "Getting the patients list");
            String patientId = request.getParameter("patient");
            String patientName = request.getParameter("patientName");
            String DOB = request.getParameter("DOB");
            
            ArrayList<PatientRecord> pRecordList = RecordController.getPatientRecordList(patientId, patientName, DOB);
            String url;
            for (int i = 0; i < pRecordList.size(); i++) {
                url = "PatientProfile?patient=";
                PatientRecord pRecord = (PatientRecord) pRecordList.get(i);
                url = url + pRecord.getId();
                patientName = pRecord.getFirstName() + " " + pRecord.getLastName();
                
        %>
        <tr>
            <td>
                <h3 class="active">
                    <%=pRecord.getId()%><br />
                </h3>
            </td>
            <td class="patname">
                <a href="<%=url%>"><%=patientName%></a>
            </td>
            <td class="location">
                <%=new SimpleDateFormat("EEE, MM/d/yyyy 'at' kk:mm zzzz").format(pRecord.getDOB())%>
            </td>
        </tr>
        <%}%>
    </tbody>
</table>