/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.filetracking.pendingfiles;


import edu.uta.tsrh.patient.misc.SQLConnMgr;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sriramlns
 */

public class SQLMgr implements DBMgr {

    private Connection connection = null;

    public SQLMgr() {
        openDB();
    }

    private void openDB() {
        if (this.connection == null) {
             SQLConnMgr sqlConnection = new SQLConnMgr();
            connection = sqlConnection.getConnection();
        }
    }

  

    @Override
    public ArrayList<PatientRecor> getPatientRecordLis(String patientId) {
        ArrayList<PatientRecor> newPRList = new ArrayList<PatientRecor>();

        ResultSet results;
        try {
            results = getPatientRecordResults(patientId);


            while (results.next()) {

                PatientRecor newPR = new PatientRecor(results.getString("patient_id"));
                        
                newPRList.add(newPR);
            }
        } catch (SQLException ex) {
            Logger.getLogger(edu.uta.tsrh.filetracking.pendingfiles.SQLMgr.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return newPRList;
    }
        
    private ResultSet getPatientRecordResults(String patientId) throws SQLException {
        
       String sqlQuery = "select * from physical_file where id = " + patientId;
       Statement statement = connection.prepareStatement(sqlQuery);
        ResultSet results = ((PreparedStatement) statement).executeQuery();
        return results;
    }
    
    @Override
    public boolean ready() {
        return connection != null;
    }
  
}



/*            while (results.next()) {

                PatientRecor newPR = new PatientRecor(
                        results.getString("firstName"),
                        results.getString("lastName"),
                        results.getString("patientId"),
                        results.getDate("dateofbirth"),
                        results.getString("phonenumber"),
                        results.getString("address"),
                        results.getString("mothersName"),
                        results.getString("photolink"));
                newPRList.add(newPR);
            }*/
