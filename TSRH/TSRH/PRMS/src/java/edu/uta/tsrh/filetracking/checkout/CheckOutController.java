package edu.uta.tsrh.filetracking.checkout;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Transaction;

public class CheckOutController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = -8996786352429495629L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        System.out.println("checkout");
        String uri = request.getRequestURI();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/CheckOutFile"))
        {
            String fileID = request.getParameter("fileId");
            int employeeID = Integer.parseInt(request.getParameter("staffIdOut"));
            String notes = request.getParameter("notes");
            String reason = request.getParameter("reason");
            String locationLevel1 = request.getParameter("locationLevel1");
            String locationLevel2 = request.getParameter("locationLevel2");
            String locationOther = request.getParameter("locationOther");
           

            String coDateStr = request.getParameter("CheckerOut") + ":00";
            String rDateStr = request.getParameter("CheckerReturn") + ":00";
            
            String location;

            if ((!locationLevel1.equals("Other")) && locationLevel2 != null)
            {
                location = locationLevel1 + " - " + locationLevel2;
            }
            else
            {
                location = locationOther;
            }

            Transaction transaction = new Transaction(employeeID, "CHECK-OUT", coDateStr, rDateStr, reason, notes,
                location, fileID);

            int coFlag = dbServices.insertTransaction(transaction);

            if (coFlag == 1)
            {
                int updateFlag = dbServices.updateFileLocation(location, "OUT", fileID);
                if (updateFlag == 1)
                {
                    request.setAttribute("fileId", request.getParameter("fileId"));
                    url = "/?page=cosuccessful";
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
