package dbmanager;

import java.sql.*;

public interface DBAccess {
	public void makeConnection() throws Exception;
	public ResultSet retrieveInfo(String queryString) throws Exception;
	//public void updateInfo(String queryString) throws Exception;
	public void closeConnection() throws Exception;
	//public void closeStatement() throws Exception;
	public String getConStr();
	public String getUserName();
	public String getPwd();
	public void setConStr(String s);
	public void setUserName(String s);
	public void setPwd(String s);
	
	public ResultSet getTestRequest(String id);
	public ResultSet getTestResult(int id);
	public ResultSet getTestConsultation(String id);
	public void insertTestRequest(String[] param);
	public void  updateTestRequest(int id, String[] param);

}
