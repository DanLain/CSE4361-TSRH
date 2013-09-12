package edu.uta.tsrh.db.QueryBuilder;

import java.util.ArrayList;

import edu.uta.tsrh.model.QueryCondition;

public abstract class WhereConditionBuilder
{
    protected ArrayList<QueryCondition> whereConditions;

    protected String orderBy;

    protected String groupBy;

    protected QueryCondition havingCondition;

    public void addWhereCondition(QueryCondition whereCondition)
    {
        if(this.whereConditions == null)
        {
            this.whereConditions = new ArrayList<QueryCondition>();
        }
        this.whereConditions.add(whereCondition);
    }

    public void addOrderBy(String orderBy)
    {
        this.orderBy = orderBy;
    }

    public void addGroupBy(String groupBy)
    {
        this.groupBy = groupBy;
    }

    public void addHavingCondition(QueryCondition havingCondition)
    {
        this.havingCondition = havingCondition;
    }

    public String getWhereQuery()
    {
        StringBuffer whereString = new StringBuffer();
        whereString.append(" WHERE ");
        for (int i = 0; i < whereConditions.size(); i++)
        {
            QueryCondition condition = whereConditions.get(i);
            whereString.append(condition.getQueryCondition());

            if (whereConditions.size() - 1 != i)
            {
                whereString.append(" AND ");
            }
        }

        if (orderBy != null)
        {
            whereString.append(" ORDER BY ").append(orderBy).append(" ");
        }

        if (groupBy != null)
        {
            whereString.append(" GROUP BY ").append(groupBy).append(" ");
        }

        if (havingCondition != null)
        {
            whereString.append(havingCondition.getExpression1()).append(" ").append(havingCondition.getOperand())
                    .append(" ").append(havingCondition.getExpression2()).append(" ");
        }

        return whereString.toString();
    }
}
