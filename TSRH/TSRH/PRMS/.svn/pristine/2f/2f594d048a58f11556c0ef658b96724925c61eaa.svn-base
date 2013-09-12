/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.Logger;

/**
 * Interface for the Logger class
 * @author Sahul Peermohammed 1000828709
 */
public interface ILogger 
{
    /*user: string to denote who logged the event
    module: string to denote which module logged the event
    exception: actual exception fromt he module*/
    void LogError(String userName, String module, Exception exception);
    
    /*user: string to denote who logged the event
    module: string to denote which module logged the event
    exception: actual exception fromt he module
    message: any message the module wants to log apart from the 
    exception message*/
    void LogError(String userName, String module, Exception exception, 
            String message);
    
    /*user: string to denote who logged the event
    module: string to denote which module logged the event
    message: any warning message the module wants to log*/
    void LogWarning(String user, String module, String message);
    
    /*user: string to denote who logged the event
    module: string to denote which module logged the event
    message: any informational message the module wants to log*/
    void LogMessage(String user, String module, String message);
    
    /*user: string to denote who logged the event
    module: string to denote which module logged the event
    message: any debugging message the module wants to log*/
    void Debug(String user, String module, String message);    
}
