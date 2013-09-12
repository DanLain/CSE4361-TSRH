/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.filetracking.pendingfiles;

import edu.uta.tsrh.filetracking.pendingfiles.DBMgrProxy;
import edu.uta.tsrh.filetracking.pendingfiles.PatientRecor;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author sriramlns
 */
public class DisplayDetails {
 
    public static ArrayList<PatientRecor> getPatientRecordLis(String fpatientId) {
        ArrayList<PatientRecor> record;
        String patientID = "";
        if (fpatientId != null) {
            if (!fpatientId.isEmpty()) {
                patientID = fpatientId;
            }
        } 
       
        record = DBMgrProxy.getInstance().getPatientRecordLis(patientID);
        
        return record;
    }
    
 
    
}
