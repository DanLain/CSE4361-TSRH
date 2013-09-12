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
public interface DBMgr {
    
    public boolean ready();
    
    public int addPatientNote(String patientId, PatientNote note);
    
    public int addPatientPhoneCall(String patientId, PatientPhoneCall call);
    
    public void hidePatientNote(int noteId);
    
    public void hidePatientPhoneCall(int callId);
    
    public void editPatientNote(PatientNote note);
    
    public String getNewId(String firstName, String lastName);
    
    public PatientRecord getPatientRecord(String patientId);
    
    public ArrayList<PatientRecord> getPatientRecordList(String patientId,String patientFirstName,String patientLastName,Date patientDateOfBirth);
    
    public PatientPhoneCall getPatientPhoneCall(int callId);
    
    public PatientNote getPatientNote(int noteId);
    
    public int addNewPatientRecord(PatientRecord pRecord);

    public boolean checkPatientAvailibity(String patientId);

    public void setPhysicalFileRecord(String location, String fileStatus, String fileID, String timeStamp);
    
    
}
