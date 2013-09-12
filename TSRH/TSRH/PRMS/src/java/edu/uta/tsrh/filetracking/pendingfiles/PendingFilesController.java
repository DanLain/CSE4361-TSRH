package edu.uta.tsrh.filetracking.pendingfiles;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.PendingFiles;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class PendingFilesController extends HttpServlet {

    private static final long serialVersionUID = 6816140664797808424L;

 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             response.setContentType("text/html;charset=UTF-8");
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/todaypendingfiles"))
        {
            String startDateString = request.getParameter("Sdate");
            String endDateString = request.getParameter("Edate");
            String todayDateString = request.getParameter("date");
            try
            {

                if (todayDateString == null)
                {
                    startDateString = startDateString + " 00:00:00.0";
                    endDateString = endDateString + " 00:00:00.0";
                }
                else
                {
                    startDateString = todayDateString + " 00:00:00";
                    // adding one day to starting date
                    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    Timestamp time = new Timestamp((dateFormat.parse(startDateString)).getTime());
                    long oneDay = 1 * 24 * 60 * 60 * 1000;
                    time.setTime(time.getTime() + oneDay);
                    endDateString = time.toString();
                }
                ArrayList<PendingFiles> pendingFileList = dbServices.getCurrentDaysPendingFiles(startDateString,
                    endDateString);
                request.setAttribute("pendingFileList", pendingFileList);
             //   url = "/todayspendingfiles.jsp";
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
      //  return url;
    
 
 
   RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/?page=todayspendingfiles");


        dispatcher.include(request, response);
 }

 
 
 // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
 
 
 
 
 
 
 
}
