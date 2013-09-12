package edu.uta.tsrh.db.test;

import static org.junit.Assert.*;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.*;

public class MySQLDBServicesTest
{
    DBServices dbServices;

    @Before
    public void setUp()
        throws Exception
    {
        dbServices = new MySQLDBServices();
    }

    @After
    public void tearDown()
        throws Exception
    {}

/*    @Test
    public void testGetSearchFileList1()
    {
        System.out.println("testGetSearchFileList1");
        ArrayList<SearchResult> searchResults = this.dbServices.getSearchFileList(3, null, null, null);
        assertTrue(searchResults.size() == 1);
        assertTrue(searchResults.get(0).getPatientFirstName().equals("William"));
        assertTrue(searchResults.get(0).getFileState().equals("OUT"));
        System.out.println();
    }

    @Test
    public void testGetSearchFileList2()
    {
        System.out.println("testGetSearchFileList2");
        ArrayList<SearchResult> searchResults = this.dbServices.getSearchFileList(0, null, "David", null);
        assertTrue(searchResults.size() == 2);
        assertTrue(searchResults.get(0).getPatientFirstName().equals("William"));
        System.out.println();
    }

    @Test
    public void testGetSearchFileList3()
    {
        System.out.println("testGetSearchFileList3");
        ArrayList<SearchResult> searchResults = this.dbServices.getSearchFileList(0, "John", null, null);
        assertTrue(searchResults.size() == 3);
        assertTrue(searchResults.get(0).getPatientLastName().equals("Samuel"));
        System.out.println();
    }

    @Test
    public void testGetSearchFileList4()
    {
        System.out.println("testGetSearchFileList4");
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date patientDateOfBirth;
        try
        {
            patientDateOfBirth = new Date(dateFormat.parse("1982-03-26").getTime());
            ArrayList<SearchResult> searchResults = this.dbServices
                    .getSearchFileList(0, null, null, patientDateOfBirth);
            assertTrue(searchResults.size() == 1);
            assertTrue(searchResults.get(0).getPatientLastName().equals("Samuel"));
            System.out.println();
        }
        catch (ParseException e)
        {
            e.printStackTrace();
        }
    }

    @Test
    public void testGetFileDetails()
    {
        System.out.println("testGetFileDetails");
        FileDetail fileDetail = (FileDetail) this.dbServices.getFileDetails(2);
        assertTrue(fileDetail.getFileID() == 2);
        assertTrue(fileDetail.getLocation().equals("CMT"));
        System.out.println();
    }

    @Test
    public void testInsertTransaction()
    {
        System.out.println("testInsertTransaction");
        Transaction transaction = new Transaction(10, "CHECK-OUT", "2011-11-30 23:00:00", "2011-12-16 09:00:00",
            "I donno", "may be something", "CMT", 6);
        int result = this.dbServices.insertTransaction(transaction);
        assertTrue(result == 1);
        System.out.println();
    }

    @Test
    public void testUpdateFileLocation()
    {
        System.out.println("testUpdateFileLocation");
        int result = this.dbServices.updateFileLocation("CMT", "IN", 6);
        assertTrue(result == 1);
        System.out.println();
    }

    @Test
    public void testGetFileHistory()
    {
        System.out.println("testGetFileHistory");
        ArrayList<Transaction> transactions = this.dbServices.getFileHistory(3, "2011-07-20 00:00:00",
            "2012-01-01 00:00:00");
        assertTrue(transactions.size() == 9);
        System.out.println("size = " + transactions.size());
        System.out.println();
    }

    @Test
    public void testInsertPendingDate()
    {
        System.out.println("testInsertPendingDate");
        PendingDate pendingDate = new PendingDate("2011-12-31 00:00:00", "CMT", "New year", "nothing", 5, 6);
        int result = this.dbServices.insertPendingDate(pendingDate);
        assertTrue(result == 1);
        System.out.println();
    }

    @Test
    public void testUpdatePendingDate()
    {
        System.out.println("testUpdatePendingDate");
        PendingDate pendingDate = new PendingDate("2011-12-29 00:00:00", "PNR", "old year", "nothing new", 5, 7);
        pendingDate.setId(11);
        int result = this.dbServices.updatePendingDate(pendingDate);
        assertTrue(result == 1);
        System.out.println();
    }

    @Test
    public void testdeletePendingDate()
    {
        System.out.println("testdeletePendingDate");
        int result = this.dbServices.deletePendingDate(12);
        assertTrue(result == 1);
        System.out.println();
    }

    @Test
    public void testGetPendingDates()
    {
        System.out.println("testGetPendingDates");
        ArrayList<PendingDate> pendingDates = this.dbServices.getPendingDates(5);
        assertTrue(pendingDates.size() == 3);
        System.out.println();
    }*/

    @Test
    public void testGetCurrentDaysPendingFiles()
    {
        System.out.println("testGetCurrentDaysPendingFiles");
        ArrayList<PendingFiles> pendingFiles = this.dbServices.getCurrentDaysPendingFiles("2011-12-04 00:00:00",
            "2011-12-24 00:00:00");
        assertTrue(pendingFiles.size() == 7);
        assertTrue(pendingFiles.get(0).getFileId() == 1);
        System.out.println("pending date = " +pendingFiles.get(0).getPendingDate());
        System.out.println();
    }

   /* @Test
    public void testGetEmployeeList()
    {
        System.out.println("testGetEmployeeList");
        ArrayList<Employee> employees = this.dbServices.getEmployeeList();
        assertTrue(employees.size() == 10);
        assertTrue(employees.get(8).getFirstName().equals("Kaylee"));
        System.out.println();
    }

    @Test
    public void testGetEmployee()
    {
        System.out.println("testGetEmployee");
        Employee employee = this.dbServices.getEmployee(9);
        assertTrue(employee.getFirstName().equals("Kaylee"));
        System.out.println();
    }
*/
}
