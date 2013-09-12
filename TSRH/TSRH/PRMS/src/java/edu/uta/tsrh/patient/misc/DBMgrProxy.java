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
public class DBMgrProxy implements DBMgr {
    private DBMgr currentDBMgr = new SQLMgr();
    
    private static DBMgrProxy instance = new DBMgrProxy();
    
    @Override
    public boolean ready() {
        return currentDBMgr.ready();
    }
    
    public static DBMgrProxy getInstance() {
        return instance;
    }

    @Override
    public int addPatientNote(String patientId, PatientNote note) {
        return currentDBMgr.addPatientNote(patientId, note);
    }

    @Override
    public int addPatientPhoneCall(String patientId, PatientPhoneCall call) {
        return currentDBMgr.addPatientPhoneCall(patientId, call);
    }

    @Override
    public void hidePatientNote(int noteId) {
        currentDBMgr.hidePatientNote(noteId);
    }
    
    @Override
    public void editPatientNote(PatientNote note) {
        currentDBMgr.editPatientNote(note);
    }

    @Override
    public void hidePatientPhoneCall(int callId) {
        currentDBMgr.hidePatientPhoneCall(callId);
    }

    @Override
    public String getNewId(String firstName, String lastName) {
        return currentDBMgr.getNewId(firstName, lastName);
    }

    @Override
    public PatientRecord getPatientRecord(String patientId) {
        return currentDBMgr.getPatientRecord(patientId);
    }

    @Override
    public PatientPhoneCall getPatientPhoneCall(int callId) {
        return currentDBMgr.getPatientPhoneCall(callId);
    }

    @Override
    public PatientNote getPatientNote(int noteId) {
        return currentDBMgr.getPatientNote(noteId);
    }
    
    @Override
      public int addNewPatientRecord(PatientRecord pRecord)
      {
           return currentDBMgr.addNewPatientRecord(pRecord);
      }

    @Override
    public ArrayList<PatientRecord> getPatientRecordList(String patientId, String patientFirstName, String patientLastName, Date patientDateOfBirth) {
        return currentDBMgr.getPatientRecordList(patientId,patientFirstName,patientLastName,patientDateOfBirth);
    }

    @Override
    public boolean checkPatientAvailibity(String patientId) {
        return currentDBMgr.checkPatientAvailibity(patientId);
    }

    @Override
    public void setPhysicalFileRecord(String location, String fileStatus, String fileID, String timeStamp) {
        currentDBMgr.setPhysicalFileRecord(location,fileStatus,fileID,timeStamp);
    }

}
