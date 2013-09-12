<%-- 
    Document   : FileTrackingPendingFiles
    Created on : Nov 27, 2012, 3:15:20 PM
    Author     : sriramlns
    Edited by  : Rakesh
    Edited on  : April 11, 2013
--%>
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>
<%
ILogger logger = Log4JLogger.GetLoggerObject();
     logger.LogMessage(session.getAttribute("user").toString(), "FileTrackingPendingFiles.jsp", 
                        "searching for pending files");
%>
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpPending.html' })" class="first">help</a>
<div class="box" style="width:500px;background-color: #F0F0F0;">
    <h2>Pending files</h2>
    <form name="pendingform" method="POST" onsubmit="return validateForm()" action="todaypendingfiles">
        <table>
          
            <tr>
                <td><h3>From:<span style="color: red">*</span></h3></td>
                <td>
                    <div id="SDater">
                        <input type="text" readonly id="date1" name ="Sdate"  value="" style="width:200px;"/>
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
        
        var sdate = document.getElementById("date1");
        var edate = document.getElementById("date2");
        
        var errorSpan = document.getElementById("errorspan");
        var errorString = "";
      
       
        if(edate.value!=0 && (sdate.value>edate.value))
        {
            errorString+="valid From Date, To Date, ";
        }
    
        if (sdate.value ==null || sdate.value == "")
        {
            errorString+="From Date, ";
        }
        
       if(edate.value ==null || edate.value == "")
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
