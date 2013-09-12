/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.filetracking.checkout;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.SearchResult;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sanjay
 */
public class FileTrackingCheckOutController extends ScottishRiteHospital {

     public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI();
        DBServices dbServices = new MySQLDBServices();
        
         String strCheckedIn=" ";
         ArrayList<SearchResult> searchResult = dbServices.getCheckedOutOrInFilesList(strCheckedIn);
         request.setAttribute("searchResult", searchResult);
        return "/?page=FileTrackingCheckOut";
    }
 }
