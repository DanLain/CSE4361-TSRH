package edu.uta.tsrh.filetracking.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Employee;
import edu.uta.tsrh.model.FileDetail;
import java.util.ArrayList;

public class SearchResultController
extends ScottishRiteHospital
{
    private static final long serialVersionUID = -1590616220409187280L;

    public String handle(HttpServletRequest request, HttpServletResponse response) {
        String url = null;
        String uri = request.getRequestURI();
        DBServices dbServices = new MySQLDBServices();

        ArrayList<Employee> staffList = dbServices.getEmployeeList();
        request.setAttribute("staffList", staffList);

        String fileID = request.getParameter("fileID");
        FileDetail fileDetail = dbServices.getFileDetails(fileID);

        if (fileDetail != null) {
            request.setAttribute("fileDetail", fileDetail);
            url = "/?page=FileTrackingResult";
        }
        return url;
    }

}
