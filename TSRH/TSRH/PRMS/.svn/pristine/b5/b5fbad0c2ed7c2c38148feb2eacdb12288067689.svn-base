/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.RoleManagement;

import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.ResourceRight;
import edu.uta.tsrh.model.Resources;
import edu.uta.tsrh.model.RoleResourceRights;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * 
 */
public class DisplayRoleController extends HttpServlet {

    MySQLDBServices dbservices = new MySQLDBServices();
    ArrayList<RoleResourceRights> rightList = new ArrayList<RoleResourceRights>();
    ArrayList<Resources> resourceList = new ArrayList<Resources>();
    ArrayList<ResourceRight> resourceRightList = new ArrayList<ResourceRight>();

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        rightList.clear();
        resourceList.clear();
        resourceRightList.clear();
                
        String role = request.getParameter("role");
        
        int roleId = Integer.parseInt(role.substring(0, role.indexOf("_")));
        String roleName = role.substring(role.indexOf("_")+1);
                
        dbservices = new MySQLDBServices();
        rightList = dbservices.getRightsList(roleId);
        resourceList = dbservices.getResourceList();

        for (int i = 0; i < resourceList.size(); i++) {
            ResourceRight r = new ResourceRight();

            r.setResourceId(resourceList.get(i).getResourceId());
            r.setResourceName(resourceList.get(i).getResourceName());
            r.setResourceURL(resourceList.get(i).getResourceURL());

            int case1 = getRight(resourceList.get(i).getResourceId());

            switch (case1) {
                case -1:
                    r.setRight("None");
                    break;
                case 0:
                    r.setRight("Read");
                    break;
                case 1:
                    r.setRight("Write");
                    break;
            }
            
            resourceRightList.add(r);
            
        }

        request.setAttribute("roleId", roleId);
        request.setAttribute("roleName", roleName);
        request.setAttribute("resourceRightList", resourceRightList);
        
        String destination = "/ShowRole.jsp";
        RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
        rd.forward(request, response);
    }

    private int getRight(int resourceId) {

        for (int j = 0; j < rightList.size(); j++) {
            if (rightList.get(j).getResourceId() == resourceId) {
                return rightList.get(j).getReadEdit();
            }
        }
        return -1;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
