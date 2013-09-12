/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */
package alertsystemdatabase;

/**
 *
 * @author vivek lingegowda
 */
public abstract class DBUpdateCommand implements DBCommand{
    
    @Override
    public void execute(){
        update();
    }
    
    abstract public void update();
    
}
