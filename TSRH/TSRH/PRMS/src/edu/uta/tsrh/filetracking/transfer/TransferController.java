package edu.uta.tsrh.filetracking.transfer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Transaction;

public class TransferController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = 254839100610418148L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/transferquery.org"))
        {
            int fileID = Integer.parseInt(request.getParameter("fileId"));
            int employeeID = Integer.parseInt(request.getParameter("staffId"));
            String notes = request.getParameter("notes");
            String reason = request.getParameter("reason");
            String locationLevel1 = request.getParameter("locationLevel1");
            String locationLevel2 = request.getParameter("locationLevel2");
            String locationOther = request.getParameter("locationOther");
            String tDateString = request.getParameter("Tdate");
            String tTimeh = request.getParameter("Ttimeh");
            String tTimem = request.getParameter("Ttimem");
            String tTime = tTimeh + ":" + tTimem;
            String rDateString = request.getParameter("Rdate");
            String rTimeh = request.getParameter("Rtimeh");
            String rTimem = request.getParameter("Rtimem");
            String rTime = rTimeh + ":" + rTimem;
            String tDateStr = tDateString + " " + tTime + ":00";
            String rDateStr = rDateString + " " + rTime + ":00";

            System.out.println("tras " + tDateStr);
            System.out.println("ret " + rDateStr);

            String location;

            if ((!locationLevel1.equals("Other")) && locationLevel2 != null)
            {
                location = locationLevel1 + " - " + locationLevel2;
            }
            else
            {
                location = locationOther;
            }

            Transaction transaction = new Transaction(employeeID, "TRANSFER", tDateStr, rDateStr, reason, notes,
                location, fileID);

            int flag = dbServices.insertTransaction(transaction);

            if (flag == 1)
            {
                int updateFlag = dbServices.updateFileLocation(location, "OUT", fileID);
                if (updateFlag == 1)
                {
                    request.setAttribute("fileId", request.getParameter("fileId"));
                    url = "/tsuccessful.jsp";
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
