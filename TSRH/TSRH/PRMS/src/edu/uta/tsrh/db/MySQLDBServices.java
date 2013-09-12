package edu.uta.tsrh.db;

import java.sql.Date;
import java.util.ArrayList;

import edu.uta.tsrh.db.commandpattern.*;
import edu.uta.tsrh.model.*;

public class MySQLDBServices
    implements DBServices
{

    @Override
    public ArrayList<SearchResult> getSearchFileList(int fileID, String patientFirstName, String patientLastName,
        Date patientDateOfBirth)
    {
        GetSearchFileList getSearchFiles = new GetSearchFileList(fileID, patientFirstName, patientLastName,
            patientDateOfBirth);
        ArrayList<SearchResult> searchResults = getSearchFiles.execute();
        return searchResults;
    }

    @Override
    public FileDetail getFileDetails(int fileID)
    {
        GetFileDetails getDetails = new GetFileDetails(fileID);
        FileDetail fileDetail = getDetails.execute();
        return fileDetail;
    }

    @Override
    public int insertTransaction(Transaction transaction)
    {
        InsertTransaction insert = new InsertTransaction(transaction);
        int result = Integer.parseInt((String) insert.execute());
        return result;
    }

    @Override
    public int updateFileLocation(String location, String fileState, int fileID)
    {
        UpdateFileLocation update = new UpdateFileLocation(location, fileState, fileID);
        int result = Integer.parseInt((String) update.execute());
        return result;
    }

    @Override
    public ArrayList<Transaction> getFileHistory(int fileID, String startTime, String endTime)
    {
        GetFileHistory history = new GetFileHistory(fileID, startTime, endTime);
        ArrayList<Transaction> transactions = history.execute();
        return transactions;
    }

    @Override
    public int insertPendingDate(PendingDate pendingDate)
    {
        InsertPendingDate insert = new InsertPendingDate(pendingDate);
        int result = Integer.parseInt((String) insert.execute());
        return result;
    }

    @Override
    public int updatePendingDate(PendingDate pendingDate)
    {
        UpdatePendingDate update = new UpdatePendingDate(pendingDate);
        int result = Integer.parseInt((String) update.execute());
        return result;
    }

    @Override
    public int deletePendingDate(int pendingDateID)
    {
        DeletePendingDate delete = new DeletePendingDate(pendingDateID);
        int result = Integer.parseInt((String) delete.execute());
        return result;
    }

    @Override
    public ArrayList<PendingDate> getPendingDates(int fileId)
    {
        GetPendingDates pendingDates = new GetPendingDates(fileId);
        ArrayList<PendingDate> pendingDateList = pendingDates.execute();
        return pendingDateList;
    }

    @Override
    public ArrayList<PendingFiles> getCurrentDaysPendingFiles(String startTime, String endTime)
    {
        GetCurrentDaysPendingFiles currentDaysFiles = new GetCurrentDaysPendingFiles(startTime, endTime);
        ArrayList<PendingFiles> files = currentDaysFiles.execute();
        return files;
    }

    @Override
    public ArrayList<Employee> getEmployeeList()
    {
        GetEmployeeList employeeList = new GetEmployeeList();
        ArrayList<Employee> list = employeeList.execute();
        return list;
    }

    @Override
    public Employee getEmployee(int employeeID)
    {
        GetEmployee getEmp = new GetEmployee(employeeID);
        Employee employee = getEmp.execute();
        return employee;
    }

}
