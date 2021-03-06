/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.model;

/**
 *
 * @author thePhippsClan
 */
public class PhoneConvRecord{
    
      private String pid;
      private int pcID;
      private String fName;
      private String lName;
      private String DOB;
      private String whoCalled;
      private String subject;
      private String body;
      private String created;
      private String updatedLast;
      
      public PhoneConvRecord(){}
      
      public PhoneConvRecord( int pcid,
                              String patientid, 
                              String fn, 
                              String ln,
                              String dob,
                              String who,
                              String what, 
                              String message,
                              String made, 
                              String lastUpdate){
          
          this.pcID = pcid;
          this.pid = patientid;
          this.fName = fn;
          this.lName = ln;
          this.DOB = dob;
          this.whoCalled = who;
          this.subject = what;
          this.body = message;
          this.created = made;
          this.updatedLast = lastUpdate;
      }
      
      //accessors
      public int    getPCID()        { return this.pcID;   }
      public String    getPID()        { return this.pid;   }
      public String getFirstName()  { return this.fName;}
      public String getLastName()   { return this.lName;}
      public String getDOB()        { return this.DOB;  }
      public String getWhoCalled()  { return this.whoCalled;    }
      public String getSubject()    { return this.subject;      }
      public String getBody()       { return this.body;         }  
      public String getTimeMade()   { return this.created;      }
      public String getLastUpdated(){ return this.updatedLast;  }
      
      
      //mutators
      public void setPCID(int pcid )        { this.pcID = pcid;     }
      public void setPID(String patientid )    { this.pid = patientid;     }
      public void setFirstName(String fn )  { this.fName = fn;  }
      public void setLastName(String ln )   { this.lName = ln;  }
      public void setDOB(String dob )       { this.DOB = dob;   }
      public void setCaller(String c )      { this.whoCalled = c;   }
      public void setSubject(String c )     { this.subject = c;   }
      public void setBody(String c )        { this.body = c;   }
      public String setTimeMade(String c )   { return this.created = c;      }
      public String setLastUpdated(String c ){ return this.updatedLast = c;  }    
}
