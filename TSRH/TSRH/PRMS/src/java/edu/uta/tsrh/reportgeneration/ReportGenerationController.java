/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.reportgeneration;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Consults;
import edu.uta.tsrh.model.PendingFiles;
import edu.uta.tsrh.model.Tests;

public class ReportGenerationController 
extends ScottishRiteHospital
{

    private static final long serialVersionUID = 6816140664797808424L;

    @Override
    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/reportgeneration.org"))
        {
            String startDateString = request.getParameter("Sdate");
            String endDateString = request.getParameter("Edate");
            String today = request.getParameter("today");
            String week = request.getParameter("week");
            String month = request.getParameter("month");
            String todayDateString = request.getParameter("date");
            String reportType = request.getParameter("ReportType");
            
            try
            {                
                if(today.length() > 0){                                        
                    Calendar cal = Calendar.getInstance();
                    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
                    endDateString = sdf.format(cal.getTime());
                    Calendar cal2 = Calendar.getInstance();
                    cal2.set(Calendar.HOUR_OF_DAY, 0);
                    cal2.set(Calendar.MINUTE, 0);
                    cal2.set(Calendar.SECOND, 0);
                    startDateString = sdf.format(cal2.getTime());                                        
                }
                else if(week.length() > 0)
                {                                           
                    Calendar c = Calendar.getInstance();
                    // Set the calendar to sunday of the current week
                    c.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);                    
                    DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
                    c.set(Calendar.HOUR_OF_DAY, 0);
                    c.set(Calendar.MINUTE, 0);
                    c.set(Calendar.SECOND, 0);
                    startDateString = df.format(c.getTime());
                    c.add(Calendar.DATE, 7);
                    endDateString = df.format(c.getTime());                             
                }
                else if(month.length() > 0)
                {                                             
                    Calendar cal = Calendar.getInstance();
                    int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
                    cal.clear(Calendar.HOUR_OF_DAY);
                    cal.clear(Calendar.MINUTE);
                    cal.clear(Calendar.SECOND);
                    cal.clear(Calendar.MILLISECOND);
                    cal.set(Calendar.DAY_OF_MONTH, maxDay);
                    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
                    endDateString = sdf.format(cal.getTime());
                    Calendar cal2 = Calendar.getInstance();
                    cal2.clear(Calendar.HOUR_OF_DAY);
                    cal2.clear(Calendar.MINUTE);
                    cal2.clear(Calendar.SECOND);
                    cal2.clear(Calendar.MILLISECOND);
                    cal2.set(Calendar.DAY_OF_MONTH, 1);                    
                    startDateString = sdf.format(cal2.getTime());                      
                }
                else if (todayDateString == null)
                {
                    startDateString = startDateString + " 00:00:00";
                    endDateString = endDateString + " 00:00:00";
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
              
                if(reportType.equals("GetReportPendingFiles"))
                {
                    ArrayList<PendingFiles> fileList = dbServices.getReportPendingFiles(startDateString,endDateString);
                    request.setAttribute("pendingFileList", fileList);
                    url = "/reportPendingFilesResults.jsp";
                }
                else if(reportType.equals("GetReportTests"))
                {
                    ArrayList<Tests> fileList = dbServices.getReportTests(startDateString,endDateString);
                    request.setAttribute("testList", fileList);
                    url = "/reportTestResults.jsp";
                }
                else if(reportType.equals("GetReportConsults"))
                {
                    ArrayList<Consults> fileList = dbServices.getReportConsults(startDateString,endDateString);
                    request.setAttribute("consultList", fileList);
                    url = "/reportConsultResults.jsp";
                }
                else
                {
                    System.out.println("Unkown error type");
                }
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

