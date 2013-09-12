package edu.uta.tsrh.db.commandpattern;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;

import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.FileListMapper;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.model.QueryCondition;
import edu.uta.tsrh.model.SearchResult;

public class GetSearchFileList
    implements MySQLCmd
{
    private int fileID;

    private String patientFirstName;

    private String patientLastName;

    private Date patientDateOfBirth;

    public GetSearchFileList(int fileID, String patientFirstName, String patientLastName, Date patientDateOfBirth)
    {
        this.fileID = fileID;
        this.patientFirstName = patientFirstName;
        this.patientLastName = patientLastName;
        this.patientDateOfBirth = patientDateOfBirth;
    }

    @Override
    public ArrayList<SearchResult> execute()
    {
        String sqlQuery = buildQuery();
        System.out.println("query is "+sqlQuery);
        Connection connection = DAO.getConnection();

        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
        
        Mapper mapper = new FileListMapper();
        ArrayList<SearchResult> searchResultList = (ArrayList<SearchResult>) mapper.map(resultSet);
        
        DAO.closeConnection();
        return searchResultList;
    }

    private String buildQuery()
    {
        String sqlQuery = null;
        SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
        selectSQLBuilder.addSelectColumn("all");
        selectSQLBuilder.addFromTableName("physical_file f");
        selectSQLBuilder.addJoinTableName("patient p");
        selectSQLBuilder.addJoinCondition(new QueryCondition("f.patient_id", "=", "p.id"));
        
        if (this.fileID > 0)
        {
            selectSQLBuilder.addWhereCondition(new QueryCondition("f.id", "=", this.fileID));
        }
        if (this.patientFirstName != null)
        {
            selectSQLBuilder.addWhereCondition(new QueryCondition("p.first_name", "LIKE", this.patientFirstName));
        }
        if (this.patientLastName != null)
        {
            selectSQLBuilder.addWhereCondition(new QueryCondition("p.last_name", "LIKE", this.patientLastName));
        }
        if (this.patientDateOfBirth != null)
        {
            selectSQLBuilder.addWhereCondition(new QueryCondition("p.dob", "=", this.patientDateOfBirth));
        }
        
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
