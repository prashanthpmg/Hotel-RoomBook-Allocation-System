/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import database.dbconfig;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author prash
 */
public class roombookservlet extends HttpServlet {

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
         PrintWriter out = response.getWriter();
         try {
        String location = request.getParameter("location");
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        String roomType = request.getParameter("roomType");
        int rooms = Integer.parseInt(request.getParameter("rooms"));
        int adults = Integer.parseInt(request.getParameter("adults"));
        int children = Integer.parseInt(request.getParameter("children"));
        String email = request.getParameter("email");
        String phno = request.getParameter("phno");
        
         Connection con=new dbconfig().getConnection();
         Class.forName("com.mysql.jdbc.Driver");
         Statement stat=con.createStatement();
         stat.executeUpdate("INSERT INTO bookings (location,checkin,checkout,roomType,rooms,adults,children,email,phno) VALUES('"+location+"','"+checkin+"','"+checkout+"','"+roomType+"','"+rooms+"','"+adults+"','"+children+"','"+email+"','"+phno+"')");     
         out.print("<script>alert('Booked  Succesfully')</script>");
         out.println("<meta http-equiv = \"refresh\" content = \"0;home.jsp\" />");

        } catch (Exception e)
        {
            out.print(e);
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
