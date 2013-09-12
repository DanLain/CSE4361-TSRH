package edu.uta.tsrh.filetracking.pendingdates;

import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.PendingDate;

public class PendingDatesEditController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = 4920953950151481048L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/pendingdates/edit.org"))
        {
            try
            {

                int id = Integer.parseInt(request.getParameter("pendingId"));
                int employeeId = Integer.parseInt(request.getParameter("staffId"));
                String notes = request.getParameter("notes");
                String reason = request.getParameter("reason");
                String dateString = request.getParameter("date");
                String time = request.getParameter("time");
                String locationLevel1 = request.getParameter("locationLevel1");
                String locationLevel2 = request.getParameter("locationLevel2");
                String locationOther = request.getParameter("locationOther");

                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String [] times = time.split(":");
                String dateStr = dateString + " " + times[0]+":"+times[1]+":00" ;

                System.out.println("date " + dateStr);
                
                String pendingLocation;

                if ((!locationLevel1.equals("Other")) && locationLevel2 != null)
                {
                    pendingLocation = locationLevel1 + " - " + locationLevel2;
                }
                else
                {
                    pendingLocation = locationOther;
                }

                Timestamp pendingDate = new Timestamp(dateFormat.parse(dateStr).getTime());

                PendingDate pendingDateDetail = new PendingDate();
                pendingDateDetail.setId(id);
                pendingDateDetail.setEmployeeId(employeeId);
                pendingDateDetail.setNotes(notes);
                pendingDateDetail.setReason(reason);
                pendingDateDetail.setPendingLocation(pendingLocation);
                pendingDateDetail.setPendingDate(pendingDate);

                int flag = dbServices.updatePendingDate(pendingDateDetail);
                if (flag == 1)
                {
                    request.setAttribute("fileId", request.getParameter("fileId"));
                    url = "/editdatesuccessful.jsp";
                }
                else
                {
                    url = "/CommonPages/failure.jsp";
                }
            }
            catch (ParseException e)
            {
                e.printStackTrace();
            }
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }

}
