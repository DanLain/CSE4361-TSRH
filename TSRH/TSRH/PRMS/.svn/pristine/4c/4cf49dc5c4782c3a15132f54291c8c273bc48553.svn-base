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
                employee.setId((int) resultSet.getInt("id"));
                employee.setFirstName((String) resultSet.getString("first_name"));
                employee.setLastName((String) resultSet.getString("last_name"));
                employee.setDesignation((String) resultSet.getString("designation"));
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
