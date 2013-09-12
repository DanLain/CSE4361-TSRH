/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.Logger;
 
import org.apache.log4j.Logger;
import org.apache.log4j.xml.DOMConfigurator;

/**
 *
 * @author Sahul Peermohammed 1000828709
 */
public class Log4JLogger implements ILogger 
{
    private static ILogger log4JLoggerObject;
    private static Logger logger = Logger.getLogger(Log4JLogger.class);
    
    //Private constructor for Singleton pattern implementation
    private Log4JLogger()
    {
        DOMConfigurator.configure("log4j.xml");                
    }
    
    public static ILogger GetLoggerObject() 
    {
        if(null == log4JLoggerObject) 
        {
            log4JLoggerObject = new Log4JLogger();
        }
        return log4JLoggerObject;
    }
    
    @Override
    public void LogError(String user, String module, Exception exception) 
    {
        logger.error("User "+user+ "on the "+module+ 
                " module, logged the following exception: ", exception);
    }

    @Override
    public void LogError(String user, String module, Exception exception,
                            String message) 
    {
        logger.error("User "+user+ "on the "+module+ 
                " module, logged the following message: "+message+
                " and following exception: ", exception);
    }

    @Override
    public void LogWarning(String user, String module, String message) 
    {
        logger.warn("User "+user+ "on the "+module+ 
                " module, logged the following warning message: "+ message);
    }

    @Override
    public void LogMessage(String user, String module, String message) 
    {
        logger.info("User "+user+ "on the "+module+ 
                " module, logged the following message: "+message);
    }

    @Override
    public void Debug(String user, String module, String message) 
    {
        logger.debug("User "+user+ "on the "+module+ 
                " module, logged the following debug message: "+message);
    }    
}
