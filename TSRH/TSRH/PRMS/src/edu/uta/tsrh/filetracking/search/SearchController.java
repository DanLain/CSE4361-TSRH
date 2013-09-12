package edu.uta.tsrh.filetracking.search;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.SearchResult;

public class SearchController
    extends ScottishRiteHospital

{
    private static final long serialVersionUID = -1935039791493971885L;

    // remove the count thin
    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI().toString();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/filetracking/searchquery.org"))
        {
            try
            {
                int fileID = 0;
                if (!request.getParameter("fileId").isEmpty())
                {
                    fileID = Integer.parseInt(request.getParameter("fileId"));
                }

                String patientName = request.getParameter("patientName");
                String patientFirstName = "";
                String patientLastName = "";

                if (!patientName.isEmpty())
                {
                    String[] names = patientName.split(",");

                    if (names.length == 1)
                    {
                        patientLastName = names[0];
                    }
                    else if (names.length == 2)
                    {
                        patientFirstName = names[1];
                    }
                }

                Date patientDateOfBirth = null;
                String dateString = request.getParameter("DOB");
                if (!dateString.isEmpty())
                {
                    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                    patientDateOfBirth = new Date(dateFormat.parse(dateString).getTime());
                }

                else
                {
                    patientDateOfBirth = null;
                }

                ArrayList<SearchResult> searchResult = dbServices.getSearchFileList(fileID, patientFirstName,
                    patientLastName, patientDateOfBirth);

                request.setAttribute("searchResult", searchResult);

                url = "/searchresults.jsp";
            }
            catch (ParseException e)
            {
                e.printStackTrace();
            }

        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }

}
