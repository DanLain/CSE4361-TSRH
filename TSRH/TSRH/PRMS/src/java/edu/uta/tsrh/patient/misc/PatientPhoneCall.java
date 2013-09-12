/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.patient.misc;

import java.sql.Timestamp;

/**
 *
 * @author David
 */
public class PatientPhoneCall {
    private int id;
    private String title;
    private Timestamp date;
    private String caller;
    private String sourceNumber;
    private String content;
    
    public PatientPhoneCall(int id, String title, Timestamp date, String caller, String sourceNumber, String content) {
        this.id = id;
        this.title = title;
        this.date = date;
        this.caller = caller;
        this.sourceNumber = sourceNumber;
        this.content = content;
    }
    
    public int getId() {
        return id;
    }
    public String getTitle() {
        return title;
    }
    public Timestamp getDate() {
        return date;
    }
    public String getCaller() {
        return caller;
    }
    public String getSourceNumber() {
        return sourceNumber;
    }
    public String getContent() {
        return content;
    }
    
    
}