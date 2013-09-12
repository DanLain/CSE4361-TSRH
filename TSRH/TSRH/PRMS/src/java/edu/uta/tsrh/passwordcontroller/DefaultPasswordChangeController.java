package edu.uta.tsrh.passwordcontroller;

import edu.uta.tsrh.ScottishRiteHospital;
import edu.uta.tsrh.db.MySQLDBServices;
import javax.servlet.http.*;

public class DefaultPasswordChangeController extends ScottishRiteHospital
{

    public DefaultPasswordChangeController()
    {
    }

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        String url = "/CommonPages/error.jsp";
        String uri = request.getRequestURI();
        MySQLDBServices dbservices = new MySQLDBServices();
        HttpSession session = request.getSession();
        String username=(String)session.getAttribute("user");
        
        HttpSession session2 = request.getSession();
        if(uri.startsWith("/TSRH/changedefaultpassword.org"))
        {
            String NewPassword = request.getParameter("NewPassword");
            String NewPassword1 = request.getParameter("NewPassword1");
            System.out.println(NewPassword);
            System.out.println(NewPassword1);
            
            
            try
            {
                if(NewPassword == null ? NewPassword1 != null : !NewPassword.equals(NewPassword1))
                {
                   
                session2.setAttribute("flag1", "False");
                url = "/changeDefaultPassword.jsp";    
                }
                
                if(NewPassword == null ? NewPassword1 == null : NewPassword.equals(NewPassword1)) 
                {  
                    
                int flag = dbservices.changeDefaultPassword(NewPassword,username);
                    if(flag == 1)
                    {
                        session2.setAttribute("flag1", "True");
                        url = "/changeDefaultPassword.jsp";
                    } 
                    else
                    {
                        session2.setAttribute("flag1", "False");
                        url = "/changeDefaultPassword.jsp";
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
