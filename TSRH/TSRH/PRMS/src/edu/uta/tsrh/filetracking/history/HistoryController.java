package edu.uta.tsrh.filetracking.history;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Transaction;

public class HistoryController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = -6487023612870606643L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/historyquery.org"))
        {
            int fileID = Integer.parseInt(request.getParameter("fileId"));
            String startDateString = request.getParameter("Sdate");
            String endDateString = request.getParameter("Edate");

            startDateString = startDateString + " 00:00:00";
            endDateString = endDateString + " 00:00:00";

            ArrayList<Transaction> history = dbServices.getFileHistory(fileID, startDateString, endDateString);

            if (history != null)
            {
                request.setAttribute("fileId", request.getParameter("fileId"));
                request.setAttribute("Sdate", startDateString);
                request.setAttribute("Edate", endDateString);
                request.setAttribute("history", history);
                request.setAttribute("fileId", request.getParameter("fileId"));
                url = "/history2.jsp";
            }
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }
}
