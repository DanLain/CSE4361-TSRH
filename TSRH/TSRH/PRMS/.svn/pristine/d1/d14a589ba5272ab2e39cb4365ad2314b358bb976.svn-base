/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package alertsystemdatabase;

import java.util.List;

/**
 *
 * @author vivek lingegowda
 */
public class DBGetEmployeebyLastFirstNameCommand extends DBGetCommand{

    private List<String> EmployeeNameList ;
    
    public DBGetEmployeebyLastFirstNameCommand()
    {
        
    }
    
    @Override
    public void get(){
    
        DBMgrProxy dbMgrProxy = new DBMgrProxy();
        
        EmployeeNameList = dbMgrProxy.getEmployeebyLastFirstName();
        
    }
    
    public List<String> getResult()
    {
        return EmployeeNameList;
    }      
    
}