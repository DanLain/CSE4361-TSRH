
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.SelectSQLBuilder;

import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.db.mapper.AllPatientsMapper;
import edu.uta.tsrh.model.Patient;
import edu.uta.tsrh.model.QueryCondition;
import java.sql.ResultSet;
import java.util.ArrayList;

public class GetPatients implements MySQLCmd {
     

    public GetPatients()
    {
    }

    @Override
    public ArrayList<Patient> execute()
    {        
            ArrayList<Patient> patients = new ArrayList<Patient>();
            
            String sqlQuery = buildQuery();
            Connection connection = DAO.getConnection();
            
            //get patient ID from the DB w/ the given info
            DBQueryExecuter queryExecuter = new DBQueryExecuter();
            ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
            
            Mapper mapper = new AllPatientsMapper();
            patients = (ArrayList<Patient>) mapper.map(resultSet);  
            
            DAO.closeConnection();            
            return patients;                
    }
    
    
     
    private String buildQuery()
    {   
            String sql = null;
            SelectSQLBuilder selectSQLBuilder = new SelectSQLBuilder();
            
            selectSQLBuilder.addSelectColumn("all");
            selectSQLBuilder.addFromTableName("patientrecord");           
            
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


