/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.patient.misc;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author David
 */
public class PatientRecord {
    private String firstName;
    private String lastName;
    private String patientId;
    private Date dob;
    private String contactPhone;
    private String address;
    private String mothersName;
    private String imageURL;
    private String pdfURL;
    private ArrayList<PatientNote> notes = new ArrayList<PatientNote>();
    private ArrayList<PatientPhoneCall> phoneCalls = new ArrayList<PatientPhoneCall>();
    
    /**
     * Basic data constructor
     * @param firstName
     * @param lastName
     * @param patientId
     * @param dob
     * @param contactPhone
     * @param address
     * @param mothersName 
     * @param pdfURL
     * @param imageURL
     */
    public PatientRecord(String firstName,
            String lastName, 
            String patientId, 
            Date dob, 
            String contactPhone, 
            String address, 
            String mothersName,
            String imageURL,
            String pdfURL
            ) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.patientId = patientId;
        this.dob = dob;
        this.contactPhone = contactPhone;
        this.address = address;
        this.mothersName = mothersName;
        
        //File file = new File(imageURL);
        this.imageURL = imageURL;
        this.pdfURL = pdfURL;
    }
    public PatientRecord() {
        this.firstName = "First Name";
        this.lastName = "Last Name";
        this.patientId = "FL";
        this.dob = null;
        this.contactPhone = "Contact Phone";
        this.address = null;
        this.mothersName = "Mother's Name";
    }
    
    public String getFirstName() {
        return firstName;
    }
    public String getLastName() {
        return lastName;
    }
    public String getId() {
        return patientId;
    }
    public Date getDOB() {
        return dob;
    }
    
    public String getURL() {
        return imageURL;
    }
    
    public String getpdfURL() {
        return pdfURL;
    }
    
    public String getContactPhone() {
        return contactPhone;
    }
    public String getAddress() {
        return address;
    }
    public String getMothersName() {
        return mothersName;
    }
    public ArrayList<PatientNote> getNotes() {
        return notes;
    }
    public ArrayList<PatientPhoneCall> getPhoneCalls() {
        return phoneCalls;
    }
    
    /**
     * Add new note
     * @param newNote 
     */
    public void addNote(PatientNote newNote) {
        notes.add(newNote);
    }
    
    /**
     * Add new phone call
     * @param newPhoneCall 
     */
    public void addPhoneCall(PatientPhoneCall newPhoneCall) {
        phoneCalls.add(newPhoneCall);
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public void setURL(String fimageURL) {
        
        
        this.imageURL = fimageURL;
    }
    
    public void setpdfURL(String pdfURL)
    {
       this.pdfURL=pdfURL;
    }

    /**
     * @param patientId the patientId to set
     */
    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(Date dob) {
        this.dob = dob;
    }

    /**
     * @param contactPhone the contactPhone to set
     */
    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @param mothersName the mothersName to set
     */
    public void setMothersName(String mothersName) {
        this.mothersName = mothersName;
    }
    
}
