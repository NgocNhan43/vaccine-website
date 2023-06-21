/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import dal.HospitalDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Notification;

/**
 *
 * @author DELL
 */
@WebServlet(name = "UpdateHospitalByAdminController", urlPatterns = {"/UpdateHospitalByAdminController"})
public class UpdateHospitalByAdminController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateHospitalAdmin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateHospitalAdmin at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int idBV = Integer.parseInt(request.getParameter("idBV"));
        String name = request.getParameter("name");
        String hotline = request.getParameter("hotline");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        System.out.println(idBV + name + email + hotline + address);
        HospitalDAO hd = new HospitalDAO();
        hd.updateHospital(idBV, name, address, email, hotline);
        String table = "<table>"
                + "<tr><td>Name: </td><td>" + name + "</td></tr>"
                + "<tr><td>Hotline: </td><td>" + hotline + "</td></tr>"
                + "<tr><td>Email: </td><td>" + email + "</td></tr>"
                + "<tr><td>Address: </td><td>" + address + "</td></tr>"   
                + "</table>";
        new Notification("Update information ", email, "Your information have change" + table).send();
 //       new SendEmail("Confirm OTP Code", email, table).send();
        request.getSession().setAttribute("updateinforsucess", "The information has been changed successfully");        
        response.sendRedirect("hospital_manager.jsp");
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