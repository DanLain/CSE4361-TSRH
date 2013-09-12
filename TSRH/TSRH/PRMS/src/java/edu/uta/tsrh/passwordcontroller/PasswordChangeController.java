package edu.uta.tsrh.passwordcontroller;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.MySQLDBServices;
import javax.servlet.http.*;

public class PasswordChangeController extends ScottishRiteHospital
{

    public PasswordChangeController()
    {
    }

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI();
        MySQLDBServices dbservices = new MySQLDBServices();
        HttpSession session1 = request.getSession();
        
        HttpSession session = request.getSession();
        String username=(String)session.getAttribute("user");
        
        if(uri.startsWith("/TSRH/changepassword.org"))
        {
            String CurrentPassword = request.getParameter("CurrentPassword");
            String NewPassword = request.getParameter("NewPassword");
            String NewPassword1 = request.getParameter("NewPassword1");
            try
            {
                 if(NewPassword == null ? NewPassword1 != null : !NewPassword.equals(NewPassword1))
                    {
                       
                    session1.setAttribute("flag", "False");
                    url = "/changePassword.jsp";   
                    }
                
                if(NewPassword == null ? NewPassword1 == null : NewPassword.equals(NewPassword1)) 
                    {

                        int flag = dbservices.changePassword(CurrentPassword, NewPassword,username);
                        if(flag == 1)
                        {
                            session1.setAttribute("flag", "True");
                            url = "/changePassword.jsp";
                        } else
                        {
                            session1.setAttribute("flag", "False");
                            url = "/changePassword.jsp";
                        }
                    } 
            }
            catch(Exception e) { }
        } 
        else
        {
            url = "/CommonPages/error.jsp";
        }
        return url;
    }
}
