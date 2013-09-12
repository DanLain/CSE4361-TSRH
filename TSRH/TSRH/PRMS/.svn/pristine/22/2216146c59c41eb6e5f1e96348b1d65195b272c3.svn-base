package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.DeleteSQLBuilder;
import edu.uta.tsrh.model.QueryCondition;

public class DeletePendingDate
    implements MySQLCmd
{
    private int pendingDateID;

    public DeletePendingDate(int pendingDateID)
    {
        this.pendingDateID = pendingDateID;
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
        DeleteSQLBuilder deleteSQLBuilder = new DeleteSQLBuilder();
        deleteSQLBuilder.addFromTableName("pending_dates");
        deleteSQLBuilder.addWhereCondition(new QueryCondition("id", "=", this.pendingDateID));
        deleteSQLBuilder.construct();
        sqlQuery = deleteSQLBuilder.getSQLString();
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
