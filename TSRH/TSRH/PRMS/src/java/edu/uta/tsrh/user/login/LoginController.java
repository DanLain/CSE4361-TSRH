/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.user.login;

import edu.uta.tsrh.Logger.ILogger;
import edu.uta.tsrh.Logger.Log4JLogger;
import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.DBServices;
import edu.uta.tsrh.db.MySQLDBServices;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.uta.tsrh.model.User;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ethan
 */
public class LoginController extends ScottishRiteHospital
{
    private static final long serialVersionUID = -5937345634578658885L;
    
    ILogger logger;
    // remove the count thin
    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI();
        DBServices dbServices = new MySQLDBServices();

        if (uri.startsWith("/TSRH/login.org"))
        {
	    String userName = "";
	    String passwordCandidate = "";

	    if (!request.getParameter("login_username").isEmpty())
		userName = (String)request.getParameter("login_username");

	    if (!request.getParameter("login_password").isEmpty())
		passwordCandidate = (String)request.getParameter("login_password");

	    User user = dbServices.loginUser(userName, passwordCandidate);
	    HttpSession session = request.getSession();
	    
	    if(user != null)
            {
		session.setAttribute("user", user.getUserId());
                logger = Log4JLogger.GetLoggerObject();
                logger.LogMessage(String.valueOf(user.getUserId()), "LoginController.java", 
                        "User sucessfully logged in");
            }
	    else
            {
		session.setAttribute("login_error", "Invalid Credentials");
            }

	    url = "/index.jsp";
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
	
        return url;
    }
}