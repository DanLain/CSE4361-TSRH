package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import edu.uta.tsrh.model.Employee;

public class EmployeeMapper
    implements Mapper
{
    public EmployeeMapper()
    {}

    @Override
    public Employee map(ResultSet resultSet)
    {
        Employee employee = new Employee();
        try
        {
            while (resultSet.next())
            {
                employee.setId((int) resultSet.getInt("userId"));
                employee.setFirstName((String) resultSet.getString("firstName"));
                employee.setLastName((String) resultSet.getString("lastName"));
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
        return employee;
    }
}
