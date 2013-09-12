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

public class GetCurrentDaysPendingFiles
implements MySQLCmd
{

 private Timestamp startTime;

 private Timestamp endTime;

 public GetCurrentDaysPendingFiles(String startTime, String endTime)
 {
     DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
     try
     {
         this.startTime = new Timestamp(dateFormat.parse(startTime).getTime());
         this.endTime = new Timestamp(dateFormat.parse(endTime).getTime());
     }
     catch (ParseException e)
     {
         e.printStackTrace();
     }
 }

 @Override
 public ArrayList<PendingFiles> execute()
 {
     String sqlQuery = buildQuery();
     System.out.println("query is " + sqlQuery);
     Connection connection = DAO.getConnection();

     DBQueryExecuter queryExecuter = new DBQueryExecuter();
     ResultSet resultSet = queryExecuter.read(sqlQuery, connection);

     Mapper mapper = new PendingFilesMapper();
     ArrayList<PendingFiles> pendingFiles = (ArrayList<PendingFiles>) mapper.map(resultSet);

     DAO.closeConnection();
     return pendingFiles;
 }

 private String buildQuery()
 {
     String sqlQuery = null;
     SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
     selectSQLBuilder.addSelectColumn(" f.id AS file_id, p.first_name AS p_first, p.last_name AS p_last, pd.reason, pd.pending_location, pd.pending_date, e.first_name AS emp_first, e.last_name AS emp_last ");
     selectSQLBuilder.addFromTableName("physical_file f");
     selectSQLBuilder.addJoinTableName("pending_dates pd");
     selectSQLBuilder.addJoinCondition(new QueryCondition("f.id", "=", "pd.file_id"));
     selectSQLBuilder.addJoinTableName("patient p");
     selectSQLBuilder.addJoinCondition(new QueryCondition("p.id", "=", "f.patient_id"));
     selectSQLBuilder.addJoinTableName("employee e");
     selectSQLBuilder.addJoinCondition(new QueryCondition("pd.employee_id", "=", "e.id"));
     
     selectSQLBuilder.addWhereCondition(new QueryCondition("pd.pending_date", ">=", this.startTime));
     selectSQLBuilder.addWhereCondition(new QueryCondition("pd.pending_date", "<=", this.endTime));

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
