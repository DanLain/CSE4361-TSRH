package edu.uta.tsrh.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;


public class Tests
{

    private String id;    
    private Timestamp expectedDate;
    private Timestamp requestedDate;
    private String testName;
    private String testRequesterName;
    private String userId;
    private String staffName;
    private String patientName;
    private String patientId;

    public Tests()
    {
        super();
    }

    public Tests(String fileId,String testName,String testRequesterName,String userId,String staffName, Timestamp expectedDate, Timestamp requestedDate, String patientName, String patientId)
    {
        this.id = fileId;
        this.expectedDate = expectedDate;
        this.requestedDate = requestedDate;
        this.testName = testName;
        this.testRequesterName = testRequesterName;
        this.userId = userId;
        this.staffName = staffName;
        this.patientName = patientName;
        this.patientId = patientId;

    }

    public String getId()
    {
        return id;
    }

    public void setId(String id)
    {
        this.id = id;
    }
    
    public String getPatientName()
    {
        return patientName;
    }

    public void setPatientName(String patientName)
    {
        this.patientName = patientName;
    }

    
    public String getPatientId()
    {
        return patientId;
    }

    public void setPatientId(String patientId)
    {
        this.patientId = patientId;
    }


    
    public String getRequestedDate()
    {
        SimpleDateFormat dateFormat = new SimpleDateFormat("M/dd/yyyy");
        return dateFormat.format( this.requestedDate );
        //return requesstedDate;
    }

    public void setRequestedDate(Timestamp requestedDate)            
    {                
        this.requestedDate = requestedDate;
    }

 
    public String getExpectedDate()
    {
        SimpleDateFormat dateFormat = new SimpleDateFormat("M/dd/yyyy");
        return dateFormat.format( this.expectedDate );
    }

    public void setExpectedDate(Timestamp expectedDate)
    {
        this.expectedDate = expectedDate;
    }

    public String getTestName() {
        
        return testName;
    }
     
    public void setTestName(String testName) {
        
        this.testName = testName;
    }

    public String getTestRequesterName() {
        
        return testRequesterName;
    }
    
    public void setTestRequesterName(String testRequesterName) {
        
        this.testRequesterName = testRequesterName;
    }

    public String getUserId() {
        
        return userId;
    }
    
    public void setUserId(String userId) {
        
        this.userId = userId;
    }

    public String getStaffName() {
        
        return staffName;
    }
    
    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

}
