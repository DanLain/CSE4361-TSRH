package edu.uta.tsrh.db.QueryBuilder;


public class DeleteSQLBuilder
    extends WhereConditionBuilder
    implements SQLBuilder
{

    private String fromTableName;

    private String sqlQueryString;

    public DeleteSQLBuilder()
    {
        super();
        this.fromTableName = null;
        this.sqlQueryString = null;
    }

    public void addFromTableName(String fromTableName)
    {
        this.fromTableName = fromTableName;
    }

    @Override
    public void construct()
    {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(" DELETE FROM ");
        stringBuffer.append(this.fromTableName);
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
