package edu.uta.tsrh.db;

import java.sql.Date;
import java.util.ArrayList;

import edu.uta.tsrh.model.FileDetail;
import edu.uta.tsrh.model.Transaction;
import edu.uta.tsrh.model.PendingDate;
import edu.uta.tsrh.model.PendingFiles;
import edu.uta.tsrh.model.SearchResult;
import edu.uta.tsrh.model.Employee;

public interface DBServices
{
    public ArrayList<SearchResult> getSearchFileList(int fileID, String patientFirstName, String patientLastName,
        Date patientDateOfBirth);

    public FileDetail getFileDetails(int fileID);

    public int insertTransaction(Transaction transaction);

    public int updateFileLocation(String location, String fileState, int fileID);

    public ArrayList<Transaction> getFileHistory(int fileID, String startTime, String endTime);

    public int insertPendingDate(PendingDate pendingDate);

    public int updatePendingDate(PendingDate pendingDate);

    public int deletePendingDate(int pendingDateID);

    public ArrayList<PendingDate> getPendingDates(int fileId);

    public ArrayList<PendingFiles> getCurrentDaysPendingFiles(String startTime, String endTime);

    public ArrayList<Employee> getEmployeeList();

    public Employee getEmployee(int employeeID);
}
