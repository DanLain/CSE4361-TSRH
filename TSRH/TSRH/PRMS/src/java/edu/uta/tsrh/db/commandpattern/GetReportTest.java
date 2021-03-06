package edu.uta.tsrh.db.commandpattern;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import edu.uta.tsrh.model.Tests;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.db.mapper.PendingFilesMapper;
import edu.uta.tsrh.db.mapper.ReportTestMapper;
import edu.uta.tsrh.model.PendingFiles;
import edu.uta.tsrh.model.QueryCondition;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GetReportTest
implements MySQLCmd
{

 private Timestamp startTime;

 private Timestamp endTime;

 public GetReportTest(String startTime, String endTime)
 {        
    
     try
     {
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy hh:mm:ss");         
        java.util.Date date1 = sdf.parse(startTime); 
        java.util.Date date2 = sdf.parse(endTime);         
        java.sql.Timestamp timest1 = new java.sql.Timestamp(date1.getTime()); 
        java.sql.Timestamp timest2 = new java.sql.Timestamp(date2.getTime());         
        this.startTime = timest1;
        this.endTime = timest2;      
     }
     catch (ParseException e)
     {
         e.printStackTrace();
     }
 }

 
 public ArrayList<Tests> execute()
 {    
     String sqlQuery = buildQuery();     
     System.out.println("query is " + sqlQuery);     
     Connection connection = DAO.getConnection();     
     DBQueryExecuter queryExecuter = new DBQueryExecuter();     
     ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
        
     Mapper mapper = new ReportTestMapper();     
     ArrayList<Tests> testFiles = (ArrayList<Tests>) mapper.map(resultSet);    
     DAO.closeConnection();     
     return testFiles;
 }

 private String buildQuery()
 {
     String sqlQuery = null;
     SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
     selectSQLBuilder.addSelectColumn(" t.patientid_testrequest, p.patientid, p.firstname, p.lastname, t.testname, t.testrequestername ,t.userid,t.stafftobeinformed,t.testrequestdate,t.expectedresultdate");
     selectSQLBuilder.addFromTableName("test_request_record t");
     selectSQLBuilder.addJoinTableName("patientrecord p");
     selectSQLBuilder.addJoinCondition(new QueryCondition("p.patientid", "=", "t.patientid_testrequest"));
     
     selectSQLBuilder.addWhereCondition(new QueryCondition("t.testrequestdate", ">=", this.startTime));
     selectSQLBuilder.addWhereCondition(new QueryCondition("t.expectedresultdate", "<=", this.endTime));

     selectSQLBuilder.construct();
     sqlQuery = selectSQLBuilder.getSQLString();
     return sqlQuery;
 }

  @Override
 public boolean isReversible()
 {
     return false;
 }

 @Override
 public void undo()
 {

 }
}
