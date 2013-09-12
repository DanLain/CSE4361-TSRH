package dbmanager;

import java.sql.Statement;

public class getTestConsultation extends SQLCommand{
	private String myId;
	
	public getTestConsultation(String id)
	{
		myId = id;
	}
	
	public String composeQuery()
	{
		String query = "select * from consultation_record"+ " where patientid_consultation = '"+myId+"'";
		return query;
	}

}
