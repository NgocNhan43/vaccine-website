/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.VaccineHistoryDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.VaccineHistory;

/**
 *
 * @author HUNTER
 */
@WebServlet(name = "VaccineHistoryController", urlPatterns = {"/VaccineHistoryController"})
public class VaccineHistoryController extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            VaccineHistoryDAO dao = new VaccineHistoryDAO();
            HttpSession session = request.getSession();
             int idUser  = (int) session.getAttribute("id");
             String idString  = String.valueOf(idUser);
        List<VaccineHistory> listh = dao.getHistoryByIdUser(idString);
        request.setAttribute("History", listh);
        request.getRequestDispatcher("VaccineHistory.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
