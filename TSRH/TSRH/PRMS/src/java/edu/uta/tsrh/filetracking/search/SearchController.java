package edu.uta.tsrh.filetracking.search;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.SearchResult;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchController
        extends ScottishRiteHospital {

    private static final long serialVersionUID = -1935039791493971885L;

    // remove the count thin
    public String handle(HttpServletRequest request, HttpServletResponse response) {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI();
        DBServices dbServices = new MySQLDBServices();
        int inorout=1;
        try {
            String fileID = "";
            if (!request.getParameter("fileId").isEmpty()) {
                fileID = request.getParameter("fileId");
                
            }
            String patientName = request.getParameter("patientName");
            String patientFirstName = "";
            String patientLastName = "";

            if (!patientName.isEmpty()) {
                String[] names = patientName.split(",");

                if (names.length == 1) {
                    patientLastName = names[0];
                } else if (names.length == 2) {
                    patientFirstName = names[1];
                }
            }
            
            String fileStatus = request.getParameter("filecheckedoutorin");
            if(fileStatus.equals("IN")){
                inorout=1;
            }
            else if(fileStatus.equals("OUT")){
                inorout=2;
            }
            Date patientDateOfBirth = null;
            String dateString = request.getParameter("DOB");
            if (!dateString.isEmpty()) {
                DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
                patientDateOfBirth = new Date(dateFormat.parse(dateString).getTime());
            } else {
                patientDateOfBirth = null;
            }

            ArrayList<SearchResult> searchResult = dbServices.getSearchFileList("TSRH"+fileID, patientFirstName,
                    patientLastName, patientDateOfBirth,fileStatus);

            request.setAttribute("searchResult", searchResult);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        if(inorout==2)
            return "/?page=FileTrackingCheckIn";
        else
            return "/?page=FileTrackingCheckOut";
        
    }
}
