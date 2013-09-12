/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import com.mysql.jdbc.Connection;
import edu.uta.tsrh.RoleManagement.IRoleResource;
import edu.uta.tsrh.db.DAO;
import edu.uta.tsrh.db.DBQueryExecuter;
import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.db.mapper.Mapper;
import edu.uta.tsrh.db.mapper.UserMapper;
import edu.uta.tsrh.model.Resources;
import edu.uta.tsrh.model.RoleResourceRights;
import edu.uta.tsrh.model.User;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author madhuri
 */
public  class Component implements IRoleResource {

    /**
     *
     * @param resource
     */
    @Override
    public void createResource(Resources resource) {
        if (resource.getResourceName() != null && resource.getResourceURL() != null) {

            String sqlQuery = buildQuery1(resource);
            System.out.println("query is " + sqlQuery);
            Connection connection = DAO.getConnection();
            DBQueryExecuter queryExecuter = new DBQueryExecuter();
            int success = queryExecuter.modify(sqlQuery, connection);
            System.out.println("Is inserted");
            DAO.closeConnection();

        }

    }

    private String buildQuery1(Resources resource) {

        String Query = "Insert into resources(resourceName,resourceURL) values ('" + resource.resourceName + "','" + resource.resourceURL + "')";
        return Query;
    }
    
    /**
     * 
     * @param user
     * @param resource
     * @return 
     */
    @Override
    public boolean isResourceread(String userName, String resourceName) {

        int roleId = getRoleId(userName);
        int resourceId = getResourceId(resourceName);
        
        String sqlQuery = buildQuery4(roleId, resourceId);
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();
        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
        int readEdit = -1;
                
        try{
            while(resultSet.next()){
            readEdit = resultSet.getInt("readEdit");
            
            }
            
        }catch(Exception e){
            e.printStackTrace();
            
        }
        
        DAO.closeConnection();
        
        if(readEdit==0){
            return true;
            //System.out.println("it has read right"+readEdit);
        }
        else 
            //if(readEdit==1)
                {
            return false;
            //System.out.println("it has no readright and read edit is  "+readEdit);
                }
        //return null;
            

    }
    
        private String buildQuery4(int roleId, int resourceId) {

        String query = "select readEdit FROM roleresourcerights rr where rr.roleId=" + roleId + " AND rr.resourceId=" + resourceId +";";
        return query;

    }

    
    public int getRoleId(String userName) {

        String sqlQuery = buildQuery2(userName);
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();
        
        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
        int roleId = 0;
        try{
            
            while(resultSet.next()){
                 roleId = resultSet.getInt("roleId");
                 System.out.println(roleId);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
       
        DAO.closeConnection();

        return roleId;
    }

    private String buildQuery2(String userName) {

        String roid = "select roleId from user u where u.userName='" + userName + "'";
        return roid;
    }

    /**
     * 
     * @param resource
     * @return 
     */
    public int getResourceId(String resourceName) {

        String sqlQuery = buildQuery3(resourceName);
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();
        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
        int resourceId = 0;
        try{
            
            while(resultSet.next()){
                 resourceId = Integer.parseInt(resultSet.getString("resourceId"));
                 System.out.println(resourceId);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        DAO.closeConnection();

        return resourceId;
    }

    private String buildQuery3(String resourceName) {


        String rsid = "select resourceId from resources res where res.resourceName='" + resourceName + "'";
        return rsid;

    }
   
    @Override
    public boolean isResourcewrite(String userName, String resourceName) {

       int roleId = getRoleId(userName);
        int resourceId = getResourceId(resourceName);
        
        String sqlQuery = buildQuery(roleId, resourceId);
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();
        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
        int readEdit = -1;
                
        try{
            while(resultSet.next()){
                readEdit = resultSet.getInt("readEdit");
            }
            
        }catch(Exception e){
            e.printStackTrace();
            
        }
        
        DAO.closeConnection();
       
        if(readEdit==1){
           return true;
           //System.out.println("it has write "+readEdit);
        }
        else{
            return false;
            //System.out.println(" it has nowrite right.read edit is  "+readEdit);
        }
                
        //return null;

    }

     private String buildQuery(int roleId, int resourceId) {

        String query = "select readEdit FROM roleresourcerights rr where rr.roleId=" + roleId + " AND rr.resourceId=" + resourceId +";";
        return query;

    }

    @Override
    public ArrayList<Resources> getResourceListForUser(String userName) {
        
        String sqlQuery = buildQuery6(userName);
        System.out.println("query is " + sqlQuery);
        Connection connection = DAO.getConnection();
        DBQueryExecuter queryExecuter = new DBQueryExecuter();
        ResultSet resultSet = queryExecuter.read(sqlQuery, connection);
        ArrayList<Resources> resourceList=new ArrayList<Resources>();
        try{
            int i=0;
                 while(resultSet.next()){ 

                     Resources recource = new Resources();
                     recource.setResourceId(resultSet.getInt("resourceId"));
                     recource.setResourceName(resultSet.getString("resourceName"));
                     recource.setResourceURL(resultSet.getString("resourceURL"));
                     resourceList.add(recource);                    
                    i++;
                 }  
                 
                                 
        }
catch(Exception e)
{
            e.printStackTrace();
 }
        DAO.closeConnection();
        return resourceList;
        
    }

    private String buildQuery6(String userName) {
    String Query = "SELECT * from resources res LEFT JOIN roleresourcerights ON res.resourceId = roleresourcerights.resourceId LEFT JOIN user ON roleresourcerights.roleId = user.roleId where user.userName = '" + userName + "' AND (roleresourcerights.readEdit=0 OR roleresourcerights.readEdit=1)";
    return Query;
    }
    
}   
 