/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public abstract class DBGetCommand  implements DBCommand{
    
    @Override
    public void execute(){
        get();
    }
    abstract public void get();
    
}

