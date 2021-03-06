/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.user.logout;

import edu.uta.tsrh.ScottishRiteHospital;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ethan
 */
public class LogoutController extends ScottishRiteHospital
{
    private static final long serialVersionUID = -7456745675674558885L;
    
    // remove the count thin
    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI();
        
        if (uri.startsWith("/TSRH/logout.org"))
        {
	    request.getSession().invalidate();

	    url = "/index.jsp";
        }
        else
        {
            url = "/CommonPages/error.jsp";
        }
	
        return url;
    }
}
