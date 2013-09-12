package edu.uta.tsrh;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ScottishRiteHospital
 */
public abstract class ScottishRiteHospital
    extends HttpServlet
{
    private static final long serialVersionUID = -4617529249379845484L;

    /*
     * (non-Java-doc)
     *
     * @see javax.servlet.http.HttpServlet#HttpServlet()
     */

    @Override
    public void init()
        throws ServletException
    {
        super.init();
    }
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScottishRiteHospital()
    {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        String uri = request.getRequestURI().toString();
        String url;
        System.out.println("generated url = "+uri);

        url = handle(request, response);
  
        if (url == null)
        {
            System.out.println("url is null");
            url = "/CommonPages/error.jsp";
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher(url);
        requestDispatcher.forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        doGet(request, response);
    }
    
    public abstract String handle(HttpServletRequest request, HttpServletResponse response);

}
