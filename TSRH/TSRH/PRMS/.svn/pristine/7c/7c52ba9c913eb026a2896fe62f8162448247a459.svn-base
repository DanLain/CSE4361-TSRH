package edu.uta.tsrh.db.commandpattern;

import java.sql.Timestamp;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.InsertSQLBuilder;
import edu.uta.tsrh.model.Transaction;

public class InsertTransaction
    implements MySQLCmd
{
    private Transaction transaction;

    public InsertTransaction(Transaction transaction)
    {
        this.transaction = transaction;
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

        String[] transactionColumnNames = { "employee_id", "type", "time", "return_date", "reason", "notes",
                                           "location", "file_id", "created_date" };
        Object[] columnValues = { this.transaction.getEmployeeID(), this.transaction.getType(),
                                 this.transaction.getDate(), this.transaction.getReturnDate(),
                                 this.transaction.getReason(), this.transaction.getNotes(),
                                 this.transaction.getLocation(), this.transaction.getFileID(), currentDate };
        InsertSQLBuilder insertSQLBuilder = new InsertSQLBuilder();
        insertSQLBuilder.addFromTableName("transactions");
        insertSQLBuilder.addColumnNames(transactionColumnNames);
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
