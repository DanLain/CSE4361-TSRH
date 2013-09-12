package edu.uta.tsrh.filetracking.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.FileDetail;

public class SearchResultController
extends ScottishRiteHospital
{
    private static final long serialVersionUID = -1590616220409187280L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = null;
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/search/results.org"))
        {

            int fileID = Integer.parseInt(request.getParameter("fileID"));
            FileDetail fileDetail = dbServices.getFileDetails(fileID);

            if (fileDetail != null)
            {
                request.setAttribute("fileDetail", fileDetail);
                url = "/filedetails.jsp";
            }
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }

}
