/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.model;

import edu.uta.tsrh.json.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mandy
 */
public class Permissions {
    
    // User permissions
    private boolean viewUser = false;
    private boolean addUser = false;
    private boolean editUser = false;
    private boolean deleteUser = false;
    
    // Phone permissions
    private boolean viewPhone = false;
    private boolean addPhone = false;
    private boolean editPhone = false;
    private boolean deletePhone = false;
    
    // Note permissions
    private boolean viewNote = false;
    private boolean addNote = false;
    private boolean editNote = false;
    private boolean deleteNote = false;
    
    // Consultation permissions
    private boolean viewConsultations = false;
    private boolean addConsultations = false;
    
    // File permissions
    private boolean viewFile = false;
    private boolean editFile = false;
    private boolean moveFile = false;
    
    // Alert permissions
    private boolean addAlert = false;
    
    public Permissions()
    {

    }
    
    public Permissions(String jsondata)
    {
	try
	{
	    JSONObject j = new JSONObject(jsondata);
	    
	    // User permissions
	    viewUser = j.getBoolean("viewUser");
	    addUser = j.getBoolean("addUser");
	    editUser = j.getBoolean("editUser");
	    deleteUser = j.getBoolean("deleteUser");

	    // Phone permissions
	    viewPhone = j.getBoolean("viewPhone");
	    addPhone = j.getBoolean("addPhone");
	    editPhone = j.getBoolean("editPhone");
	    deletePhone = j.getBoolean("deletePhone");

	    // Note permissions
	    viewNote = j.getBoolean("viewNote");
	    addNote = j.getBoolean("addNote");
	    editNote = j.getBoolean("editNote");
	    deleteNote = j.getBoolean("deleteNote");

	    // Consultation permissions
	    viewConsultations = j.getBoolean("viewConsultations");
	    addConsultations = j.getBoolean("addConsultations");
	    
	    // File permissions
	    viewFile = j.getBoolean("viewFile");
	    editFile = j.getBoolean("editFile");
	    moveFile = j.getBoolean("moveFile");

	    // Alert permissions
	    addAlert = j.getBoolean("addAlert");
	}
	catch(JSONException e)
	{
	    
	}
    }
    
    @Override
    public String toString()
    {
        String returnString = "{";
       
        returnString += "\"viewUser\":\"" + Boolean.toString(this.viewUser) + "\",";
        returnString += "\"addUser\":\"" + Boolean.toString(this.addUser) + "\",";
        returnString += "\"editUser\":\"" + Boolean.toString(this.editUser) + "\",";
        returnString += "\"deleteUser\":\"" + Boolean.toString(this.deleteUser) + "\",";
        
        returnString += "\"viewPhone\":\"" + Boolean.toString(this.viewPhone) + "\",";
        returnString += "\"addPhone\":\"" + Boolean.toString(this.addPhone) + "\",";
        returnString += "\"editPhone\":\"" + Boolean.toString(this.editPhone) + "\",";
        returnString += "\"deletePhone\":\"" + Boolean.toString(this.deletePhone) + "\",";
        
        returnString += "\"viewNote\":\"" + Boolean.toString(this.viewNote) + "\",";
        returnString += "\"addNote\":\"" + Boolean.toString(this.addNote) + "\",";
        returnString += "\"editNote\":\"" + Boolean.toString(this.editNote) + "\",";
        returnString += "\"deleteNote\":\"" + Boolean.toString(this.deleteNote) + "\",";
        
        returnString += "\"viewConsultations\":\"" + Boolean.toString(this.viewConsultations) + "\",";
        returnString += "\"addConsultations\":\"" + Boolean.toString(this.addConsultations) + "\",";
        
        returnString += "\"viewFile\":\"" + Boolean.toString(this.viewFile) + "\",";
        returnString += "\"editFile\":\"" + Boolean.toString(this.editFile) + "\",";
        returnString += "\"moveFile\":\"" + Boolean.toString(this.moveFile) + "\",";
        
        returnString += "\"addAlert\":\"" + Boolean.toString(this.addAlert) + "\"";
        
        returnString += "}";
        
        return returnString;
    }
    
    public boolean getAddAlert() {
        return addAlert;
    }

    public void setAddAlert(boolean addAlert) {
        this.addAlert = addAlert;
    }

    public boolean getAddConsultations() {
        return addConsultations;
    }

    public void setAddConsultations(boolean addConsultations) {
        this.addConsultations = addConsultations;
    }

    public boolean getAddNote() {
        return addNote;
    }

    public void setAddNote(boolean addNote) {
        this.addNote = addNote;
    }

    public boolean getAddPhone() {
        return addPhone;
    }

    public void setAddPhone(boolean addPhone) {
        this.addPhone = addPhone;
    }

    public boolean getAddUser() {
        return addUser;
    }

    public void setAddUser(boolean addUser) {
        this.addUser = addUser;
    }

    public boolean getDeleteNote() {
        return deleteNote;
    }

    public void setDeleteNote(boolean deleteNote) {
        this.deleteNote = deleteNote;
    }

    public boolean getDeletePhone() {
        return deletePhone;
    }

    public void setDeletePhone(boolean deletePhone) {
        this.deletePhone = deletePhone;
    }

    public boolean getDeleteUser() {
        return deleteUser;
    }

    public void setDeleteUser(boolean deleteUser) {
        this.deleteUser = deleteUser;
    }

    public boolean getEditFile() {
        return editFile;
    }

    public void setEditFile(boolean editFile) {
        this.editFile = editFile;
    }

    public boolean getEditNote() {
        return editNote;
    }

    public void setEditNote(boolean editNote) {
        this.editNote = editNote;
    }

    public boolean getEditPhone() {
        return editPhone;
    }

    public void setEditPhone(boolean editPhone) {
        this.editPhone = editPhone;
    }

    public boolean getEditUser() {
        return editUser;
    }

    public void setEditUser(boolean editUser) {
        this.editUser = editUser;
    }

    public boolean getMoveFile() {
        return moveFile;
    }

    public void setMoveFile(boolean moveFile) {
        this.moveFile = moveFile;
    }

    public boolean getViewConsultations() {
        return viewConsultations;
    }

    public void setViewConsultations(boolean viewConsultations) {
        this.viewConsultations = viewConsultations;
    }

    public boolean getViewFile() {
        return viewFile;
    }

    public void setViewFile(boolean viewFile) {
        this.viewFile = viewFile;
    }

    public boolean getViewNote() {
        return viewNote;
    }

    public void setViewNote(boolean viewNote) {
        this.viewNote = viewNote;
    }

    public boolean getViewPhone() {
        return viewPhone;
    }

    public void setViewPhone(boolean viewPhone) {
        this.viewPhone = viewPhone;
    }

    public boolean getViewUser() {
        return viewUser;
    }

    public void setViewUser(boolean viewUser) {
        this.viewUser = viewUser;
    }
}
