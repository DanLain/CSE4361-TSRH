package edu.uta.tsrh.filetracking.pendingdates;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Employee;

public class PendingDatesModifyPageController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = -4592519692812152960L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/pendingdates/modify.org"))
        {
            String pendingId = request.getParameter("pendingId");
            String notes = request.getParameter("notes");
            String staffId = request.getParameter("staffId");
            String staffName = request.getParameter("staffName");
            String reason = request.getParameter("reason");
            String pendingLocation = request.getParameter("location");
            String pendingDate = request.getParameter("pendingDate");
            ArrayList<Employee> staffList = dbServices.getEmployeeList();

            String[] dateTime = pendingDate.split(" ");

            request.setAttribute("staffList", staffList);
            request.setAttribute("date", dateTime[0]);
            request.setAttribute("time", dateTime[1]);
            request.setAttribute("staffName", staffName);
            request.setAttribute("staffId", staffId);
            request.setAttribute("pendingId", pendingId);
            request.setAttribute("notes", notes);
            request.setAttribute("reason", reason);
            request.setAttribute("location", pendingLocation);
            
            request.setAttribute("fileId", request.getParameter("fileId"));
            url = "/editpendingdates.jsp";
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }

}
