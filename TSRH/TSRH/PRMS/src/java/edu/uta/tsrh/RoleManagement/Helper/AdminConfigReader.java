/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.RoleManagement.Helper;

import java.util.Properties;

/**
 *
 * @author Shwetha Narayan
 */
public class AdminConfigReader {
   Properties configFile;
   
   public AdminConfigReader()
   {
	configFile = new java.util.Properties();
	try 
        {			
	  configFile.load(this.getClass().getClassLoader().
	  getResourceAsStream("/TSRH_Admin_Config.cfg"));
        }
        catch(Exception exception)
        {
	    exception.printStackTrace();
	}
   }
 
   public String getProperty(String key)
   {
	String value = this.configFile.getProperty(key);		
	return value;
   }
}
