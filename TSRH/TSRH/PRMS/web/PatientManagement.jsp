<%--
    Document   : PatientManagement
    Edited on  : April 11, 2013
    Edited by  : Rakesh
--%>

<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>
<%
ILogger logger = Log4JLogger.GetLoggerObject();
logger.LogMessage(session.getAttribute("user").toString(), "PatinetManagement.jsp", 
                        "User clicked patient management");
%>
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpPatientmag.html' })" class="first">help</a>
<div class="box" style="width:440px;background-color: #F0F0F0;" align="center">
    <h2>Patient Management Operations</h2>

    <table>
        <tr>
            <td>
                <form action="AddNewPatient" method="post">
                   <input type="submit" class="blue button" align="center" style="width:200px" value="Create Patient Record" />
                </form>
            </td>
        </tr>
        <tr>
            <td>
                <form action="PatientSearch" method="post">
                    <input type="submit" class="blue button" align="center" style="width:200px" value="Retrieve Patient Record" />
                </form>
            </td>
        </tr>
    </table>
</div>
