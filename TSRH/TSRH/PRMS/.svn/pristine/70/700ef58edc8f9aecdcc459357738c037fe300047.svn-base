
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.InsertSQLBuilder;
import edu.uta.tsrh.db.mapper.pidMap;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.model.QueryCondition;
import java.sql.ResultSet;
import java.sql.Timestamp;
 import edu.uta.tsrh.model.PhoneConvRecord;


public class ArchivePhoneRecord implements MySQLCmd {
    
    private int pcID;
    private String pID;    
    private String caller;
    private String subj;
    private String body;
    private String created; 
    private String lastUpdate;
    

    public ArchivePhoneRecord(PhoneConvRecord p)
    {
        this.pcID = p.getPCID();
        this.pID = p.getPID();
        this.caller = p.getWhoCalled();
        this.subj = p.getSubject();
        this.body = p.getBody();
        this.created = p.getTimeMade();
        this.lastUpdate = p.getLastUpdated();
    }

    @Override
    public String execute()
    {        
            String sqlQuery = buildQuery();
            Connection connection = DAO.getConnection();
            
            //get patient ID from the DB w/ the given info
            DBQueryExecuter queryExecuter = new DBQueryExecuter();
            int result = queryExecuter.modify(sqlQuery, connection);                      
            
            DAO.closeConnection();            
            return sqlQuery;    
        
    }

    private String buildQuery()
    {   
        
        String sqlQuery = null;
        java.util.Date today = new java.util.Date();
        Timestamp currentDate = new Timestamp(today.getTime());

        String[] phoneConvColumns = { "arch_pcID" ,"patientid", "caller", "subject", "conversation", "creation_time","last_update", "archived"};
        Object[] columnValues = { this.pcID, this.pID, this.caller, this.subj, this.body , this.created, this.lastUpdate , currentDate};
        
        InsertSQLBuilder insertSQLBuilder = new InsertSQLBuilder();
        insertSQLBuilder.addFromTableName("phone_conversation_archive");
        insertSQLBuilder.addColumnNames(phoneConvColumns);
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


