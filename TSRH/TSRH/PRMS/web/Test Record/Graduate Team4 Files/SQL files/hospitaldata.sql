create table patientrecord
(
   patientid int AUTO_INCREMENT PRIMARY KEY,
   lastname varchar(25),
   firstname varchar(25),
   dateofbirth DATE,
   phonenumber varchar(25),
   address varchar(25),
   mothersname varchar(25)
);


create table test_request_record
(
     testrequestid int AUTO_INCREMENT PRIMARY KEY,
     patientid_testrequest int,
     testname varchar(50),
     testrequestername varchar(50),
     testrequestdate DATE,  
     expectedresultdate DATE,
     expectedresult varchar(50),
     istesttaken varchar(30),
     istestresultsubmitted varchar(30),
     remindernote varchar(25),
     reminderdate DATE,
     comments varchar(150),
     userid varchar(25),
     FOREIGN KEY(patientid_testrequest) REFERENCES patientrecord(patientid)
);
     


create table test_result_record
(
   testresultid int AUTO_INCREMENT PRIMARY KEY,
   test_result_requestid int,
   testtakendate DATE,
   resultdate DATE,
   result  varchar(50),
   resultfilepath varchar(50),
   whoistobeinformed varchar(50),
   whentobeinformed varchar(50),
   informed varchar(30),
   remindernote varchar(150),
   reminderdate DATE,
   comments varchar(150),
   userid varchar(50),
   FOREIGN KEY(test_result_requestid) REFERENCES test_request_record(testrequestid)
);



create table consultation_record
(
  consultationid int AUTO_INCREMENT PRIMARY KEY,
  patientid_consultation int,
  dateofconsultation DATE,
  whomconsulted varchar(50),
  consultedfor varchar(50),
  prescription varchar(50),
  consultationremindernote varchar(50),
  consultationreminderdate DATE,
  consultationcomments varchar(150),
  userid varchar(25),  
  FOREIGN KEY(patientid_consultation) REFERENCES patientrecord(patientid)
);
     
     
