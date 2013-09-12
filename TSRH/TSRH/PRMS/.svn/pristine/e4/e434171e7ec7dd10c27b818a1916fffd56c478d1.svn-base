/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 * 
 */
package edu.uta.tsrh.RoleManagement;

import edu.uta.tsrh.db.MySQLDBServices;
import edu.uta.tsrh.model.Role;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author soyab
 */
public class CreateRoleController extends HttpServlet {

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

        String role = request.getParameter("role");
        role = role.trim().toUpperCase();

        MySQLDBServices dbservices = new MySQLDBServices();
        int roleResult = dbservices.insertRole(role);

        //If role is inserted in DB without any error then insert rights in roleResourceRights table
        if (roleResult == 1) {
            Role insertedRole = new Role();

            insertedRole = dbservices.getRole(role);

            int i = 1;
            int size = Integer.parseInt(request.getParameter("size"));

            //Get the values in combo boxes and insert in roleResourceRights table
            while (i <= size) {
                String comboValue = request.getParameter(String.valueOf(i));
                if (comboValue != null) {
                    dbservices.insertRights(insertedRole.getRoleId(), i, Integer.parseInt(comboValue));
                }
                i++;
            }
            request.setAttribute("result", Boolean.TRUE);
            request.setAttribute("message", "Role Created: " + role);

        } else {

            request.setAttribute("result", Boolean.FALSE);
            request.setAttribute("message", "Role Already Exist: " + role);
        }

        String destination = "/CreateRoleResult.jsp";
        RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
        rd.forward(request, response);
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
