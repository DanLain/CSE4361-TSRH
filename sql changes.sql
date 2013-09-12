UPDATE `alertsystem`.`resources` SET `resourceName` = 'Alert Management', `resourceURL` = 'AlertManagement.jsp' WHERE `resources`.`resourceId` = 4;

CREATE TABLE alertvacation (      Vacation_Id int NOT NULL AUTO_INCREMENT,
                                                       Vacation_title VARCHAR(50),
                                                       Created_by_userid VARCHAR(32), 
                                                       Vacation_from DATE, 
                                                       Vacation_to DATE, 
                                                       Forward_to_userid VARCHAR(32),
                                                       Message VARCHAR(800),
                                                       Created_on_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                                                       PRIMARY KEY (Vacation_Id) 
                                                       );
ALTER TABLE `patientrecord` ADD `photolink` VARCHAR( 64 ) NULL;
ALTER TABLE `patientrecord` ADD `pdflink` VARCHAR( 64 ) NULL;
ALTER TABLE `consultation_record` ADD `recordlink` VARCHAR( 64 ) NULL;
ALTER TABLE `test_request_record` ADD `testrecordlink` VARCHAR( 64 ) NULL;
