/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dbmanager;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.*;
import java.util.Properties;
/**
 *
 * @author Arjun Radhakrishnan
 */
public class DBConfig
{
   Properties configFile;
   
   public DBConfig()
   {
	configFile = new java.util.Properties();
	try 
        {			
	  configFile.load(this.getClass().getClassLoader().
	  getResourceAsStream("/TSRH_DB_Config.cfg"));
        }
        catch(Exception eta)
        {
	    eta.printStackTrace();
	}
   }
 
   public String getProperty(String key)
   {
	String value = this.configFile.getProperty(key);		
	return value;
   }
}
