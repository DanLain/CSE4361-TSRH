package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.UpdateSQLBuilder;
import edu.uta.tsrh.model.PendingDate;
import edu.uta.tsrh.model.QueryCondition;

public class UpdatePendingDate
    implements MySQLCmd
{
    private PendingDate pendingDate;

    public UpdatePendingDate(PendingDate pendingDate)
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
        UpdateSQLBuilder updateSQLBuilder = new UpdateSQLBuilder();
        updateSQLBuilder.addFromTableName("pending_dates");
        updateSQLBuilder.addSetCondition(new QueryCondition("pending_date", "=", this.pendingDate.getPendingDate()));
        updateSQLBuilder.addSetCondition(new QueryCondition("pending_location", "=", this.pendingDate
                .getPendingLocation()));
        updateSQLBuilder.addSetCondition(new QueryCondition("reason", "=", this.pendingDate.getReason()));
        updateSQLBuilder.addSetCondition(new QueryCondition("notes", "=", this.pendingDate.getNotes()));

        updateSQLBuilder.addWhereCondition(new QueryCondition("id", "=", this.pendingDate.getId()));
        updateSQLBuilder.construct();
        sqlQuery = updateSQLBuilder.getSQLString();
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
