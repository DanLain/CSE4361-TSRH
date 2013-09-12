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
        String uri = request.getRequestURI();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/TransferFile"))
        {
            String fileID = request.getParameter("fileId");
            int employeeID = Integer.parseInt(request.getParameter("staffId"));
            String notes = request.getParameter("notes");
            String reason = request.getParameter("reason");
            String locationLevel1 = request.getParameter("locationLevel1");
            String locationLevel2 = request.getParameter("locationLevel2");
            String locationOther = request.getParameter("locationOther");
            String tDateStr = request.getParameter("CheckerOut") + ":00";
            String rDateStr = request.getParameter("CheckerReturn") + ":00";
            System.out.println("fileId " + fileID);
            System.out.println("staffId " + employeeID);
            System.out.println("notes " + notes);
            System.out.println("tDateStr " + tDateStr);
            System.out.println("rDateStr " + rDateStr);

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
                    url = "/?page=tsuccessful";
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
