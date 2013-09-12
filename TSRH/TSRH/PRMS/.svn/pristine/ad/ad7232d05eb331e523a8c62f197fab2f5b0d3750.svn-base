package edu.uta.tsrh.filetracking.pendingdates;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.PendingDate;

public class PendingDatesPageController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = -6004118587658834748L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/pendingdatespage.org"))
        {
            String fileIDString = request.getParameter("fileId");
            int fileID = Integer.parseInt(fileIDString);
            System.out.println("fileId in pendingdatespage = "+fileIDString);
            request.setAttribute("fileId", fileIDString);
            ArrayList<PendingDate> listOfPendingDates = dbServices.getPendingDates(fileID);
            
            if (listOfPendingDates != null)
            {
                request.setAttribute("PendingDatesList", listOfPendingDates);
                url = "/pendingdates.jsp";
            }
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }

}
