package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.QueryBuilder.UpdateSQLBuilder;
import edu.uta.tsrh.model.QueryCondition;
import java.sql.Timestamp;

public class UpdatePhoneConversation implements MySQLCmd {

    private String pcID;
    private String caller;
    private String subj;
    private String body;

    public UpdatePhoneConversation()
    {
        this.pcID = "";
        this.caller = "";
        this.subj = "";
        this.body = "";
    }
    
    public UpdatePhoneConversation(String pcrID, String whoCalled, String topic, String whatWasSaid) {
        this.pcID = pcrID;
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

        UpdateSQLBuilder updateSQLBuilder = new UpdateSQLBuilder();
        updateSQLBuilder.addFromTableName("phone_conversation");
        updateSQLBuilder.addSetCondition(new QueryCondition("caller", "=", this.caller));
        updateSQLBuilder.addSetCondition(new QueryCondition("subject", "=", this.subj));
        updateSQLBuilder.addSetCondition(new QueryCondition("conversation", "=", this.body));
        updateSQLBuilder.addSetCondition(new QueryCondition("last_update", "=", currentDate));

        updateSQLBuilder.addWhereCondition(new QueryCondition("pcID", "=", this.pcID));
        updateSQLBuilder.construct();
        sqlQuery = updateSQLBuilder.getSQLString();
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
