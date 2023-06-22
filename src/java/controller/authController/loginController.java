/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import dal.HospitalDAO;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Hospital;
import model.User;

/**
 *
 * @author DELL
 */
@WebServlet(name = "loginController", urlPatterns = {"/login"})
public class loginController extends HttpServlet {

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
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String optionRole = request.getParameter("optionRole");

        if (optionRole.equals("optionhospital")) {
            try {
                HospitalDAO hd = new HospitalDAO();
                Hospital hospital = hd.findHospital(email, pass);
                if (hospital != null) {
                    request.getSession().setAttribute("id", hospital.getIdBV());
                    request.getSession().setAttribute("role", 3);
                    response.sendRedirect("hospital.jsp");
                    
                } else {
                    request.getSession().setAttribute("alertMessage", "Email Or Password Wrong");
                    response.sendRedirect("login.jsp#form1");
                }
            } catch (Exception ex) {
                Logger.getLogger(loginController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (optionRole.equals("optionuser")) {
            try {
                UserDAO db = new UserDAO();
                User user = db.findUserByEmailPassword(email, pass);
                if (user != null) {
                    request.getSession().setAttribute("id", user.getIdUser());
                    request.getSession().setAttribute("role", user.getRole());
                    if (user.getRole() == 1) {
                        // 1 la user
                        // 2 la admin
                        response.sendRedirect("newHome1.jsp");
                    } else if (user.getRole() == 2) {
                        response.sendRedirect("login.jsp");
                    }
                } else {
                    request.getSession().setAttribute("alertMessage", "Email Or Password Wrong");
                    response.sendRedirect("login.jsp#form1");
                }
            } catch (Exception ex) {
                Logger.getLogger(loginController.class.getName()).log(Level.SEVERE, null, ex);
            }
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