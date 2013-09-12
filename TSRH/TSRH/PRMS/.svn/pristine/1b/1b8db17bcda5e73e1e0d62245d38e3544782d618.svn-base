package edu.uta.tsrh.filetracking.pendingdates;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Employee;

public class PendingDatesAddPageController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = -678768825535628913L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/pendingdates/add.org"))
        {
            String fileId = request.getParameter("fileId");
            ArrayList<Employee> staffList = dbServices.getEmployeeList();
            request.setAttribute("staffList", staffList);
            request.setAttribute("fileId", fileId);
            url = "/addpendingdates.jsp";
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }

}
