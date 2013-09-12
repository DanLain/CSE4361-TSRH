package edu.uta.tsrh.filetracking.pendingdates;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.PendingDate;

public class PendingDatesAddController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = -5329324735889807550L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/pendingdates/addDates.org"))
        {
            int fileID = Integer.parseInt(request.getParameter("fileId"));
            int employeeId = Integer.parseInt(request.getParameter("staffId"));
            String notes = request.getParameter("notes");
            String reason = request.getParameter("reason");
            String locationLevel1 = request.getParameter("locationLevel1");
            String locationLevel2 = request.getParameter("locationLevel2");
            String locationOther = request.getParameter("locationOther");
            String dateString = request.getParameter("date");
            String timeh = request.getParameter("timeh");
            String timem = request.getParameter("timem");
            String time = timeh + ":" + timem;
            String dateStr = dateString + " " + time + ":00";

            System.out.println("date + " + dateStr);
            
            String pendingLocation;

            if (locationLevel1 != null && locationLevel2 != null)
            {
                pendingLocation = locationLevel1 + " - " + locationLevel2;
            }
            else
            {
                pendingLocation = locationOther;
            }

            PendingDate pendingDateDetail = new PendingDate(dateStr, pendingLocation, reason, notes, fileID, employeeId);

            int flag = dbServices.insertPendingDate(pendingDateDetail);
            if (flag == 1)
            {
                request.setAttribute("fileId", request.getParameter("fileId"));
                url = "/adddatesuccessful.jsp";
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
