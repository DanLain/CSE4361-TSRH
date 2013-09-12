<%@page import="edu.uta.tsrh.model.Employee"%>
<%@page import="edu.uta.tsrh.db.DBServices"%>
<%@page import="edu.uta.tsrh.db.MySQLDBServices"%>
<%@page import="edu.uta.tsrh.model.Transaction"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>
<table class="bordered">
    <tr>
        <th>Date</th>
        <th>Staff Name</th>
        <th>Type</th>
        <th>Location</th>
        <th>Notes</th>
        <th>Reason</th>
        <th>Return Date</th>
    </tr>
<%
ILogger logger = Log4JLogger.GetLoggerObject();
     logger.LogMessage(session.getAttribute("user").toString(), "FileHistoryDetails.jsp", 
                        "Displaying the history of patient");
    ArrayList<Transaction> history = (ArrayList<Transaction>) request.getAttribute("history");
    DBServices dbServices = new MySQLDBServices();
    for (int i = 0; i < history.size(); i++) {
        Transaction historyElement = history.get(i);
        String employeeName = null;
        Employee employee = dbServices.getEmployee(historyElement.getEmployeeID());
        employeeName = employee.getFirstName() + " " + employee.getLastName();
        String returnDate;
        if(historyElement.getReturnDate() == null) {
            returnDate = historyElement.getDate().toString();
        } else {
            returnDate = historyElement.getReturnDate().toString();
        }
%>
<tr>
    <td><%= historyElement.getDate()%></td>
    <td><%= employeeName%></td>
    <td><%= historyElement.getType()%></td>
    <td><%= historyElement.getLocation()%></td>
    <td><%= historyElement.getNotes()%></td>
    <td><%= historyElement.getReason()%></td>
    <td><%= returnDate%></td>
</tr>

<%}%>
</table>
<br>
<form action="FileTracking" method="post">
    <input type="submit" class="blue button" align="center" style="width:150px" value="File Tracking Home" />
</form>