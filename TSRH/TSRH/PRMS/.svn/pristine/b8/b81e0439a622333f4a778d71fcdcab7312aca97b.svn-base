package edu.uta.tsrh.db.QueryBuilder;

import java.util.ArrayList;

import edu.uta.tsrh.model.QueryCondition;

public class SelectSQLBuilder
    extends WhereConditionBuilder
    implements SQLBuilder

{
    private String selectColumn;

    private String fromTableName;

    private ArrayList<String> joinTableNames;

    private ArrayList<QueryCondition> joinConditions;

    private String sqlQueryString;

    public SelectSQLBuilder()
    {
        super();
        this.selectColumn = null;
        this.fromTableName = null;
        this.joinTableNames = null;
        this.joinConditions = null;
        this.sqlQueryString = null;
    }

    public void addSelectColumn(String selectColumn)
    {
        this.selectColumn = selectColumn;
    }

    public void addFromTableName(String fromTableName)
    {
        this.fromTableName = fromTableName;
    }

    public void addJoinTableName(String innerJoinTableName)
    {
        if (this.joinTableNames == null)
        {
            this.joinTableNames = new ArrayList<String>();
        }
        this.joinTableNames.add(innerJoinTableName);
    }

    public void addJoinCondition(QueryCondition innerJoinCondition)
    {
        if (this.joinConditions == null)
        {
            this.joinConditions = new ArrayList<QueryCondition>();
        }
        this.joinConditions.add(innerJoinCondition);
    }

    @Override
    public void construct()
    {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(" SELECT ");

        if (this.selectColumn.equals("all"))
        {
            stringBuffer.append(" * ");
        }
        else
        {
            stringBuffer.append(this.selectColumn).append(" ");
        }

        stringBuffer.append(" FROM ").append(this.fromTableName).append(" ");

        if (this.joinTableNames != null && this.joinConditions != null)
        {
            for (int i = 0; i < joinTableNames.size(); i++)
            {
                if (i == 0)
                {
                    stringBuffer.append(" INNER JOIN ");
                }
                else
                {
                    stringBuffer.append(" JOIN ");
                }
                stringBuffer.append(this.joinTableNames.get(i)).append(" ON ");
                stringBuffer.append(this.joinConditions.get(i).getQueryForJoinCondition());
            }
        }

        if (this.whereConditions != null)
        {
            stringBuffer.append(getWhereQuery());
        }
        stringBuffer.append(";");
        this.sqlQueryString = stringBuffer.toString();
    }

    @Override
    public String getSQLString()
    {
        return this.sqlQueryString;
    }

}
