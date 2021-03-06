package edu.uta.tsrh.model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class PendingFiles
{

    private String fileId;
    private String patientFirstName;
    private String patientLastName;
    private String reason;
    private String status;
    private String pendingLoaction;
    private Timestamp pendingDate;
    private String employeeName;

    public PendingFiles()
    {
        super();
    }

    public PendingFiles(String fileId, String patientFirstName, String patientLastName, String status,String reason, String pendingLoaction, Timestamp pendingDate, String employeeName)
    {
        this.fileId = fileId;
        this.patientFirstName = patientFirstName;
        this.patientLastName = patientLastName;
        this.status= status;
        this.reason = reason;
        this.pendingLoaction = pendingLoaction;
        this.pendingDate = pendingDate;
        this.employeeName = employeeName;        
    }

    public String getFileId()
    {
        return fileId;
    }

    public void setFileId(String fileId)
    {
        this.fileId = fileId;
    }

    public String getPatientFirstName()
    {
        return patientFirstName;
    }

    public void setPatientFirstName(String patientFirstName)
    {
        this.patientFirstName = patientFirstName;
    }

    public String getPatientLastName()
    {
        return patientLastName;
    }

    public void setPatientLastName(String patientLastName)
    {
        this.patientLastName = patientLastName;
    }

    public void setFileState(String status){
        
        this.status = status;
    }
    
    public String getFileState()
    {
        return status;
    }
    
    public String getReason()
    {
        return reason;
    }

    public void setReason(String reason)
    {
        this.reason = reason;
    }

    public String getPendingLoaction()
    {
        return pendingLoaction;
    }

    public void setPendingLoaction(String pendingLoaction)
    {
        this.pendingLoaction = pendingLoaction;
    }

    public String getPendingDate()
    {
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
        return dateFormat.format( this.pendingDate );
        //return pendingDate;
    }
    
    public String getPendingDates()
    {
        SimpleDateFormat dateFormat = new SimpleDateFormat();
        return dateFormat.format( this.pendingDate );
        //return pendingDate;
    }
    

    public void setPendingDate(Timestamp pendingDate)
    {
        this.pendingDate = pendingDate;
    }

    public String getEmployeeName()
    {
        return employeeName;
    }

    public void setEmployeeName(String employeeName)
    {
        this.employeeName = employeeName;
    }

}
