package edu.uta.tsrh.db.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import edu.uta.tsrh.model.Employee;

public class EmployeeListMapper
    implements Mapper
{
    public EmployeeListMapper()
    {}

    @Override
    public ArrayList<Employee> map(ResultSet resultSet)
    {
        ArrayList<Employee> employeeList = new ArrayList<Employee>();
        try
        {
            while (resultSet.next())
            {
                Employee employee = new Employee();
                employee.setId((int) resultSet.getInt("id"));
                employee.setFirstName((String) resultSet.getString("first_name"));
                employee.setLastName((String) resultSet.getString("last_name"));
                employee.setDesignation((String) resultSet.getString("designation"));
                employeeList.add(employee);
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
        return employeeList;
    }
}
