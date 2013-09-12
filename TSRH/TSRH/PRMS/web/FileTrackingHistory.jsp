<%--
Modified by : Rakesh
Modified on: Mar 20, 2013, 6:30:33PM
--%>
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>

<%
ILogger logger = Log4JLogger.GetLoggerObject();
     logger.LogMessage(session.getAttribute("user").toString(), "FileTrackingHistory.jsp", 
                        "Getting the history of patient");
%>
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpHistory.html' })" class="first">help</a>
<div class="box" style="width:500px;background-color: #F0F0F0;">
    <h2>History of file</h2>
    <form name="historyform" method="POST" onsubmit="return validateForm()" action="FileHistoryDetails">
        <table>
            <tr>
                <td><h3>File ID<span style="color: red">*</span></h3></td>
                <td>
                    <h3>TSRH</h3><input type="text" id="fileId" name ="fileId" class="textbox" value="" style="width:140px;position:absolute;left:117px;top:52px;"/>
                </td>
            </tr>
            <tr>
                <td><h3>From:<span style="color: red">*</span></h3></td>
                <td>
                    <div id="SDater">
                        <input type="text" readonly id="date1" name ="Sdate" value="" style="width:200px;"/>
                    </div>
                </td>
            </tr>
            <tr>
                <td><h3>To:<span style="color: red">*</span></h3></td>
                <td>
                    <div id="Edater">
                        <input type="text" readonly id="date2" name ="Edate" value="" style="width:200px;"/>
                    </div>
                </td>
            </tr>
        </table>
        <h4><span id="errorspan" style="color:#FF0000;"></span></h4>
        <input type="submit"  value="Display" class="blue button"/>
    </form>
</div>

<script>
    $("#date1").kendoDatePicker({
        format:"yyyy-MM-dd"
    }); 
    $("#date2").kendoDatePicker({
        format:"yyyy-MM-dd"
    });
    
    function validateForm() {
        var fileid = document.getElementById("fileId");
        var sdate = document.getElementById("date1");
        var edate = document.getElementById("date2");
        
        var errorSpan = document.getElementById("errorspan");
        var errorString = "";
        
        if (fileid.value ==null || fileid.value == "")
        {
            errorString+="File ID, ";
        }
        
        if (sdate.value ==null || sdate.value == "")
        {
            errorString+="From Date, ";
        }
        
        if (edate.value ==null || edate.value == "")
        {
            errorString+="To Date, ";
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
