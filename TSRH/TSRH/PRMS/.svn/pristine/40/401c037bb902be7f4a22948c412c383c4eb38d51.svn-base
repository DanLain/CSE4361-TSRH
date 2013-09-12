<%@page import="edu.uta.tsrh.model.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.model.FileDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>
<%
ILogger logger = Log4JLogger.GetLoggerObject();
     logger.LogMessage(session.getAttribute("user").toString(), "FileTrackingTransferResult.jsp", 
                        "transferring the file");
    FileDetail fileDetail = (FileDetail) request.getAttribute("fileDetail");
    String patientName = fileDetail.getPatientFirstName() + "," + fileDetail.getPatientLastName();
    String checkout = "style=\"display:none\"";
    String checkin = "style=\"display:none\"";
    if (fileDetail.getFileState().equals("OUT")) {
        checkin = "style=\"display:normal\"";
    } else {
        checkout = "style=\"display:normal\"";
    }
%>
<div class="mainPanel" onload="checkerpage()">
    <div class="panel">
        <h2>File details:</h2>
        <table>
            <tr>
                <td width="150"><h3>File ID:</h3></td>
                <td><h3><b><%= fileDetail.getFileID()%></b></h3></td>
            </tr>
            <tr>
                <td><h3>Patient Name:</h3></td>
                <td><h3><b><%= patientName%></b></h3></td>
            </tr> 
            <tr>
                <td><h3>Date of Birth:</h3></td>
                <td><h3><b><%=fileDetail.getPatientDateOfBirth()%></b></h3></td>
            </tr>
            <tr>
                <td><h3>Location:</h3></td>
                <td><h3><b><%=fileDetail.getLocation()%></b></h3></td>
            </tr>
            <tr>
                <td><h3>Status:</h3></td>
                <td><h3><b><%=fileDetail.getFileState()%></b></h3></td>
            </tr>
        </table> 
    </div>
    <br>
    <div class="panel" id="checkInDiv" <%=checkin%>>
        <h2>Transfer File Form:</h2>
        <% String fileId = (String) request.getAttribute("fileId");
            ArrayList<Employee> staffList = (ArrayList<Employee>) request.getAttribute("staffList");
        %>
        <form name="transferform" onsubmit="return validateTransferForm()" method="post" action="TransferFile">
            <table>
                <tr>
			<td width="230"><h3>File given to:<span style="color: red">*</span></h3></td>
			<td width= "300">
                        <dl id="sample" class="dropdown">
                            <dt>Select staff</dt>
                            <dd>
                                <ul style="display: none;z-index:2">
                                    <%
                                        String staffName = null;
                                        for (int i = 0; i < staffList.size(); i++) {
                                            staffName = staffList.get(i).getFirstName() + " " + staffList.get(i).getLastName();
                                    %>
                                    <li value="<%= staffList.get(i).getId()%>"><%=staffName%></li>
                                    <%}%>
                                </ul>
                            </dd>
                        </dl>
                        <input name="staffId" value="" id="staffId" type ="hidden"/>
                    </td>
                </tr>
		<tr>
                    <td width="200"><h3>Date:</h3></td>
                    <td>
                        <input type="radio" name="date" onClick="clickTodayCheckOut()" checked/> Now (or) 
                        <input type="radio"  name="date" onClick="clickCheckOut()"/>Specify Date<br/><br/>
                        <div id="DateTimerOut" style="display: none">
                            <input type="text" readonly id="CheckerOut" name ="CheckerOut" value="" style="width:200px;"/>
                        </div>
                        <input id="fileId" name="fileId" type="hidden" value=<%= fileDetail.getFileID()%> />
                    </td>
                </tr>
                <tr>
                    <td class="rdate" width="200"><h3>Return Date Time:</h3></td>
                    <td>
                        <input type="text" readonly  id="CheckerReturn" name ="CheckerReturn" value="" style="width:200px;"/>
                    </td>
                </tr>
                <tr>
                    <td width="200"><h3>Notes:</h3></td> 
                    <td><input name="notes" value="" type="text" size="45" class="textbox"/> </td>
                </tr>
                <tr>
                    <td width="200"><h3>Reason:</h3></td> 
                    <td><input name="reason" type="text" size="45" class="textbox"/> </td>
                </tr>
                <tr>
                    <td width="200"><h3>File location:<span style="color: red">*</span></h3></td>
                    <td>
                        <dl id="locationcombo1" class="dropdown">
                            <dt>Select location</dt>
                            <dd>
                                <ul style="display: none;z-index:2">
                                    <li>Clinic</li>
                                    <li>Research Office</li>
                                    <li>Office</li>
                                    <li>Other</li>
                                </ul>
                            </dd>
                        </dl>
                        <input name="locationLevel1" value="" id="locationLevel1" type="hidden"/>
                    </td>
                </tr>
                <tr>
                    <td width="200"><h3>Specific file location<span style="color: red">*</span></h3></td> 
                    <td>
                        <dl id="locationcombo2" class="dropdown">
                            <dt>Select location</dt>
                            <dd>
                                <ul style="display: none;z-index:2">
                                    <li>CMT</li>
                                    <li>HPE</li>
                                    <li>MC</li>
                                    <li>Neupa</li>
                                    <li>TSNE</li>
                                    <li>BRNNE</li>
                                    <li>SALNE-R</li>
                                    <li>SALNE-D</li>
                                    <li>Catherine</li>
                                </ul>
                            </dd>
                        </dl>
                        <input name="locationLevel2" value="" id="locationLevel2" type="hidden"/>
                    </td>
                </tr>
                <tr>
                    <td width="200"><h3>Specify here(if other)</h3></td>
                    <td><input type="text" name="locationOther" size="45" class="textbox" id="locationOther"/></td>
                </tr>
                <tr>			
                    <td>
                    <span id="errorspanTransfer" style="color:#FF0000;"></span>
                    </td>
                 </tr>
            </table>
            <input type="submit" class="blue button" value="Transfer" />
        </form>
    </div>
</div>
<script>
    
    var locationLists = new Array(15)
    locationLists["empty"] = ["Specific location"];
    locationLists["Clinic"] = ["CMT", "HPE", "MC", "Neupa","TSNE","BRNNE","SALNE-R","SALNE-D"];
    locationLists["Research Office"] = ["Catherine", "Linsley", "Dahlia", "Betsy", "Nancy"];
    locationLists["Office"] = ["N/A"];
    locationLists["Other"]= ["N/A"];

    function locationChange(selectObj) {

        cList = locationLists[selectObj];
        
        // get the locationoption select element via its known id
        var cSelect = document.getElementById("dynamicul");
        
        // remove the current options from the locationoption select
        var liList=cSelect.getElementsByTagName("li");
        
        while (liList.length > 1) {
            liList.pop();
        }
        // create new options
        for (var i=0; i<cList.length; i++) {
            var newLI = document.createElement("li");
            var p = document.createTextNode(cList[i]);
            newLI.appendChild(p);
            cSelect.appendChild(newLI);
        }
    }
    
    function clickCheckIn() {
        document.getElementById("DateTimer").style.display="inline";
    }
    
    function clickCheckOut() {
        document.getElementById("DateTimerOut").style.display="inline";
    }
    
    function clickTodayCheckIn() {
        document.getElementById("DateTimer").style.display="none";
    }
    
    function clickTodayCheckOut() {
        document.getElementById("DateTimerOut").style.display="none";
    }
    
    $("#sample dt").click(function () {
        $("#sample dd ul").toggle();
    });

    $("#sample dd ul li").click(function () {
        var text = $(this).html();
        $("#sample dt").html(text);
        $("#sample dd ul").hide();
        $("#staffId").val($(this).val());
    });
    
    $("#sampleOut dt").click(function () {
        $("#sampleOut dd ul").toggle();
    });

    $("#sampleOut dd ul li").click(function () {
        var text = $(this).html();
        $("#sampleOut dt").html(text);
        $("#sampleOut dd ul").hide();
        $("#staffIdOut").val($(this).val());
    });
                
    $("#locationcombo dt").click(function () {
        $("#locationcombo dd ul").toggle();
    });

    $("#locationcombo dd ul li").click(function () {
        var text = $(this).html();
        $("#locationcombo dt").html(text);
        $("#locationcombo dd ul").hide();
        $("#location").val(text);
    });
    
    $("#locationcombo1 dt").click(function () {
        $("#locationcombo1 dd ul").toggle();
    });

    $("#locationcombo1 dd ul li").click(function () {
        var text = $(this).html();
        $("#locationcombo1 dt").html(text);
        $("#locationcombo1 dd ul").hide();
        $("#locationLevel1").val(text);
    });
    
    $("#locationcombo2 dt").click(function () {
        $("#locationcombo2 dd ul").toggle();
    });

    $("#locationcombo2 dd ul li").click(function () {
        var text = $(this).html();        
        $("#locationcombo2 dt").html(text);
        $("#locationcombo2 dd ul").hide();
        $("#locationLevel2").val(text);
        
    });
 function validateTransferForm(){
        var errorSpan = document.getElementById("errorspanTransfer");
        errorSpan.innerHTML="";
        var errorString = "";
        var datepass=0;
        
        var employeeNameError=document.forms["transferform"]["staffId"];
        var locationLevel1Error=document.forms["transferform"]["locationLevel1"];
        var locationLevel2Error=document.forms["transferform"]["locationLevel2"];

        var CheckerOutError=document.forms["transferform"]["CheckerOut"];
        var CheckerReturnError=document.forms["transferform"]["CheckerReturn"];
        var fromyear=CheckerOutError.value.substring(0,4);
        var frommonth=CheckerOutError.value.substring(5,7);
        var fromday=CheckerOutError.value.substring(8,10);
        var fromhour=CheckerOutError.value.substring(11,13);
        var frommin=CheckerOutError.value.substring(14,17);
        var toyear=CheckerReturnError.value.substring(0,4);
        var tomonth=CheckerReturnError.value.substring(5,7);
        var today=CheckerReturnError.value.substring(8,10);
        var tohour=CheckerReturnError.value.substring(11,13);
        var tomin=CheckerReturnError.value.substring(14,17);
        
       var from= new Date();
        var to=new Date();
        from.setFullYear(fromyear, frommonth-1, fromday);
        from.setHours(fromhour, frommin);
        to.setFullYear(toyear, tomonth-1, today);
        to.setHours(tohour, tomin);
        
        if(from <= to){
            datepass=1;
        }
            
        
        if(employeeNameError.value == "" || locationLevel1Error.value == "" || locationLevel2Error.value == ""  )
        {
            errorString +=" ";
        }
        
        if(errorString == "" && datepass==1) {
            return true;
        }        
        else if(errorString == " "){
            errorSpan.innerHTML = "Select all * fields";
            return false;
        }
        else if(datepass==0){
            errorSpan.innerHTML = "Date greater than Return Date-Time";
            return false;
        }
        else {
            errorSpan.innerHTML = "Form Validation Error";
            return false;
        }
    }
</script>
