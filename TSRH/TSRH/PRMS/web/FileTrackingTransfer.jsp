<%--
Modified by : Rakesh
Modified on : Mar 20,2013 , 6:40:30PM
--%>

<%@page import="edu.uta.tsrh.model.SearchResult"%>
<%@page import="java.util.ArrayList"%>
<%@page import="edu.uta.tsrh.model.FileDetail"%>
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>
<%
ILogger logger = Log4JLogger.GetLoggerObject();
     logger.LogMessage(session.getAttribute("user").toString(), "FileTrackingTransfer.jsp", 
                        "Trying to transfer file");%>
<script>
function numbersonly(myfield, e, dec)
{
var key;
var keychar;

if (window.event)
   key = window.event.keyCode;
else if (e)
   key = e.which;
else
   return true;
keychar = String.fromCharCode(key);

if ((key==null) || (key==0) || (key==8) || 
    (key==9) || (key==13) || (key==27) )
   return true;

if (key > 64 && key < 91)
   return true;

if (key > 97 && key < 123)
   return true;

else if ((("0123456789").indexOf(keychar) > -1))
   return true;

else if (dec && (keychar == "."))
   {
   myfield.form.elements[dec].focus();
   return false;
   }
else
   return false;
}
</script>

<a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpTransfer.html' })" class="first">help</a
<div>
<h2>Files Available for Transfer</h2>
</div>
    <form name="filterResults" onsubmit="return validateSearchForm()" action="SearchResultTransfer" method="post">
        <table style="border: 1;">
            <tr>
                <td width="310" style="border: 0px none;">
                    <h3>Patient ID:</h3> 
                </td>
                <td style="border: 0px none;">
                    <h3 style="position: absolute;left: 480px;">TSRH</h3><input type="text" onKeyPress="return numbersonly(this, event)" class="textbox" name="fileId" id="fileId"  maxlength="10"/>
                </td>
            </tr>
            <tr>			
                <td style="border: 0px none;">
                    <h3>Patient Name:(LastName,FirstName)</h3>
                </td>
                <td style="border: 0px none;">
                    <input type="text" class="textbox" id="patientName" name="patientName"/>
                </td>
            </tr>
            <tr>			
                <td>
                    <input type="hidden" value="OUT" name="filecheckedoutorin"/>
                </td>
            </tr>
            <tr>
                <td style="border: 0px none;">
                    <h3>Date of Birth:</h3> 
                </td>
                <td style="border: 0px none;">
                    <div id="example" class="k-content">
                        <input id="DOB" readonly name ="DOB" id="DOB" value="" style="width:165px;" />
                    </div>
                </td>
            </tr>
                        <tr>			
                <td id ="error" style="border: 0px none;text-align: center" colspan="2">
                    <br>
                    <h4><span id="errorspanSearch" style="color:#FF0000;"></span></h4>
                </td>
            </tr>

         <tr>
            <td>
        <div align="center">
        <input type="reset" class="blue button" value="Reset"  />       
        <input type="submit" class="blue button" value="Search Files" />
        </div>
            </td>
         </tr>
      </table>  
    </form>
<%
    ArrayList<SearchResult> searchResult = (ArrayList<SearchResult>) request.getAttribute("searchResult");
    String url;
    String idString = null;
    String patientName = null;
    int number=searchResult.size();
    if(number!= 0){
%>
<table class="bordered">
    <thead>
        <tr>
            <th>File ID</th>
            <th>Patient Name</th>
            <th>Location</th>
        </tr>
    </thead>
    <tbody>
        <%
            for (int i = 0; i < searchResult.size(); i++) {
                url = "FileTrackingTransferResult?fileID=";
                SearchResult searchResultElement = (SearchResult) searchResult.get(i);
                idString = searchResultElement.getFileID();
                url = url + idString;
                patientName = searchResultElement.getPatientLastName() + "," + searchResultElement.getPatientFirstName();
        %>
        <tr>
            <td>
                <h3 class="active">
                    <%=searchResultElement.getFileID()%><br />
                </h3>
            </td>
            <td class="patname">
                <a href="<%=url%>"><%=patientName%></a>
            </td>
            <td class="location">
                <%=searchResultElement.getLocation()%>
            </td>
        </tr>
        <%}%>
    </tbody>
</table>
<%
            }
            else {
                out.println("<h3>Enter fields above to find Patient Files.<br> Current inputs yielding no records</h3>");
            }
%>    
    
<script>
function validateSearchForm(){
        var errorSpan = document.getElementById("errorspanSearch");
        errorSpan.innerHTML="";
        var errorString = "";
        
        var employeeNameError=document.forms["filterResults"]["fileId"];
        var patientNameError=document.forms["filterResults"]["patientName"];
        var dobError=document.forms["filterResults"]["DOB"];
      
        if(employeeNameError.value == "" && patientNameError.value == "" && dobError.value == "")
        {
            errorString +=" ";
        }
                
        if(errorString == "") {
            return true;
        }        
        else {
            errorSpan.innerHTML = "Enter at least one criteria to Search";
            return false;
        }
    }        
</script>
    