
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;
import edu.uta.tsrh.db.mapper.pidMap;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.model.QueryCondition;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class RetrievePID implements MySQLCmd {
    
    private String fName;    
    private String lName;
    private Date dob;

    public RetrievePID(String fn, String ln, Date bd)
    {
        this.fName = fn;
        this.lName = ln;
        this.dob = bd;
        
    }

    @Override
    public String execute() {
        String sqlQuery = buildQuery();
        Connection connection = DAO.getConnection();

        //get patient ID from the DB w/ the given info
        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);

        String pid = "";
        try {
            while (resultSet.next()) {
                pid = resultSet.getString("patientid");
            }
        } catch (SQLException ex) {
            Logger.getLogger(RetrievePID.class.getName()).log(Level.SEVERE, null, ex);
        }

        return pid;
    }

    private String buildQuery()
    {
            SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
            
            selectSQLBuilder.addSelectColumn("patientid");
            selectSQLBuilder.addFromTableName("patientrecord");
            
            selectSQLBuilder.addWhereCondition(new QueryCondition("firstname", "=", this.fName));
            selectSQLBuilder.addWhereCondition(new QueryCondition("lastname", "=", this.lName));
            selectSQLBuilder.addWhereCondition(new QueryCondition("dateofbirth", "=", this.dob));
            
            selectSQLBuilder.construct();
            String sql = selectSQLBuilder.getSQLString();  
            
            return sql;
            
            
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
