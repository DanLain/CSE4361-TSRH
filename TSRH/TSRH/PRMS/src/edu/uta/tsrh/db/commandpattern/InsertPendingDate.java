package edu.uta.tsrh.db.commandpattern;

import java.sql.Timestamp;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.InsertSQLBuilder;
import edu.uta.tsrh.model.PendingDate;

public class InsertPendingDate
    implements MySQLCmd
{
    private PendingDate pendingDate;

    public InsertPendingDate(PendingDate pendingDate)
    {
        this.pendingDate = pendingDate;
    }

    @Override
    public String execute()
    {
        String sqlQuery = buildQuery();
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        int result = queryExecuter.modify(sqlQuery, connection);

        DAO.closeConnection();
        return Integer.toString(result);
    }

    private String buildQuery()
    {
        String sqlQuery = null;
        java.util.Date today = new java.util.Date();
        Timestamp currentDate = new Timestamp(today.getTime());

        String[] pendingDateColumnNames = { "pending_date", "employee_id", "pending_location", "reason", "notes",
                                           "file_id", "created_date" };
        Object[] columnValues = { this.pendingDate.getPendingDate(), this.pendingDate.getEmployeeId(),
                                 this.pendingDate.getPendingLocation(), this.pendingDate.getReason(),
                                 this.pendingDate.getNotes(), this.pendingDate.getFileId(), currentDate };
        InsertSQLBuilder insertSQLBuilder = new InsertSQLBuilder();
        insertSQLBuilder.addFromTableName("pending_dates");
        insertSQLBuilder.addColumnNames(pendingDateColumnNames);
        insertSQLBuilder.addColumnValues(columnValues);
        insertSQLBuilder.construct();
        sqlQuery = insertSQLBuilder.getSQLString();
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
