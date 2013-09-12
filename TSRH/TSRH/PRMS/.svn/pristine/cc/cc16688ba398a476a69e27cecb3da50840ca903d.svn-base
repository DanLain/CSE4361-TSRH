package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;

import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.db.mapper.PhoneConvMapper;
import edu.uta.tsrh.model.PhoneConvRecord;
import edu.uta.tsrh.model.QueryCondition;
import java.sql.ResultSet;
import java.util.ArrayList;

public class GetPhoneConversation implements MySQLCmd {
     
    int PCID;
    
    public GetPhoneConversation(int i)
    {
        this.PCID = i;
    }

    @Override
    public PhoneConvRecord execute()
    {        
            
            
            String sqlQuery = buildQuery();
            Connection connection = DAO.getConnection();
            
            //get patient ID from the DB w/ the given info
            DBQueryExecuter queryExecuter = new DBQueryExecuter();
            ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
            
            Mapper mapper = new PhoneConvMapper();
            PhoneConvRecord pcr = (PhoneConvRecord) mapper.map(resultSet);  
            
                        
            DAO.closeConnection();            
            return pcr;                
           
    }
    
    
     
    private String buildQuery()
    {   
            String sql = null;
            SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
            
            selectSQLBuilder.addSelectColumn("all");
          
            selectSQLBuilder.addFromTableName("patientrecord");     
            selectSQLBuilder.addJoinTableName("phone_conversation");
            selectSQLBuilder.addJoinCondition(new QueryCondition("patientrecord.patientid","=", "phone_conversation.patientid"));
            selectSQLBuilder.addWhereCondition(new QueryCondition("phone_conversation.pcID", "=", PCID ));           
            
            selectSQLBuilder.construct();
            sql = selectSQLBuilder.getSQLString();  
            
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


