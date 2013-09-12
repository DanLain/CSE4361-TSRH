<%-- 
    Document   : File Tracking
    Edited on  : April 11, 2013
    Edited by  : Rakesh
--%>
<%@page import="edu.uta.tsrh.Logger.ILogger"%>
<%@page import="edu.uta.tsrh.Logger.Log4JLogger"%>

<%ILogger logger = Log4JLogger.GetLoggerObject();
     logger.LogMessage(session.getAttribute("user").toString(), "FileTracking.jsp", 
                        "User changing the status of file");%>
<a href="javascript:$.pageslide({ direction: 'right', href: 'help/helpFileTracking.html' })" class="first">help</a>

<div class="box"     style="width:320px;background-color: #F0F0F0;" align="center">
    <h2>File Tracking Operations</h2>

    <table>
        <tr>
            <td>    
                <form action="FileTrackingCheckIn" method="post">
                   <input type="submit" class="blue button" align="center" style="width:200px" value="File Check In" />
                </form>
            </td>
        </tr>
        <tr>
            <td>
                <form action="FileTrackingCheckOut" method="post">
                    <input type="submit" class="blue button" align="center" style="width:200px" value="File Check Out" />
                </form>
            </td>
        </tr>
        <tr>
            <td>         
                <form action="FileTrackingPendingFiles" method="post">

                    <input type="submit" class="blue button" align="center" style="width:200px" value="Pending Files" />
                </form>
            </td>
        </tr>
        <tr>
            <td>
                <form action="FileTrackingHistory" method="post">
                    <input type="submit" class="blue button" align="center" style="width:200px" value="History" />
                </form>
            </td>
        </tr>
        <tr>
            <td>
                <form action="FileTrackingTransfer" method="post">
                    <input type="submit" class="blue button" align="center" style="width:200px" value="Transfer" />
                </form>
            </td>
        </tr>
    </table>
</div>
