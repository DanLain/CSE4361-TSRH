package edu.uta.tsrh.filetracking.pendingdates;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;

public class PendingDatesDeleteController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = 1938577011549789428L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {

        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/pendingdates/delete.org"))
        {

            int pendingDateID = Integer.parseInt(request.getParameter("pendingId"));

            int flag = dbServices.deletePendingDate(pendingDateID);
            if (flag == 1)
            {
                request.setAttribute("fileId", request.getParameter("fileId"));
                url = "/deletedatesuccessful.jsp";
            }
            else
            {
                url = "/CommonPages/failure.jsp";
            }
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }

}
