/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.model;

/**
 *
 * @author soyab
 */
public class RoleResourceRights {
    public int roleId;
    public  int resourceId;
    private int readEdit;

    public RoleResourceRights() {
        super();
    }
    
    public RoleResourceRights(int roleId, int resourceId, int readEdit) {
        this.roleId = roleId;
        this.resourceId = resourceId;
        this.readEdit = readEdit;
    }

        
    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public int getResourceId() {
        return resourceId;
    }

    public void setResourceId(int resourceId) {
        this.resourceId = resourceId;
    }

    public int getReadEdit() {
        return readEdit;
    }

    public void setReadEdit(int readEdit) {
        this.readEdit = readEdit;
    }
    
    
}
