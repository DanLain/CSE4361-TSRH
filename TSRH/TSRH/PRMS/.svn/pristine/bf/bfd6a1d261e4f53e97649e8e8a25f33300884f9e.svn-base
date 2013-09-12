package edu.uta.tsrh.filetracking.pendingfiles;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.PendingFiles;

public class PendingFilesController
    extends ScottishRiteHospital
{

    private static final long serialVersionUID = 6816140664797808424L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/todaypendingfiles.org"))
        {
            String startDateString = request.getParameter("Sdate");
            String endDateString = request.getParameter("Edate");
            String todayDateString = request.getParameter("date");
            try
            {

                if (todayDateString == null)
                {
                    startDateString = startDateString + " 00:00:00";
                    endDateString = endDateString + " 00:00:00";
                }
                else
                {
                    startDateString = todayDateString + " 00:00:00";
                    // adding one day to starting date
                    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    Timestamp time = new Timestamp((dateFormat.parse(startDateString)).getTime());
                    long oneDay = 1 * 24 * 60 * 60 * 1000;
                    time.setTime(time.getTime() + oneDay);
                    endDateString = time.toString();
                }
                ArrayList<PendingFiles> pendingFileList = dbServices.getCurrentDaysPendingFiles(startDateString,
                    endDateString);
                request.setAttribute("pendingFileList", pendingFileList);
                url = "/pendingfilesbydateresults.jsp";
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
