package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import edu.uta.tsrh.model.Transaction;

public class TransactionMapper
    implements Mapper
{
    public TransactionMapper()
    {}

    @Override
    public ArrayList<Transaction> map(ResultSet resultSet)
    {
        ArrayList<Transaction> transactions = new ArrayList<Transaction>();
        if (resultSet != null)
        {
            try
            {
                while (resultSet.next())
                {
                    Transaction transaction = new Transaction();
                    transaction.setId((int) resultSet.getInt("id"));
                    transaction.setEmployeeID((int) resultSet.getInt("employee_id"));
                    transaction.setType((String) resultSet.getString("type"));
                    transaction.setDate((Timestamp) resultSet.getTimestamp("time"));
                    transaction.setReturnDate((Timestamp) resultSet.getTimestamp("return_date"));
                    transaction.setReason((String) resultSet.getString("reason"));
                    transaction.setNotes((String) resultSet.getString("notes"));
                    transaction.setLocation((String) resultSet.getString("location"));
                    transaction.setFileID((int) resultSet.getInt("file_id"));
                    transactions.add(transaction);
                }
            }
            catch (SQLException e)
            {
                e.printStackTrace();
            }
            finally
            {
                try
                {
                    resultSet.close();
                }
                catch (SQLException e)
                {
                    e.printStackTrace();
                }
            }
        }
        return transactions;
    }

}
