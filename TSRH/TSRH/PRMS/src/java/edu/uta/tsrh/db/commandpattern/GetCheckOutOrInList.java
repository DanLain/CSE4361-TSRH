/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.FileListMapper;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.model.QueryCondition;
import edu.uta.tsrh.model.SearchResult;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sanjay
 */
public class GetCheckOutOrInList implements MySQLCmd{
    private String fileCheckedInOrOut;
    
    public GetCheckOutOrInList(String fileCheckedInOut)
    {
        this.fileCheckedInOrOut = fileCheckedInOut;
    }
    @Override
    public ArrayList<SearchResult> execute() {
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
        selectSQLBuilder.addSelectColumn("*");
        selectSQLBuilder.addFromTableName("physical_file f");
        selectSQLBuilder.addJoinTableName("patientrecord p");
        selectSQLBuilder.addJoinCondition(new QueryCondition("f.file_id", "=", "p.patientid"));
        
        if (this.fileCheckedInOrOut != null)
        {
            System.out.println("File Chek in  "+this.fileCheckedInOrOut);
            selectSQLBuilder.addWhereCondition(new QueryCondition("f.file_state", "LIKE", this.fileCheckedInOrOut));
        }
       
        selectSQLBuilder.construct();
        sqlQuery = selectSQLBuilder.getSQLString();
        return sqlQuery;
    }

    @Override
    public boolean isReversible() {
        return false;
    }

    @Override
    public void undo() {
    }
    
}
