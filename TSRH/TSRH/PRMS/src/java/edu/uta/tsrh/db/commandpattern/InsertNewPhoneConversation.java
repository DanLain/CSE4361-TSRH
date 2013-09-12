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

public class InsertNewPhoneConversation implements MySQLCmd {

    private String pID;
    private String caller;
    private String subj;
    private String body;

    public InsertNewPhoneConversation(String patientID, String whoCalled, String topic, String whatWasSaid) {
        this.pID = patientID;
        this.caller = whoCalled;
        this.subj = topic;
        this.body = whatWasSaid;
    }

    @Override
    public String execute() {
        String sqlQuery = buildQuery();
        Connection connection = DAO.getConnection();

        //get patient ID from the DB w/ the given info
        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        int result = queryExecuter.modify(sqlQuery, connection);

        DAO.closeConnection();
        return sqlQuery;


    }

    private String buildQuery() {

        String sqlQuery = null;
        java.util.Date today = new java.util.Date();
        Timestamp currentDate = new Timestamp(today.getTime());

        String[] phoneConvColumns = {"patientid", "caller", "subject", "conversation", "last_update"};
        Object[] columnValues = {this.pID, this.caller, this.subj, this.body, currentDate};

        InsertSQLBuilder insertSQLBuilder = new InsertSQLBuilder();
        insertSQLBuilder.addFromTableName("phone_conversation");
        insertSQLBuilder.addColumnNames(phoneConvColumns);
        insertSQLBuilder.addColumnValues(columnValues);
        insertSQLBuilder.construct();
        sqlQuery = insertSQLBuilder.getSQLString();
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
