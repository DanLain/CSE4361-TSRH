/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.notes.controllers;

import edu.uta.tsrh.patient.misc.DBMgrProxy;
import edu.uta.tsrh.patient.misc.PatientNote;

/**
 *
 * @author David
 */
public class NoteController {
    
    public static PatientNote getPatientNote(int noteId) {
        return DBMgrProxy.getInstance().getPatientNote(noteId);
    }
    
    public static int addPatientNote(String patientId, PatientNote note) {
        return DBMgrProxy.getInstance().addPatientNote(patientId, note);
    }
    
    public static void hidePatientNote(int id) {
        DBMgrProxy.getInstance().hidePatientNote(id);
    }
    
    public static void editPatientNote(PatientNote note) {
        DBMgrProxy.getInstance().editPatientNote(note);
    }
}
