package edu.uta.tsrh;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FileTrackingController extends ScottishRiteHospital
{
    private static final long serialVersionUID = 2977306093641973155L;

    public String handle(HttpServletRequest request, HttpServletResponse response)
    {
        System.out.println("in file tracking page controller");
        return "/filetracking.jsp";
    }
}
