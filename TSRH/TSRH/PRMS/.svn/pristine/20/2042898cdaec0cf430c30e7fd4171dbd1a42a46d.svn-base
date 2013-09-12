package edu.uta.tsrh.filetracking.checkin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Transaction;

public class CheckInController
    extends ScottishRiteHospital
{

    private static final long serialVersionUID = 1852458348480850283L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/checkinquery.org"))
        {
            int fileID = Integer.parseInt(request.getParameter("fileId"));
            int employeeID = Integer.parseInt(request.getParameter("staffId"));
            String location = request.getParameter("location");
            String ciDateString = request.getParameter("CIdate");
            String ciTimeh = request.getParameter("CItimeh");
            String ciTimem = request.getParameter("CItimem");
            String ciTime = ciTimeh + ":" +ciTimem;
            String ciDateStr = ciDateString + " " + ciTime + ":00";
            System.out.println("date :" + ciDateString);
            System.out.println("time :" + ciTime);
            System.out.println("datetime : " + ciDateStr);

            Transaction transaction = new Transaction(employeeID, "CHECK-IN", ciDateStr, null, null, null, location,
                fileID);

            int ciFlag = dbServices.insertTransaction(transaction);

            if (ciFlag == 1)
            {
                int updateFlag = dbServices.updateFileLocation(location, "IN", fileID);
                if (updateFlag == 1)
                {
                    request.setAttribute("fileId", request.getParameter("fileId"));
                    url = "/cisuccessful.jsp";
                }
                else
                {
                    url = "/CommonPages/failure.jsp";
                }
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
