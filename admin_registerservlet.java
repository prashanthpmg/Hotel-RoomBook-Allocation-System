/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import database.dbconfig;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author prash
 */
public class admin_registerservlet extends HttpServlet {

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
           String name=request.getParameter("name");
           String phoneno=request.getParameter("phoneno");
           String email=request.getParameter("email");
           String password=request.getParameter("password");
           String confirmPassword=request.getParameter("confirmpassword");
           out.print(name+" "+phoneno+" "+email+" "+password+" "+confirmPassword);
           if(password.equals(confirmPassword)){
             Connection con=new dbconfig().getConnection();
                   Class.forName("com.mysql.jdbc.Driver");
                   Statement stat=con.createStatement();
                   stat.executeUpdate("INSERT INTO admin_register(name,phoneno,email,password) VALUES('"+name+"','"+phoneno+"','"+email+"','"+password+"')");
                   out.print("<script>alert('Inserted Succesfully')</script>");
                   out.print("<META http-equiv=\"refresh\" content=\"0;admin_login.jsp\">");
           }
           else{
               out.print("<script>alert('confirm password does not match')</script>");
              // out.print("<META http-equiv=\"refresh\" content=\"0;admin_register.jsp\">");
           }
        }
        catch(Exception e){
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
