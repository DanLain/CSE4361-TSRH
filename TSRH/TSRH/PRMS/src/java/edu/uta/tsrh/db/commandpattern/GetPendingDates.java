package edu.uta.tsrh.db.commandpattern;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.db.mapper.PendingDateListMapper;
import edu.uta.tsrh.model.PendingDate;
import edu.uta.tsrh.model.QueryCondition;

public class GetPendingDates
    implements MySQLCmd
{
    private int fileID;

    public GetPendingDates(int fileID)
    {
        this.fileID = fileID;
    }

    @Override
    public ArrayList<PendingDate> execute()
    {
        String sqlQuery = buildQuery();
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);

        Mapper mapper = new PendingDateListMapper();
        ArrayList<PendingDate> pendingDates = (ArrayList<PendingDate>) mapper.map(resultSet);

        DAO.closeConnection();
        return pendingDates;
    }

    private String buildQuery()
    {
        java.util.Date today = new java.util.Date();
        Timestamp currentDate = new Timestamp(today.getTime());
        String sqlQuery = null;
        SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
        selectSQLBuilder.addSelectColumn("all");
        selectSQLBuilder.addFromTableName("pending_dates pd");
        selectSQLBuilder.addJoinTableName("employee e");
        selectSQLBuilder.addJoinCondition(new QueryCondition("pd.employee_id", "=", "e.id"));
        selectSQLBuilder.addWhereCondition(new QueryCondition("pd.pending_date", ">=", currentDate));
        selectSQLBuilder.addWhereCondition(new QueryCondition("pd.file_id", "=", this.fileID));
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
