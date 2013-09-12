/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.filetracking.pendingfiles;

import edu.uta.tsrh.filetracking.pendingfiles.DBMgr;

import edu.uta.tsrh.filetracking.pendingfiles.PatientRecor;
import edu.uta.tsrh.filetracking.pendingfiles.SQLMgr;

import java.util.ArrayList;

/**
 *
 * @author sriramlns
 */

public class DBMgrProxy implements DBMgr {
    private DBMgr currentDBMgr = new SQLMgr();
    
    private static edu.uta.tsrh.filetracking.pendingfiles.DBMgrProxy instance = new edu.uta.tsrh.filetracking.pendingfiles.DBMgrProxy();
    
    @Override
    public boolean ready() {
        return currentDBMgr.ready();
    }
    
    public static edu.uta.tsrh.filetracking.pendingfiles.DBMgrProxy getInstance() {
        return instance;
    }


    @Override
    public ArrayList<PatientRecor> getPatientRecordLis(String patientId) {
        return currentDBMgr.getPatientRecordLis(patientId);
    }

   

}

