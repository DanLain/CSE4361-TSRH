package edu.uta.tsrh.filetracking.history;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;

public class HistoryPageController
    extends ScottishRiteHospital
{
    private static final long serialVersionUID = 843084402098556939L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();

        if (uri.startsWith("/TSRH/filetracking/file/historypage.org"))
        {
            String fileId = request.getParameter("fileId");
            request.setAttribute("fileId", fileId);
            url = "/history1.jsp";
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }

}
