package edu.uta.tsrh.db;

import edu.uta.tsrh.model.Consults;
import java.sql.Date;
import java.util.ArrayList;

import edu.uta.tsrh.model.FileDetail;
import edu.uta.tsrh.model.Transaction;
import edu.uta.tsrh.model.PendingDate;
import edu.uta.tsrh.model.PendingFiles;
import edu.uta.tsrh.model.SearchResult;
import edu.uta.tsrh.model.Employee;
import edu.uta.tsrh.model.Resources;
import edu.uta.tsrh.model.Role;
import edu.uta.tsrh.model.User;
import edu.uta.tsrh.model.Patient;
import edu.uta.tsrh.model.PhoneConvRecord;
import edu.uta.tsrh.model.Tests;
import edu.uta.tsrh.model.RoleResourceRights;

public interface DBServices
{
    public ArrayList<SearchResult> getSearchFileList(String fileID, String patientFirstName, String patientLastName,
        Date patientDateOfBirth,String fileStatus);

    public FileDetail getFileDetails(String fileID);

    public int insertTransaction(Transaction transaction);

    public int updateFileLocation(String location, String fileState, String fileID);

    public ArrayList<Transaction> getFileHistory(String fileID, String startTime, String endTime);

    public int insertPendingDate(PendingDate pendingDate);

    public int updatePendingDate(PendingDate pendingDate);

    public int deletePendingDate(int pendingDateID);

    public ArrayList<PendingDate> getPendingDates(int fileId);

    public ArrayList<PendingFiles> getCurrentDaysPendingFiles(String startTime, String endTime);

    public ArrayList<SearchResult> getCheckedOutOrInFilesList(String fileCheckedInOut);

    public ArrayList<Employee> getEmployeeList();

    public Employee getEmployee(int employeeID);
    
    public int insertRole(String roleName);
    
    public Role getRole(String roleName);
   
    public ArrayList<Role> getRoleList();
    
    public int insertResource(String resourceName, String resourceURL);
    
    public ArrayList<Resources> getResourceList();
    
    public int insertRights(int roleId, int resourceId, int readEdit);
    
    //Newly added functions
     public User loginUser(String username, String password);
     

    // public boolean createUser(String username, String password, String emailId);
     
     public String retrievePID(String fName, String lName, Date dob);
    
    public String insertNewPhoneConversation(String patientID, String whoCalled, String topic, String whatWasSaid);
     
    public ArrayList<Patient> getPatients();
     
    public ArrayList<PhoneConvRecord> getPatientPhoneConvs(String i);
    
    public PhoneConvRecord getPhoneConversation(int i);
    
    public String updatePhoneConversation(String patientID, String whoCalled, String topic, String whatWasSaid);
    
     public String archivePhoneRecord(PhoneConvRecord p);
     
     public String deletePhoneRecord(int i);
     
     public Boolean insertNewUser(String name, String em,  String password, String access);

    public ArrayList<User> getUsers();

    public String deleteUser(String uid);

     public boolean checkDupUserName(String userName);
     
     public boolean checkDupEmailId(String emailId);
     
     public boolean createUser(User user);
          
    public ArrayList<PendingFiles> getReportPendingFiles(String startTime, String endTime);
     
    public ArrayList<Tests> getReportTests(String startTime, String endTime);
    
    public ArrayList<Consults> getReportConsults(String startTime, String endTime);

    
     public int updateRights (int roleId, int resourceId, int readEdit);
     
     public ArrayList<RoleResourceRights> getRightsList (int roleId);
}
