/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package PRMSalert;
import alertsystemdatabase.*;

/**
 *
 * @author Yogeswar
 */
public class SetAlertController 
{
   
    private Alert newAlert;
    private DBInsertAlertCommand insertAlertCommand;
    private DBCommandInvoker dbCommandInvoker; 
   
  
    public SetAlertController(Alert alert)
    {
        newAlert = alert;
    }
    
    public SetAlertController()
    {
        //default
    }
    
    public boolean setAlert()
    {
        insertAlertCommand = new DBInsertAlertCommand(newAlert);
        dbCommandInvoker = new DBCommandInvoker(insertAlertCommand);
        dbCommandInvoker.execute();
                
        return true;
    }
 
    public void setRemark(Alerthistory alertHistory)
    {
        DBInsertAlertHistoryCommand insertAlertCommand = new DBInsertAlertHistoryCommand(alertHistory);
        dbCommandInvoker = new DBCommandInvoker(insertAlertCommand);
        dbCommandInvoker.execute();
    }
}
