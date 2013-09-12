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
public class PatientNote {
    private int id;
    private Timestamp date;
    private String title;
    private String source;
    private String content;
    
    public PatientNote(int id, Timestamp date, String title, String source, String content) {
        this.id = id;
        this.date = date;
        this.title = title;
        this.source = source;
        this.content = content;
    }
    
    public int getId() {
        return id;
    }
    public Timestamp getDate() {
        return date;
    }
    public String getTitle() {
        return title;
    }
    public String getSource() {
        return source;
    }
    public String getContent() {
        return content;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
}
