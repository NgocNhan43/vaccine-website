/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserDAO;
import model.Notification;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author DELL
 */
@WebServlet(name = "registerController", urlPatterns = {"/registerController"})
public class registerController extends HttpServlet {

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
        try {
            response.setContentType("text/html;charset=UTF-8");
            String name = request.getParameter("name");
            String pass = request.getParameter("password");
            String identification = request.getParameter("identification");
            boolean gender = request.getParameter("gender").equals("true") ? true : false;
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String healthInsurance = request.getParameter("healthInsurance");
            Date dob = Date.valueOf(request.getParameter("dob"));
            UserDAO db = new UserDAO();
            User u = db.findUserByEmail(email);
            User i = db.findIdentification(identification);
            User p = db.findPhone(phone);
            User h = db.findHealthInsurance(healthInsurance);

            if (i != null || p != null || h != null || u != null) {
                if (i != null) {
                    request.getSession().setAttribute("identificationExist", "Identification Was Exist");
                }
                if (p != null) {
                    request.getSession().setAttribute("phonelExist", "Phone Was Exist");
                }
                if (h != null) {
                    request.getSession().setAttribute("healthInsuranceExist", "Health Insurance Was Exist");
                }
                if (u != null) {
                    request.getSession().setAttribute("emailExist", "Email Was Exist");
                }
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else {
                String otp = Notification.RandGeneratedStr(4);
                new Notification("Confirm OTP Code", email, otp).send();
                HttpSession session = request.getSession();
                session.setAttribute("otp", otp);
                session.setAttribute("name", name);
                session.setAttribute("pass", pass);
                session.setAttribute("identification", identification);
                session.setAttribute("gender", "" + gender);
                session.setAttribute("phone", phone);
                session.setAttribute("email", email);
                session.setAttribute("healthInsurance", healthInsurance);
                session.setAttribute("dob", dob);
//                session.setAttribute("User", u);

                request.getRequestDispatcher("vertificationEmailController").forward(request, response);

            }
        } catch (Exception ex) {
            Logger.getLogger(registerController.class.getName()).log(Level.SEVERE, null, ex);
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
    }
}



