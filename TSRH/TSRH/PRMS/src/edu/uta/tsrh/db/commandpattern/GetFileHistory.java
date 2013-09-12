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
import edu.uta.tsrh.db.mapper.TransactionMapper;
import edu.uta.tsrh.model.QueryCondition;
import edu.uta.tsrh.model.Transaction;

public class GetFileHistory
    implements MySQLCmd
{
    private int fileID;

    private Timestamp startTime;

    private Timestamp endTime;

    public GetFileHistory(int fileID, String startTime, String endTime)
    {
        this.fileID = fileID;

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
    public ArrayList<Transaction> execute()
    {
        String sqlQuery = buildQuery();
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);

        Mapper mapper = new TransactionMapper();
        ArrayList<Transaction> transactions = (ArrayList<Transaction>) mapper.map(resultSet);

        DAO.closeConnection();
        return transactions;
    }

    private String buildQuery()
    {
        String sqlQuery = null;
        SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
        selectSQLBuilder.addSelectColumn("all");
        selectSQLBuilder.addFromTableName("transactions");

        selectSQLBuilder.addWhereCondition(new QueryCondition("file_id", "=", this.fileID));
        selectSQLBuilder.addWhereCondition(new QueryCondition("time", ">=", this.startTime));
        selectSQLBuilder.addWhereCondition(new QueryCondition("time", "<=", this.endTime));
        selectSQLBuilder.addOrderBy("time DESC");

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
