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
import edu.uta.tsrh.model.PendingFiles;
import edu.uta.tsrh.model.QueryCondition;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GetCurrentDaysPendingFiles
implements MySQLCmd
{
 String startTime, endTime;

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }
 

 @Override
 public ArrayList<PendingFiles> execute()
 {
    
     String sqlQuery = buildQuery();
    sqlQuery = sqlQuery.replace(';', ' ');
   
     sqlQuery = sqlQuery + " "+ "GROUP BY file_id ";
 System.out.println("query is " + sqlQuery);
     Connection connection = DAO.getConnection();

     DBQueryExecuter queryExecuter = new DBQueryExecuter();
     ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
    
     
  Mapper mapper = new PendingFilesMapper();  
     ArrayList<PendingFiles> pendingFiles = (ArrayList<PendingFiles>) mapper.map(resultSet);;
     DAO.closeConnection();
     return pendingFiles;
 
 }
 
 public String testTimeStamp(String timer)
 {
      timer = timer.replace('/', '-');     
     
    String[] test= timer.split(" ");
    String testdate = test[0];
    String testtime = test[1];
   String[] str_array = testdate.split("-");
   String yy = str_array[0];
   String mm = str_array[1];
   String dd = str_array[2];
//   String Timestampfinal =yymin+"-"+mm+"-"+dd+" "+testtime;
      String Timestampfinal =testdate+" "+testtime;      
 return Timestampfinal;
 }
 

 private String buildQuery()
 {
     String sqlQuery = null;
     //System.out.println("Start TIme"+testTimeStamp(startTime)+"End Time"+testTimeStamp(endTime));
     SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
     selectSQLBuilder.addSelectColumn(" f.file_id AS file_id, p.firstname AS p_first, p.lastname AS p_last, pd.reason, pd.location, MAX(pd.return_date), u.firstName AS usr_first, u.lastName AS usr_last ");
     selectSQLBuilder.addFromTableName("physical_file f");
     selectSQLBuilder.addJoinTableName("transactions pd");
     selectSQLBuilder.addJoinCondition(new QueryCondition("f.file_id", "=", "pd.file_id"));
     selectSQLBuilder.addJoinTableName("patientrecord p");
     selectSQLBuilder.addJoinCondition(new QueryCondition("p.patientid", "=", "f.file_id"));
     selectSQLBuilder.addJoinTableName("user u");
     selectSQLBuilder.addJoinCondition(new QueryCondition("pd.employee_id", "=", "u.userID"));
     
     selectSQLBuilder.addWhereCondition(new QueryCondition("pd.return_date", ">=", testTimeStamp(startTime)));
     selectSQLBuilder.addWhereCondition(new QueryCondition("pd.return_date", "<=", testTimeStamp(endTime)));
     
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
