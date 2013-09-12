package edu.uta.tsrh.filetracking.checkout;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Employee;

public class CheckOutPageController
    extends ScottishRiteHospital
{

    private static final long serialVersionUID = -6883114479405462994L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/checkoutpage.org"))
        {
            String fileId = request.getParameter("fileId");
            ArrayList<Employee> staffList = dbServices.getEmployeeList();
            
            request.setAttribute("fileId", fileId);
            request.setAttribute("staffList", staffList);
            url = "/checkout.jsp";
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }
}
