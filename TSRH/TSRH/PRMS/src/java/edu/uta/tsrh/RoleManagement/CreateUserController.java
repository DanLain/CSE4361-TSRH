/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.RoleManagement;

import edu.uta.tsrh.model.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Shwetha
 */
public class CreateUserController extends HttpServlet {
    
    public CreateUserController(){
        
    }
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
		CreateUserNavController cb = new CreateUserNavController();
		String userName = request.getParameter("userName");
          String emailId = request.getParameter("emailId");
          String firstName = request.getParameter("firstName");
          String lastName = request.getParameter("lastName");
          int roleId = 1;
          if(request.getParameter("role") != null)
             roleId = Integer.parseInt(request.getParameter("role"));
          User user = new User(1,userName,firstName,lastName,emailId, "" , roleId, 1);
          boolean created = cb.createUser(user);
          HttpSession test = request.getSession();
		  test.setAttribute("isDup", cb.userDuplicate);
          test.setAttribute("isEmailDup", cb.emailDuplicate);
          test.setAttribute("creationIssue", cb.userCreation);
          test.setAttribute("username", userName);
          test.setAttribute("pw", user.getClearPass());
          if(created){
			  request.setAttribute("created", "true");
			  RequestDispatcher requestDispatcher = request.getRequestDispatcher("userCreation.jsp");
	        requestDispatcher.forward(request, response);
		  }
		  else
		  {
			  request.setAttribute("created", "false");
			  RequestDispatcher requestDispatcher = request.getRequestDispatcher("userCreation.jsp");
	        requestDispatcher.forward(request, response);
		  }
		  }
}