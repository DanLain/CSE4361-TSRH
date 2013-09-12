package edu.uta.tsrh.filetracking.transfer;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Employee;

public class TransferPageController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = 384720016946824252L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/file/transferpage.org"))
        {
            String fileId = request.getParameter("fileId");
            ArrayList<Employee> staffList = dbServices.getEmployeeList();

            request.setAttribute("fileId", fileId);
            request.setAttribute("staffList", staffList);
            url = "/transfer.jsp";
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }

}
