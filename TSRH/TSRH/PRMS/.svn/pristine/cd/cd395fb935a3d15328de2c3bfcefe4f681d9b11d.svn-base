package edu.uta.tsrh.model;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Transaction
{
    private int employeeID;

    private String type;

    private Timestamp date;

    private Timestamp returnDate;

    private String reason;

    private String notes;

    private String location;

    private String fileID;

    public Transaction()
    {
        super();
    }

    public Transaction(int employeeID, String type, String date, String returnDate, String reason, String notes,
            String location, String fileID)
    {
        this.employeeID = employeeID;
        this.type = type;

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try
        {
            this.date = new Timestamp(dateFormat.parse(date).getTime());
            if (returnDate != null)
            {
                this.returnDate = new Timestamp(dateFormat.parse(returnDate).getTime());
            }
        }
        catch (ParseException e)
        {
            e.printStackTrace();
        }

        this.reason = reason;
        this.notes = notes;
        this.location = location;
        this.fileID = fileID;
    }

    public int getEmployeeID()
    {
        return employeeID;
    }

    public void setEmployeeID(int employeeID)
    {
        this.employeeID = employeeID;
    }

    public String getType()
    {
        return type;
    }

    public void setType(String type)
    {
        this.type = type;
    }

    public Timestamp getDate()
    {
        return date;
    }

    public void setDate(Timestamp date)
    {
        this.date = date;
    }

    public Timestamp getReturnDate()
    {
        return returnDate;
    }

    public void setReturnDate(Timestamp returnDate)
    {
        this.returnDate = returnDate;
    }

    public String getReason()
    {
        if(reason == null){
            return "";
        }
        return reason;
    }

    public void setReason(String reason)
    {
        this.reason = reason;
    }

    public String getNotes()
    {
        if(notes == null){
            return "";
        }
        return notes;
    }

    public void setNotes(String notes)
    {
        this.notes = notes;
    }

    public String getLocation()
    {
        return location;
    }

    public void setLocation(String location)
    {
        this.location = location;
    }

    public String getFileID()
    {
        return fileID;
    }

    public void setFileID(String fileID)
    {
        this.fileID = fileID;
    }

}
