package alertsystemdatabase;






import java.util.*;

/*
 * To change this template, choose Tools | Templates and open the template in
 * the editor.
 */

/**
 *
 * @author vivek lingegowda
 */
public interface DBAccessImpl {

//------Operations on UserInfo Table----------
public void insertUserInfo(Userinfo userInfo);

public Userinfo getUserInfo(String userId);

public void updateUserInfo(Userinfo userInfo);

public void deleteUserInfo(Userinfo userInfo);

//------Operations on Alert Table----------
public void insertAlert(Alert alert);

public void updateAlert(Alert alert);

public List<Alert> getAlertsForTheUserId(String userId);

public List<Alert> getAlertsForTheAlertId(int alertId);

public List<Alert> getAlertsBetweenTheTime(Date alertStartTime, Date alertEndTime);

public void deleteAlert(Alert alert);

//------Operations on AlertHistory Table----------
public void insertAlertHistory(Alerthistory alertHistory);

public List<Alerthistory> getAlertHistoryForTheAlertId(int alertId);

public void deleteAlertHistory(Alerthistory alertHistory);

//------Operations on AlertArchive Table----------
public void insertAlertArchive(Alertarchive alertArchive);

public List<Alertarchive> getAlertArhchivesForTheUserId(String userId);

public List<Alertarchive> getAlertArchiveForTheAlertId(int alertId);

//------Operations on AlertHistoryArchive Table----------
public void insertAlertHistoryArchive(Alerthistoryarchive alertHistoryArchive);

public List<Alerthistoryarchive> getAlertHistoryArchiveForTheAlertId(int alertId);

}