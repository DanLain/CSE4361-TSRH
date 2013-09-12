package edu.uta.tsrh.model;

public class QueryCondition
{
    String expression1;

    String operand;

    Object expression2;

    public QueryCondition(String expression1, String operand, Object expression2)
    {
        this.expression1 = expression1;
        this.operand = operand;
        this.expression2 = expression2;
    }

    public String getExpression1()
    {
        return expression1;
    }

    public void setExpression1(String expression1)
    {
        this.expression1 = expression1;
    }

    public String getOperand()
    {
        return operand;
    }

    public void setOperand(String operand)
    {
        this.operand = operand;
    }

    public Object getExpression2()
    {
        return expression2;
    }

    public void setExpression2(String expression2)
    {
        this.expression2 = expression2;
    }

    public String getQueryCondition()
    {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(" ").append(this.expression1);
        stringBuffer.append(" ").append(this.operand);
        if (this.operand.equals("LIKE") && this.expression2!=null)
        {
            stringBuffer.append(" '").append(this.expression2).append("%' ");
        }
        else if(this.expression2!=null)
        {
            stringBuffer.append(" '").append(this.expression2).append("' ");
        }
        else
        {
            stringBuffer.append(this.expression2);
        }

        return stringBuffer.toString();
    }

    public String getQueryForJoinCondition()
    {
        StringBuffer stringBuffer = new StringBuffer();

        stringBuffer.append(" ").append(this.expression1);
        stringBuffer.append(" ").append(this.operand);
        stringBuffer.append(" ").append(this.expression2).append(" ");

        return stringBuffer.toString();
    }

}
