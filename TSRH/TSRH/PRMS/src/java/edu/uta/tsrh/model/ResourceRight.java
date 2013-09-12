/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.model;

/**
 *
 * @author soyab
 */
public class ResourceRight {
    private int resourceId;
    private String resourceName;
    private String resourceURL;
    private String right;
    
    public ResourceRight(){
        super();
    }

    public ResourceRight(int resourceId, String resourceName, String resourceURL, String right) {
        this.resourceId = resourceId;
        this.resourceName = resourceName;
        this.resourceURL = resourceURL;
        this.right = right;
    }

    public int getResourceId() {
        return resourceId;
    }

    public void setResourceId(int resourceId) {
        this.resourceId = resourceId;
    }

    public String getResourceName() {
        return resourceName;
    }

    public void setResourceName(String resourceName) {
        this.resourceName = resourceName;
    }

    public String getResourceURL() {
        return resourceURL;
    }

    public void setResourceURL(String resourceURL) {
        this.resourceURL = resourceURL;
    }

    public String getRight() {
        return right;
    }

    public void setRight(String right) {
        this.right = right;
    }
    
}
