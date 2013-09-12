package edu.uta.tsrh.db.QueryBuilder;

import java.util.ArrayList;

import edu.uta.tsrh.model.QueryCondition;

public class UpdateSQLBuilder
    extends WhereConditionBuilder
    implements SQLBuilder
{
    private String fromTableName;
    
    private ArrayList<QueryCondition> setConditions;

    private String sqlQueryString;
    
    public UpdateSQLBuilder()
    {
        super();
        this.fromTableName = null;
        this.sqlQueryString = null;
        this.setConditions = null;
    }
    
    public void addFromTableName(String fromTableName)
    {
        this.fromTableName = fromTableName;
    }

    public void addSetCondition(QueryCondition setCondition)
    {
        if(this.setConditions == null)
        {
            this.setConditions = new ArrayList<QueryCondition>();
        }
        this.setConditions.add(setCondition);
    }
    
    @Override
    public void construct()
    {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(" UPDATE ");
        stringBuffer.append(this.fromTableName);
        stringBuffer.append(" SET ");
        
        for (int i = 0; i < setConditions.size(); i++)
        {
            QueryCondition condition = setConditions.get(i);
            stringBuffer.append(condition.getQueryCondition());

            if (setConditions.size() - 1 != i)
            {
                stringBuffer.append(" , ");
            }
        }
        
        stringBuffer.append(getWhereQuery());
        stringBuffer.append(";");
        this.sqlQueryString = stringBuffer.toString();
    }

    @Override
    public String getSQLString()
    {
        return this.sqlQueryString;
    }

}
