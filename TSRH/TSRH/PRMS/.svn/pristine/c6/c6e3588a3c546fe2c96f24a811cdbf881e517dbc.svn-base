package edu.uta.tsrh.filetracking.pendingfiles;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;

public class PendingFilesPageController
    extends ScottishRiteHospital
{

    private static final long serialVersionUID = -5397663969173654837L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();

        if (uri.startsWith("/TSRH/filetracking/todaypendingfilespage.org"))
        {
            url = "/pendingfilesbydate.jsp";
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }
}
