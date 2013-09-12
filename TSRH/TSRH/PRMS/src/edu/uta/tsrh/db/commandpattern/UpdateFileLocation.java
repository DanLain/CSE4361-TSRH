package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.UpdateSQLBuilder;
import edu.uta.tsrh.model.QueryCondition;

public class UpdateFileLocation
    implements MySQLCmd
{
    private String location;

    private String fileState;

    private int fileID;

    public UpdateFileLocation(String location, String fileState, int fileID)
    {
        this.location = location;
        this.fileState = fileState;
        this.fileID = fileID;
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
        updateSQLBuilder.addFromTableName("physical_file");
        updateSQLBuilder.addSetCondition(new QueryCondition("location", "=", this.location));
        updateSQLBuilder.addSetCondition(new QueryCondition("file_state", "=", this.fileState));
        updateSQLBuilder.addWhereCondition(new QueryCondition("id", "=", this.fileID));
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
