package edu.uta.tsrh.db.commandpattern;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.db.mapper.PendingFilesMapper;
import edu.uta.tsrh.db.mapper.ReportConsultMapper;
import edu.uta.tsrh.model.Consults;
import edu.uta.tsrh.model.PendingFiles;
import edu.uta.tsrh.model.QueryCondition;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GetReportConsult
implements MySQLCmd
{

 private Timestamp startTime;

 private Timestamp endTime;

 public GetReportConsult(String startTime, String endTime)
 {
     DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
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

 @Override
 public ArrayList<Consults> execute()
 {
     String sqlQuery = buildQuery();
     System.out.println("query is " + sqlQuery);
     Connection connection = DAO.getConnection();

     DBQueryExecuter queryExecuter = new DBQueryExecuter();
     ResultSet resultSet = queryExecuter.read(sqlQuery, connection);

     Mapper mapper = new ReportConsultMapper();
     ArrayList<Consults> consultsFiles = (ArrayList<Consults>) mapper.map(resultSet);

     DAO.closeConnection();
     return consultsFiles;
 }

 private String buildQuery()
 {
     String sqlQuery = null;
     SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
     selectSQLBuilder.addSelectColumn(" c.consultationid, c.patientid_consultation, p.patientid, p.firstname, p.lastname, c.dateofconsultation ,c.whomconsulted");
     selectSQLBuilder.addFromTableName("consultation_record c");
     selectSQLBuilder.addJoinTableName("patientrecord p");
     selectSQLBuilder.addJoinCondition(new QueryCondition("p.patientid", "=","c.patientid_consultation"));
     
     selectSQLBuilder.addWhereCondition(new QueryCondition("c.dateofconsultation", ">=", this.startTime));
     selectSQLBuilder.addWhereCondition(new QueryCondition("c.dateofconsultation", "<=", this.endTime));
     
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
