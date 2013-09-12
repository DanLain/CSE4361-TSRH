/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.model;

/**
 *
 * @author Arjun Radhakrishnan
 */
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Consults
{

    private Timestamp dateofconsultation;
    private int consultationid;
    private String patientid_consultation;
    private String whomconsulted;
    private String patientName;

    public Consults()
    {
        super();
    }

    public Consults(int consultationid,String patientid_consultation, String Fname, String Lname, String whomconsulted, Timestamp dateofconsultation)
    {
        this.consultationid = consultationid;
        this.patientid_consultation = patientid_consultation;
        this.whomconsulted = whomconsulted;
        this.dateofconsultation = dateofconsultation;
        this.patientName = Lname + "," + Fname;

    }
    
        public Consults(int consultationid,String patientid_consultation, String patient_name, String whomconsulted, Timestamp dateofconsultation)
    {
        this.consultationid = consultationid;
        this.patientid_consultation = patientid_consultation;
        this.whomconsulted = whomconsulted;
        this.dateofconsultation = dateofconsultation;
        this.patientName = patient_name;

    }
    
    
    public String getPatientName()
    {
        return patientName;
    }
    public void setPatientName(String patientName)
    {
        this.patientName = patientName;
    }       
              
    public int getConsultationId()
    {
        return consultationid;
    }

    public void setConsultationId(int consultationid)
    {
        this.consultationid = consultationid;
    }
        public String getPatientId()
    {
        return patientid_consultation;
    }

    public void setPatientId(String patientid_consultation)
    {
        this.patientid_consultation = patientid_consultation;
    }

    public String getWhomConsulted() {
        
        return whomconsulted;
    }
     
    public void setWhomConsulted(String whomconsulted) {
        
        this.whomconsulted = whomconsulted;
    }
    
    public String getDateOfConsultation()
    {
        SimpleDateFormat dateFormat = new SimpleDateFormat("M/dd/yyyy");
        return dateFormat.format( this.dateofconsultation );
    }

    public void setDateOfConsultation(Timestamp dateofconsultation)
    {
        this.dateofconsultation = dateofconsultation;
    }

}
