package edu.uta.tsrh.model;

import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class PendingDate
{
    private int id;

    private Timestamp pendingDate;

    private String employeeName;

    private String pendingLocation;

    private String reason;

    private String notes;

    private int fileId;

    private int employeeId;

    public PendingDate()
    {
        super();
    }

    public PendingDate(String pendingDate, String pendingLocation, String reason, String notes, int fileId,
            int employeeId)
    {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try
        {
            this.pendingDate = new Timestamp(dateFormat.parse(pendingDate).getTime());
        }
        catch (ParseException e)
        {
            e.printStackTrace();
        }

        this.pendingLocation = pendingLocation;
        this.reason = reason;
        this.notes = notes;
        this.fileId = fileId;
        this.employeeId = employeeId;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
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

    public String getPendingLocation()
    {
        return pendingLocation;
    }

    public void setPendingLocation(String pendingLocation)
    {
        this.pendingLocation = pendingLocation;
    }

    public String getReason()
    {
        return reason;
    }

    public void setReason(String reason)
    {
        this.reason = reason;
    }

    public String getNotes()
    {
        return notes;
    }

    public void setNotes(String notes)
    {
        this.notes = notes;
    }

    public int getFileId()
    {
        return fileId;
    }

    public void setFileId(int fileId)
    {
        this.fileId = fileId;
    }

    public int getEmployeeId()
    {
        return employeeId;
    }

    public void setEmployeeId(int employeeId)
    {
        this.employeeId = employeeId;
    }

}
