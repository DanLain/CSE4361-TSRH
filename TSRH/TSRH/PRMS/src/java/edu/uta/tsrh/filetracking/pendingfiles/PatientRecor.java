/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.filetracking.pendingfiles;


/**
 *
 * @author sriramlns
 */

public class PatientRecor {
   
    private String patientId;
   
   
    public PatientRecor( String patientId) {
        this.patientId = patientId;

    }
  
    
    public String getId() {
        return patientId;
    }
    
    
    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }
    
}
