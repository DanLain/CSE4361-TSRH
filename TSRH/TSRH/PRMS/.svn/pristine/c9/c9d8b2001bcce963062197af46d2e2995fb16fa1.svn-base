package controller;

import java.sql.ResultSet;

import model.PatientInfo;
import model.*;

import dbmanager.*;

public class Controller {
	private DBManager myManager = null;
	private PatientInfo currentPerson = null;
	private Observer myObserver = null;
	
	public SQLCommand command = null; 
	
	public boolean isTrue;
	public Controller()
	{
		myManager = new DBManager();
		isTrue = false;
		command = new getTestRequest("1");
	}
	
	public DBManager getDBManager()
	{
		return myManager;
	}
	
	public void makeConnection()
	{
		myManager.makeConnection();
	}	
	
	public void closeConnection()
	{
		myManager.closeConnection();
	}
	
	
	public void createCurrentPatient()
	{
		currentPerson = new PatientInfo();
	}
	
	public void createObserver()
	{
		myObserver = new Observer();
	}
	
	public void nullifyPatientInfo()
	{
		currentPerson = null;
	}
	
	public PatientInfo getCurrentPatient()
	{
		return currentPerson;
	}
	
	public Observer getObserver()
	{
		return myObserver;
	}
	
	public ResultSet getPatientInfo(String id)
	{
		makeConnection();
		String query = "select * from patient_record"+ " where patient_id = '"+id+"'";
		return myManager.retrieveInfo(query);
	}


	
	

}
