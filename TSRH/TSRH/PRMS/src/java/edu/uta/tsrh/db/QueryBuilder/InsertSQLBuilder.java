package edu.uta.tsrh.db.QueryBuilder;

public class InsertSQLBuilder
    implements SQLBuilder
{
    private String fromTableName;

    private String[] columnNames;

    private Object[] columnValues;

    private String sqlQueryString;

    public InsertSQLBuilder()
    {
        super();
        this.fromTableName = null;
        this.columnNames = null;
        this.columnValues = null;
        this.sqlQueryString = null;
    }

    public void addFromTableName(String fromTableName)
    {
        this.fromTableName = fromTableName;
    }

    public void addColumnNames(String[] columnNames)
    {
        this.columnNames = columnNames;
    }

    public void addColumnValues(Object[] columnValues)
    {
        this.columnValues = columnValues;
    }

    @Override
    public void construct()
    {
        StringBuffer sqlQuery = new StringBuffer();
        sqlQuery.append("INSERT INTO ");
        sqlQuery.append(this.fromTableName);
        sqlQuery.append(" ( ");
        for (int i = 0; i < this.columnNames.length; i++)
        {
            sqlQuery.append(this.columnNames[i]);
            if (this.columnNames.length - 1 != i)
            {
                sqlQuery.append(",");
            }
        }
        sqlQuery.append(" ) ");
        sqlQuery.append(" VALUES ");
        sqlQuery.append(" ( ");
        for (int i = 0; i < this.columnValues.length; i++)
        {
            if (this.columnValues[i] != null)
            {
                sqlQuery.append("'" + this.columnValues[i] + "'");
            }
            else
            {
                sqlQuery.append(this.columnValues[i]);
            }
            if (this.columnValues.length - 1 != i)
            {
                sqlQuery.append(",");
            }
        }
        sqlQuery.append(" ); ");
        this.sqlQueryString = sqlQuery.toString();
    }

    @Override
    public String getSQLString()
    {
        return this.sqlQueryString;
    }

}
