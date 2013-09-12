package edu.uta.tsrh.model;

import java.sql.Timestamp;

public class PendingFiles
{

    private int fileId;

    private String patientFirstName;

    private String patientLastName;

    private String reason;

    private String pendingLoaction;

    private Timestamp pendingDate;

    private String employeeName;

    public PendingFiles()
    {
        super();
    }

    public PendingFiles(int fileId, String patientFirstName, String patientLastName, String reason,
            String pendingLoaction, Timestamp pendingDate, String employeeName)
    {
        this.fileId = fileId;
        this.patientFirstName = patientFirstName;
        this.patientLastName = patientLastName;
        this.reason = reason;
        this.pendingLoaction = pendingLoaction;
        this.pendingDate = pendingDate;
        this.employeeName = employeeName;
    }

    public int getFileId()
    {
        return fileId;
    }

    public void setFileId(int fileId)
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

    public Timestamp getPendingDate()
    {
        return pendingDate;
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
