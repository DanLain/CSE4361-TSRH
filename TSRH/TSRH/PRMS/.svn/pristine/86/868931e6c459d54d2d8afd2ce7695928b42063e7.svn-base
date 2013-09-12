package edu.uta.tsrh.db.commandpattern;

import java.sql.ResultSet;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.FileDetailsMapper;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.model.FileDetail;
import edu.uta.tsrh.model.QueryCondition;

public class GetFileDetails
    implements MySQLCmd
{
    private int fileID;

    public GetFileDetails(int fileID)
    {
        this.fileID = fileID;
    }

    @Override
    public FileDetail execute()
    {
        String sqlQuery = buildQuery();
        System.out.println("query is "+sqlQuery);
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
        
        Mapper mapper = new FileDetailsMapper();
        FileDetail fileDetail = (FileDetail) mapper.map(resultSet);
        
        DAO.closeConnection();
        return fileDetail;
    }

    private String buildQuery()
    {
        String sqlQuery = null;
        SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
        selectSQLBuilder.addSelectColumn("all");
        selectSQLBuilder.addFromTableName("physical_file f");
        selectSQLBuilder.addJoinTableName("patient p");
        selectSQLBuilder.addJoinCondition(new QueryCondition("f.patient_id", "=", "p.id"));
        selectSQLBuilder.addWhereCondition(new QueryCondition("f.id", "=", this.fileID));
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
