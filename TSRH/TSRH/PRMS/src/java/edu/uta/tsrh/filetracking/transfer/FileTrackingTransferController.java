/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.filetracking.transfer;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.SearchResult;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FileTrackingTransferController extends ScottishRiteHospital {
        // remove the count thin
    public String handle(HttpServletRequest request, HttpServletResponse response) {
     String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI();
        DBServices dbServices = new MySQLDBServices();
        String strCheckedIn=" ";
        ArrayList<SearchResult> searchResult = dbServices.getCheckedOutOrInFilesList(strCheckedIn);
        request.setAttribute("searchResult", searchResult);
        return "/?page=FileTrackingTransfer";
    }

}
