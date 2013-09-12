<%-- 
    Document   : PatientSearch
    Modified   : Rakesh
    Modified on: Feb 15, 2013, 8:01:20 AM
--%>

<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>

<%ILogger logger = Log4JLogger.GetLoggerObject();
     logger.LogMessage(session.getAttribute("user").toString(), "PatientSearch.jsp",
                        "searching for the patient record");%>
<script>
    function validateform()
    {
        var errorSpan = document.getElementById("errorspanSearch");
        errorSpan.innerHTML="";
        var res = true;
        var patientId = document.forms["patientsearch"]["patientId"];
        var patientName = document.forms["patientsearch"]["patientName"];
        var dob = document.forms["patientsearch"]["DOB"];
        
        if((patientId.value==null || patientId.value=="" || patientId.value.length!=6) && (patientName.value=="" || patientName.value==null) && (dob.value==null || dob.value==""))
            {
                if(patientId.value.length!=6&&patientId.value.length>0)
                    errorSpan.innerHTML="Enter 6 digit TSRH ID";
                else
                  errorSpan.innerHTML = "Enter at least one criteria to Search";
                res=false;
            }
            return res;
    }
</script>
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpPatientsearch.html' })" class="first">help</a>
<div class="box" style="width:500px;background-color: #F0F0F0;">
    <form name="patientsearch" action="PatientList" method="post" onsubmit="return validateform()">
        <% String patient = "";%>
        <table align="center" border='0' style="border: 0;border-color: #FFFFFF">
            <tr style="text-align: left;vertical-align: central">
                <td style="border: 0;border-color: #FFFFFF">
                    <h3>Patient ID Number</h3>
                </td>
                <td style="border: 0;border-color: #FFFFFF">
                    <p>
                       <h3 style="position: absolute;left:268px">TSRH</h3> <input name="patient" id="patientId" class="textbox" type="text" value="" size="20">
                    </p>
                </td>
            </tr>
            <tr>			
                <td style="border: 0px none;">
                    <h3>Patient Name:(LastName,FirstName)</h3>
                </td>
                <td style="border: 0px none;">
                    <input type="text" id ="patientName" class="textbox" name="patientName" value=""/>
                </td>
            </tr>
            <tr>
                <td style="border: 0px none;">
                    <h3>Date of Birth:</h3> 
                </td>
                <td style="border: 0px none;">
                       <input type="text" readonly id="DOB" name ="DOB" value="" style="width:165px;height: 19px;padding-top: 1px" />
                </td>
            </tr>
            <tr>			
                <td id ="error" style="border: 0px none;text-align: center" colspan="2">
                    <br>
                    <h4><span id="errorspanSearch" style="color:#FF0000;"></span></h4>
                </td>
            </tr>
        </table>		
        <input type="submit" class="blue button" value="Submit" />
        <input type="reset" class="blue button" value="Reset"  />       
        
    </form>
</div>
   
